from opps1 import Animale


class Dog(Animale):
    def __init__(self):


        print("__init__ is runing for dog class")
        super().dance()
        super().__init__()
    def speak(self):
        print("dog method is running")

d=Dog()
d.speak()

