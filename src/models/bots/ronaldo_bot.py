from src.models.bot_interface import IBot  # ③

class RonaldoBot(IBot):
    def reply(self, message):
        return "Train hard, play smart — just like I do!"