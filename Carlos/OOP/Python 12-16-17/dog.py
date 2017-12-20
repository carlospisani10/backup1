# Define a class
class Dog():

    # Utilize the Python constructor to initialize the object
    def __init__(self, name, color):
        self.name = name
        self.color = color

# Create an instance of a class
pup = Dog('Fido', 'brown')

# Print the object's attributes
print(pup.name)
print(pup.color)