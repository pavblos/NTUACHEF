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
    except Error as e:
        print(e)
    return conn


def get_season_id(conn, season_year):
    cursor = conn.cursor()
    query = """
    SELECT Season_ID
    FROM Season
    WHERE Year = %s
    """
    cursor.execute(query, (season_year,))
    results = cursor.fetchone()
    return results[0]

def add_empty_episode(conn, season_id):
    cursor = conn.cursor()
    query = "SELECT MAX(Episode_No) FROM Episode WHERE Season_ID = %s"
    cursor.execute(query, (season_id,))
    result = cursor.fetchone()
    episode_no = (result[0] + 1 if result[0] is not None else 1)

    query = "INSERT INTO `Episode` (Episode_No, Season_ID) VALUES (%s, %s)"
    cursor.execute(query, (episode_no, season_id))
    conn.commit()

    query = "SELECT Episode_ID FROM Episode WHERE Season_ID = %s AND Episode_No = %s"
    cursor.execute(query, (season_id, episode_no))
    result = cursor.fetchone()
    return result[0]
    
def get_cooks(conn):
    cursor = conn.cursor()
    query = "SELECT Cook_ID from Cook"
    cursor.execute(query)
    cook_ids_set = set()
    for row in cursor.fetchall():
        cook_ids_set.add(row[0])
    return cook_ids_set

def get_cuisines(conn):
    cursor = conn.cursor()
    query = "SELECT Cuisine_ID from Cuisine"
    cursor.execute(query)
    cuisine_ids_set = set()
    for row in cursor.fetchall():
        cuisine_ids_set.add(row[0])
    return cuisine_ids_set

def get_legal_judges(conn, season_id, cooks_set):
    cursor = conn.cursor()
    query = """
    WITH LastThreeEpisodes AS (
        SELECT Episode_ID
        FROM Episode
        WHERE Season_ID = %s
        ORDER BY Episode_No DESC
        LIMIT 3
    ),
    Judges AS (
        SELECT Cook_ID, Episode_ID
        FROM EpisodeJudge
        WHERE Episode_ID IN (SELECT Episode_ID FROM LastThreeEpisodes)
    )
    SELECT Cook_ID
    FROM Judges
    GROUP BY Cook_ID
    HAVING COUNT(DISTINCT Episode_ID) = 3;
    """

    cursor.execute(query, (season_id,))
    
    result = cursor.fetchall()

    illegal_judges_set = {row[0] for row in result}

    return list(cooks_set - illegal_judges_set)

def insert_episode_judges(conn, episode_id, episode_judges):
    cursor = conn.cursor()

    insert_query = """
    INSERT INTO EpisodeJudge (Episode_ID, Cook_ID)
    VALUES (%s, %s)
    """

    insert_data = [(episode_id, cook_id) for cook_id in episode_judges]
    cursor.executemany(insert_query, insert_data)
    conn.commit()

def get_legal_cuisines(conn, season_id, cuisines):
    cursor = conn.cursor()
    

    query = """
    WITH LastThreeEpisodes AS (
        SELECT Episode_ID 
        FROM Episode 
        WHERE Season_ID = %s 
        ORDER BY Episode_No DESC 
        LIMIT 3
    ),
    CuisinesInEpisodes AS (
        SELECT Cuisine_ID, Episode_ID 
        FROM EpisodeCookCuisineRecipe 
        WHERE Episode_ID IN (SELECT Episode_ID FROM LastThreeEpisodes)
    )
    SELECT Cuisine_ID 
    FROM CuisinesInEpisodes 
    GROUP BY Cuisine_ID 
    HAVING COUNT(DISTINCT Episode_ID) = 3;
    """
    
    cursor.execute(query, (season_id,))
    
    result = cursor.fetchall()

    illegal_cuisines_set = {row[0] for row in result}
    return list(cuisines - illegal_cuisines_set)

def get_episode_recipes(conn, season_id, cuisines):
    cursor = conn.cursor()

    query = """
    WITH LastThreeEpisodes AS (
        SELECT Episode_ID 
        FROM Episode 
        WHERE Season_ID = %s 
        ORDER BY Episode_No DESC 
        LIMIT 3
    ),
    RecipesInEpisodes AS (
        SELECT Recipe_ID, Episode_ID 
        FROM EpisodeCookCuisineRecipe 
        WHERE Episode_ID IN (SELECT Episode_ID FROM LastThreeEpisodes)
    )
    SELECT Recipe_ID 
    FROM RecipesInEpisodes 
    GROUP BY Recipe_ID 
    HAVING COUNT(DISTINCT Episode_ID) = 3;
    """
    
    cursor.execute(query, (season_id,))

    result = cursor.fetchall()

    illegal_recipes_set = {row[0] for row in result}
    result_recipes = []
    for cuisine_id in cuisines:
        query = """
        SELECT Recipe_ID
        FROM Recipe
        WHERE Cuisine_ID = %s
        """

        cursor.execute(query, (cuisine_id,))

        result = cursor.fetchall()

        possible_recipes = {row[0] for row in result}

        possible_recipes -= illegal_recipes_set
        
        random_recipe = random.choice(list(possible_recipes))
        result_recipes.append(random_recipe)
            
        illegal_recipes_set.add(random_recipe)
    return result_recipes

def get_episode_cooks(conn, season_id, judges_set, episode_cuisines):
    cursor = conn.cursor()
    query = """
    WITH LastThreeEpisodes AS (
        SELECT Episode_ID 
        FROM Episode 
        WHERE Season_ID = %s 
        ORDER BY Episode_No DESC 
        LIMIT 3
    ),
    CooksInEpisodes AS (
        SELECT Cook_ID, Episode_ID 
        FROM EpisodeCookCuisineRecipe 
        WHERE Episode_ID IN (SELECT Episode_ID FROM LastThreeEpisodes)
    )
    SELECT Cook_ID 
    FROM CooksInEpisodes 
    GROUP BY Cook_ID 
    HAVING COUNT(DISTINCT Episode_ID) = 3;
    """
    cursor.execute(query, (season_id,))
    result = cursor.fetchall()
    illegal_cooks_set = {row[0] for row in result}
    illegal_cooks_set = illegal_cooks_set.union(judges_set)

    result_cooks = []

    for cuisine_id in episode_cuisines:

        query = """
        SELECT Cook_ID
        FROM CookSpecializesInCuisine
        WHERE Cuisine_ID = %s
        """

        cursor.execute(query, (cuisine_id,))
        
        result = cursor.fetchall()
        
        possible_cooks = {row[0] for row in result}
        
        possible_cooks -= illegal_cooks_set
        
        random_cook = random.choice(list(possible_cooks))
        result_cooks.append(random_cook)
            
        illegal_cooks_set.add(random_cook)
    return result_cooks

def insert_episodecookcuisinerecipes(conn, episode_id, episode_cooks, episode_cuisines, episode_recipes):

        query = """
        INSERT INTO EpisodeCookCuisineRecipe (Episode_ID, Cook_ID, Cuisine_ID, Recipe_ID)
        VALUES (%s, %s, %s, %s)
        """

        values = [
            (episode_id, episode_cooks[i], episode_cuisines[i], episode_recipes[i]) 
            for i in range(10)
        ]
        
        cursor = conn.cursor()
        cursor.executemany(query, values)
        conn.commit()
        

def generate_new_episode(season_year):
    conn = connect_to_database()
    season_id = get_season_id(conn, season_year)

    all_cookids_set = get_cooks(conn)
    all_cuisinesids_set = get_cuisines(conn)

    #select judges
    legal_judges = get_legal_judges(conn, season_id, all_cookids_set)
    episode_judges = random.sample(list(legal_judges), 3)
    

    #select cuisines
    legal_cuisines = get_legal_cuisines(conn, season_id, all_cuisinesids_set)
    episode_cuisines = random.sample(legal_cuisines, 10)

    #select recipes
    episode_recipes = get_episode_recipes(conn, season_id, episode_cuisines) 
    #select cooks
    episode_cooks = get_episode_cooks(conn, season_id, set(episode_judges), episode_cuisines) 

    # insert data
    episode_id = add_empty_episode(conn, season_id)
    print(season_id, episode_id)
    insert_episode_judges(conn, episode_id, episode_judges)
    insert_episodecookcuisinerecipes(conn, episode_id, episode_cooks, episode_cuisines, episode_recipes)



#generate_new_episode(2040)