from robot.api.deco import keyword, library



@library
class Test:
    #def __init__(self):


    @keyword
    def hello_world(self):
        print("hello is printing ")
