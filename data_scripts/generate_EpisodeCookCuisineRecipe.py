import mysql.connector
from mysql.connector import Error
import random

def connect_to_database():
    """ Connect to the MySQL database server """
    conn = None
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='NTUACHEF',
            user='root',
            password=''
        )
        if conn.is_connected():
            print('Connected to MySQL database')
    except Error as e:
        print(e)
    return conn

def get_all_cooks(conn):
    """ Retrieve all cooks from the database """
    query = "SELECT Cook_ID FROM Cook"
    cursor = conn.cursor()
    cursor.execute(query)
    return [item[0] for item in cursor.fetchall()]

def print_episode_judges(episode_id, judge_ids):
    """ Print SQL insert statements for judges into EpisodeJudge table """
    for judge_id in judge_ids:
        print(f"INSERT INTO EpisodeJudge (Episode_ID, Cook_ID) VALUES ({episode_id}, {judge_id});")

def print_episode_cook_cuisine_recipe(episode_id, cook_id, cuisine_id, recipe_id):
    """ Print SQL insert statement for an entry into EpisodeCookCuisineRecipe """
    print(f"INSERT INTO EpisodeCookCuisineRecipe (Episode_ID, Cook_ID, Cuisine_ID, Recipe_ID) VALUES ({episode_id}, {cook_id}, {cuisine_id}, {recipe_id});")

def get_non_judge_cooks(conn, episode_id, judge_ids):
    """ Get cooks who are not judges for the given episode """
    format_strings = ','.join(['%s'] * len(judge_ids))
    query = f"SELECT Cook_ID FROM Cook WHERE Cook_ID NOT IN ({format_strings})"
    cursor = conn.cursor()
    cursor.execute(query, tuple(judge_ids))
    return [item[0] for item in cursor.fetchall()]

def get_valid_recipe_cuisine(conn):
    """ Get a valid recipe directly from the Recipe table which includes cuisine_id """
    query = "SELECT Recipe_ID, Cuisine_ID FROM Recipe ORDER BY RAND() LIMIT 1"
    cursor = conn.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    if result:
        return result[0]  # Return a random valid pair
    return None

def main():
    conn = connect_to_database()
    if conn:
        episode_id = 1  # Example episode ID
        all_cooks = get_all_cooks(conn)
        judge_ids = random.sample(all_cooks, 3)  # Select three judges randomly from all cooks
        print_episode_judges(episode_id, judge_ids)
        
        # Get cooks not being judges
        available_cooks = get_non_judge_cooks(conn, episode_id, judge_ids)
        if available_cooks:
            chosen_cook = random.choice(available_cooks)
            valid_recipe_cuisine = get_valid_recipe_cuisine(conn)
            if valid_recipe_cuisine:
                recipe_id, cuisine_id = valid_recipe_cuisine
                print_episode_cook_cuisine_recipe(episode_id, chosen_cook, cuisine_id, recipe_id)
        
        conn.close()

if __name__ == "__main__":
    main()
