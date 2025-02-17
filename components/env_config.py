ENV_CONFIG = [
    {
        # Test_0
        "n_agents": 3,
        "x_dim": 35,
        "y_dim": 35,
        "n_cities": 2,
        "max_rails_between_cities": 2,
        "max_rails_in_city": 3,
        "malfunction_rate": 1 / 50,
        "seed": 0,
        "observation_tree_depth": 2,
        # "observation_radius": 10,
        "observation_max_path_depth": 30
    },
    {
        # Test_1
        "n_agents": 5,
        "x_dim": 35,
        "y_dim": 35,
        "n_cities": 2,
        "max_rails_between_cities": 2,
        "max_rails_in_city": 3,
        "malfunction_rate": 1 / 100,
        "seed": 0,
        "observation_tree_depth": 3,
        # "observation_radius": 10,
        "observation_max_path_depth": 30
    },
    {
        # Test_2
        "n_agents": 20,
        "x_dim": 30,
        "y_dim": 30,
        "n_cities": 3,
        "max_rails_between_cities": 2,
        "max_rails_in_city": 3,
        "malfunction_rate": 1 / 200,
        "seed": 0,
        "observation_tree_depth": 2,
        # "observation_radius": 10,
        "observation_max_path_depth": 20
    },
]


def get_env_config(env_id):
    if env_id >= len(ENV_CONFIG) or env_id < 0:
        print(f"\n🛑 Invalid environment configuration, only Test_0 to Test_{len(ENV_CONFIG) - 1} are "
              f"supported.")
        exit(1)

    return ENV_CONFIG[env_id]
