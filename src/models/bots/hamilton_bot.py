

from src.models.bot_interface import IBot

class HamiltonBot(IBot):
    def receive_message(self, message):
        self.last_message = message


    def reply(self, message):
        return "Stay fast. Stay sharp. Stay focused!"