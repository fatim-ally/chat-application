#Dynamically imports bot based on CLI flag.

from src.models.bots.einstein_bot import EinsteinBot  # ⑥
from src.models.bots.ronaldo_bot import RonaldoBot
from src.models.bots.hamilton_bot import HamiltonBot
from src.models.bots.movie_bot import MovieBot

def get_bot(bot_name):
    if bot_name == "einstein":
        return EinsteinBot("Einstein")
    elif bot_name == "ronaldo":
        return RonaldoBot("Ronaldo")
    elif bot_name == "hamilton":
        return HamiltonBot("Hamilton")
    elif bot_name == "movie":
        return MovieBot("Movie")
    else:
        raise ValueError("Unsupported bot name")