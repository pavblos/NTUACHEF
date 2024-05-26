import mysql.connector
from mysql.connector import Error
import random

def connect_to_database():
    """ Connect to the MySQL database server """
    conn = None
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='ntuachef',
            user='root',
            password=''
        )
        if conn.is_connected():
            print('Connected to MySQL database')
    except Error as e:
        print(e)
    return conn

def fetch_episodes(conn):
    """ Fetch all episode IDs that need ratings """
    cursor = conn.cursor()
    cursor.execute("SELECT Episode_ID FROM Episode")
    episodes = [item[0] for item in cursor.fetchall()]
    return episodes

def fetch_judges_and_cooks_for_episode(conn, episode_id):
    """ Fetch judges and cooks for a specific episode """
    cursor = conn.cursor()
    cursor.execute("SELECT Cook_ID FROM EpisodeJudge WHERE Episode_ID = %s", (episode_id,))
    judges = [item[0] for item in cursor.fetchall()]

    cursor.execute("SELECT Cook_ID FROM EpisodeCookCuisineRecipe WHERE Episode_ID = %s", (episode_id,))
    cooks = [item[0] for item in cursor.fetchall()]
    return judges, cooks

def generate_ratings(conn, episodes):
    """ Generate and print SQL insert statements for ratings for each cook from each judge for each episode """
    for episode_id in episodes:
        judges, cooks = fetch_judges_and_cooks_for_episode(conn, episode_id)
        for cook_id in cooks:
            for judge_id in judges:
                if judge_id != cook_id:  # Ensure judges don't rate themselves
                    rating = random.randint(1, 5)  # Generate a rating between 1 and 5
                    # Prepare the SQL insert statement
                    print(f"({episode_id}, {judge_id}, {cook_id}, {rating}),", end=" ")

def main():
    conn = connect_to_database()
    if conn:
        try:
            episodes = fetch_episodes(conn)
            generate_ratings(conn, episodes)
        finally:
            conn.close()

if __name__ == "__main__":
    main()
