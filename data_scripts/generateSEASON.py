import mysql.connector
from mysql.connector import Error
import random
from collections import defaultdict, deque

def connect_to_database():
    """Connect to the MySQL database server."""
    conn = None
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='ntuatest7',
            user='root',
            password=''
        )
        if conn.is_connected():
            print('Connected to MySQL database')
    except Error as e:
        print(e)
    return conn

def get_all_cooks(conn):
    """Retrieve all cook IDs."""
    query = "SELECT Cook_ID FROM Cook"
    cursor = conn.cursor()
    cursor.execute(query)
    cooks = [item[0] for item in cursor.fetchall()]
 #   print("Cooks Retrieved:", cooks)
    return cooks

def get_all_cuisines(conn):
    """Retrieve all cuisine IDs from the Recipe table."""
    query = "SELECT DISTINCT Cuisine_ID FROM Recipe"
    cursor = conn.cursor()
    cursor.execute(query)
    cuisines = [item[0] for item in cursor.fetchall()]
   # print("Cuisines Retrieved:", cuisines)
    return cuisines

def get_recipe_for_cuisine(conn, cuisine_id):
    """Retrieve a random recipe for the specified cuisine directly from the Recipe table."""
    query = "SELECT Recipe_ID FROM Recipe WHERE Cuisine_ID = %s ORDER BY RAND() LIMIT 1"
    cursor = conn.cursor()
    cursor.execute(query, (cuisine_id,))
    recipes = cursor.fetchall()
    recipe = recipes[0][0] if recipes else None
    #print(f"Recipe for Cuisine {cuisine_id}: {recipe}")
    return recipe

def print_insert_episode(season_id, episode_no):
    """Print SQL command to insert a new episode."""
    print(f"INSERT INTO Episode (Episode_No, Season_ID) VALUES ({episode_no}, {season_id});")

def print_insert_episode_judges(episode_id, judges):
    """Print SQL commands to insert judges into EpisodeJudge table."""
    for judge in judges:
        print(f"INSERT INTO EpisodeJudge (Episode_ID, Cook_ID) VALUES ({episode_id}, {judge});")

def print_insert_episode_cook_cuisine_recipe(episode_id, cooks, cuisines, recipes):
    """Print SQL commands to insert cook, cuisine, and recipe entries."""
    for cook, cuisine, recipe in zip(cooks, cuisines, recipes):
        print(f"INSERT INTO EpisodeCookCuisineRecipe (Episode_ID, Cook_ID, Cuisine_ID, Recipe_ID) VALUES ({episode_id}, {cook}, {cuisine}, {recipe});")

def manage_consecutive_usage(items, count_dict, track_deque, limit=3):
    """Manage the usage of items to avoid exceeding consecutive usage limit."""
    if track_deque:
        for item in track_deque[0]:
            count_dict[item] -= 1
    valid_items = [item for item in items if count_dict[item] < limit]
    if not valid_items:
        raise Exception("Not enough items to select from without exceeding limit.")
    if len(track_deque) >= 3:
        track_deque.popleft()
    track_deque.append(valid_items)
    for item in valid_items:
        count_dict[item] += 1
    return valid_items

def generate_episodes(conn, season_id, num_episodes=10):
    cook_track = deque([], maxlen=3)
    cuisine_track = deque([], maxlen=3)
    recipe_track = deque([], maxlen=3)
    judge_track = deque([], maxlen=3)
    cook_count = defaultdict(int)
    cuisine_count = defaultdict(int)
    recipe_count = defaultdict(int)
    judge_count = defaultdict(int)

    cooks = get_all_cooks(conn)
    cuisines = get_all_cuisines(conn)

    for episode_no in range(1, num_episodes + 1):
        print_insert_episode(season_id, episode_no)
        available_judges = manage_consecutive_usage(cooks, judge_count, judge_track)
        judges = random.sample(available_judges, 3)
        print_insert_episode_judges(episode_no, judges)

        # Exclude judges from the pool of available cooks
        available_cooks = [cook for cook in cooks if cook not in judges]
        episode_cooks = random.sample(available_cooks, 10)
        available_cuisines = manage_consecutive_usage(cuisines, cuisine_count, cuisine_track)
        episode_cuisines = random.sample(available_cuisines, 10)
        recipes = [get_recipe_for_cuisine(conn, cuisine) for cuisine in episode_cuisines]

        print_insert_episode_cook_cuisine_recipe(episode_no, episode_cooks, episode_cuisines, recipes)

def main():
    conn = connect_to_database()
    if conn:
        season_id = 1  # Set the season ID
        try:
            generate_episodes(conn, season_id)
        finally:
            conn.close()

if __name__ == "__main__":
    main()
