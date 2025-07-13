from src.models.bot_interface import IBot

class MovieBot(IBot):
  def receive_message(self,message):
   self.last_message = message

  def reply(self, message):
   return "Movies are amazing!"
