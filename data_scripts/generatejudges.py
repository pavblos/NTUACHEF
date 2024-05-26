import random

# Function to get a list of distinct random judges for each episode
def get_random_judges(num_judges, total_judges):
    judges = random.sample(range(1, total_judges + 1), num_judges)
    return judges

# Function to generate SQL queries for creating EpisodeJudge entries for each episode
def generate_sql_queries(num_episodes, num_judges_per_episode, total_judges):
    sql_queries = []

    for episode_id in range(1, num_episodes + 1):
        judges = get_random_judges(num_judges_per_episode, total_judges)
        for judge_id in judges:
            query = f"INSERT INTO EpisodeJudge (Episode_ID, Cook_ID) VALUES ({episode_id}, {judge_id});"
            sql_queries.append(query)

    return sql_queries

# Define parameters
num_episodes = 50
num_judges_per_episode = 3
total_judges = 56

# Generate SQL queries
sql_queries = generate_sql_queries(num_episodes, num_judges_per_episode, total_judges)

# Output SQL queries
for query in sql_queries:
    print(query)