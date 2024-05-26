import mysql.connector
from mysql.connector import Error
import random

def connect_to_database():
    """Connect to the MySQL database server."""
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

def print_episode_judges(episode_id, judge_ids):
    """Print SQL insert statements for judges into EpisodeJudge table."""
    for judge_id in judge_ids:
        print(f"INSERT INTO EpisodeJudge (Episode_ID, Cook_ID) VALUES ({episode_id}, {judge_id});")

def get_unique_cooks_and_judges(conn, exclude_cooks):
    """Retrieve all cooks that are not in the exclude list."""
    cursor = conn.cursor()
    if exclude_cooks:
        format_strings = ','.join(['%s'] * len(exclude_cooks))
        query = f"SELECT Cook_ID FROM Cook WHERE Cook_ID NOT IN ({format_strings})"
        cursor.execute(query, tuple(exclude_cooks))
    else:
        query = "SELECT Cook_ID FROM Cook"
        cursor.execute(query)
    return [item[0] for item in cursor.fetchall()]

def get_unique_cuisines(conn):
    """Retrieve all unique cuisine IDs directly from the Recipe table."""
    query = "SELECT DISTINCT Cuisine_ID FROM Recipe"
    cursor = conn.cursor()
    cursor.execute(query)
    return [item[0] for item in cursor.fetchall()]

def get_recipe_for_cuisine(conn, cuisine_id):
    """Retrieve a random recipe that belongs to the specified cuisine directly from the Recipe table."""
    query = "SELECT Recipe_ID FROM Recipe WHERE Cuisine_ID = %s ORDER BY RAND() LIMIT 1"
    cursor = conn.cursor()
    cursor.execute(query, (cuisine_id,))
    recipes = cursor.fetchall()
    return recipes[0][0] if recipes else None

def print_entries(conn, episode_id, cooks, cuisines):
    """Print SQL commands to insert cook, cuisine, and recipe entries."""
    for cook, cuisine in zip(cooks, cuisines):
        recipe = get_recipe_for_cuisine(conn, cuisine)
        if recipe:
            print(f"INSERT INTO EpisodeCookCuisineRecipe (Episode_ID, Cook_ID, Cuisine_ID, Recipe_ID) VALUES ({episode_id}, {cook}, {cuisine}, {recipe});")

def main():
    conn = connect_to_database()
    if conn:
        episode_id = 51  # Example episode ID
        judge_ids = random.sample(get_unique_cooks_and_judges(conn, []), 3)
        print_episode_judges(episode_id, judge_ids)
        
        available_cooks = get_unique_cooks_and_judges(conn, judge_ids)
        cooks = random.sample(available_cooks, 10)
        cuisines = random.sample(get_unique_cuisines(conn), 10)

        print_entries(conn, episode_id, cooks, cuisines)
        conn.close()

if __name__ == "__main__":
    main()
