#abc is Abstract Base class module
from abc import ABC, abstractmethod

# IBot is the base class for all chatbot types
# It uses Python's ABC module to enforce that all child classes implement required methods
from abc import ABC, abstractmethod

class IBot(ABC):
    def __init__(self, name):
        # Every bot will have a name, so define it once here
        self.name = name

    @abstractmethod
    def receive_message(self, message):
        # Behavior to receive/store a message (each bot may handle it differently)
        pass

    @abstractmethod
    def reply(self):
        # Behavior to generate a reply based on internal state
        pass
