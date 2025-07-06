from src.models.bot_interface import IBot # ④

class EinsteinBot(IBot):
    def receive_message(self, message):
        self.last_message = message

    def reply(self,message):
        return "Physics is fun!"