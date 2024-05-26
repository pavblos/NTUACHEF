import mysql.connector
from mysql.connector import Error
import random

def connect_to_database():
    """Connect to the MySQL database server."""
    conn = None
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='bash',
            user='root',
            password=''
        )
    except Error as e:
        print(e)
    return conn

conn = connect_to_database()

season_id = 1
cook_number = 56
cuisine_number = 20

all_cooks_set = set(range(1, cook_number + 1))
all_cuisines_set = set(range(1, cuisine_number + 1))


for season_id in range(5):
    episode_judges_set = [set() for _ in range(10)]

    judge_inserts = []
    for i in range(10):
        possible_judges = all_cooks_set.copy()
        if i >=3:
            possible_judges = all_cooks_set - episode_judges_set[i-1].intersection(episode_judges_set[i-2],episode_judges_set[i-3])
        episode_judges_set[i] = set(random.sample(list(possible_judges), 3))
        for judge_id in list(episode_judges_set[i]):
            judge_inserts.append("\n(" + str(season_id*10 + i+1) +"," + str(judge_id) + ")")

    final_output = "INSERT INTO `EpisodeJudge` (`Episode_ID`, `Cook_ID`) VALUES" + ",".join(judge_inserts) + ";"
    print(final_output)
    episode_judges = [list(s) for s in episode_judges_set]

    episode_cuisines_set = [set() for _ in range(10)]
    episode_cuisines = []
    for i in range(10):
        possible_cuisines = all_cuisines_set.copy()
        if i >=3:
            possible_cuisines = all_cuisines_set - episode_cuisines_set[i-1].intersection(episode_cuisines_set[i-2],episode_cuisines_set[i-3])
        episode_cuisines.append(random.sample(list(possible_cuisines), 10))
        episode_cuisines_set[i] = set(episode_cuisines[i])

    episode_recipe_set = [set() for _ in range(10)]
    episode_recipes = [[] for _ in range(10)]
    for episode in range(10):
        episode_all_recipes_used = set()
        for i, cuisine in enumerate(episode_cuisines[episode]):

            cursor = conn.cursor()
            query = """
            SELECT Recipe_ID
            FROM Recipe
            WHERE Cuisine_ID = %s
            """
            cursor.execute(query, (cuisine,))
            recipe_ids = cursor.fetchall()
            query_set = {recipe_id[0] for recipe_id in recipe_ids}
            
            possible_recipes_for_cuisine = query_set - episode_all_recipes_used
            if episode >= 3:
                possible_recipes_for_cuisine = possible_recipes_for_cuisine - episode_recipe_set[i-1].intersection( episode_recipe_set[i-2], episode_recipe_set[i-3])
            episode_recipes[episode].append(random.choice(list(possible_recipes_for_cuisine)))
            episode_recipe_set[episode].add(episode_recipes[episode][i])
            episode_all_recipes_used.add(episode_recipes[episode][i])

    episode_chef_set = [set() for _ in range(10)]
    episode_chefs = [[] for _ in range(10)]

    for episode in range(10):
        current_episode_chefs = set().union(episode_judges_set[episode])
        for i, cuisine in enumerate(episode_cuisines[episode]):
            cursor = conn.cursor()
            query = """
            SELECT Cook_ID
            FROM CookSpecializesInCuisine
            WHERE Cuisine_ID = %s
            """
            cursor.execute(query, (cuisine,))
            cook_ids = cursor.fetchall()
            query_set = {cook_id[0] for cook_id in cook_ids}

            possible_cooks_for_cuisine = query_set - current_episode_chefs
            if episode >=3:
                possible_cooks_for_cuisine = possible_cooks_for_cuisine - episode_chef_set[i-1].intersection( episode_chef_set[i-2], episode_chef_set[i-3])
            episode_chefs[episode].append(random.choice(list(possible_cooks_for_cuisine)))
            episode_chef_set[episode].add(episode_chefs[episode][i])
            current_episode_chefs.add(episode_chefs[episode][i])

    eccs_inserts = []
    for episode in range(10):
        for i in range(10):
            eccs_inserts.append(f"\n({season_id*10 + episode+1},{episode_chefs[episode][i]},{episode_cuisines[episode][i]},{episode_recipes[episode][i]})")
    final_output = "INSERT INTO `EpisodeCookCuisineRecipe` (`Episode_ID`, `Cook_ID`, `Cuisine_ID`, `Recipe_ID`) VALUES" + ",".join(eccs_inserts) + ";"
    print(final_output)

    cr_inserts = []
    for episode in range(10):
        for judge_no in range(3):
            for cook in range(10):
                cr_inserts.append(f"\n({season_id*10 + episode+1},{episode_judges[episode][judge_no]},{episode_chefs[episode][cook]},{random.randint(1, 5)})")

    final_output = "INSERT INTO `CookRatings` (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`, `Rating`) VALUES" + ",".join(cr_inserts) + ";"
    print(final_output)

