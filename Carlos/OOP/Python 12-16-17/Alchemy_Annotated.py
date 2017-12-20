# Dependencies
# ----------------------------------
# Imports the method used for connecting to DBs
from sqlalchemy import create_engine

# Imports the methods needed to abstract classes into tables
from sqlalchemy.ext.declarative import declarative_base

# Allow us to declare column types
from sqlalchemy import Column, Integer, String, Float

import pymysql
pymysql.install_as_MySQLdb()

# Create Dog and Cat Classes
# ----------------------------------

# Sets an object to utilize the default declarative base in SQL Alchemy
Base = declarative_base()

# Creates Classes which will serve as the anchor points for our Tables
class Dog(Base):
    __tablename__ = 'dog'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    color = Column(String(255))
    age = Column(Integer)

class Cat(Base):
    __tablename__ = 'cat'
    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    color = Column(String(255))
    age = Column(Integer)

# Create a Specific Instance of the Dog and Cat classes
# ----------------------------------

# Calls the Pet Constructors to create "Dog" and "Cat" objets
dog = Dog(id=1, name='Fido', color='Brown', age=4)
cat = Cat(id=1, name="Hissy", color="Gray", age=7)

# Create Database Connection
# ----------------------------------
# Creates a connection to our DB using the MySQL Connect Engine
engine = create_engine('mysql://root:<password>@localhost:3306/pets')
conn = engine.connect()

# Create a "Metadata" Layer That Abstracts our SQL Database
# ----------------------------------
# Create (if not already in existence) the tables associated with our classes.
Base.metadata.create_all(engine)

# Create a Session Object to Connect to DB
# ----------------------------------
# Session is a temporary binding to our DB
from sqlalchemy.orm import Session
session = Session(bind=engine)

# Add Records to the Appropriate DB
# ----------------------------------
# Use the SQL ALchemy methods to run simple "INSERT" statements using the classes and objects
session.add(dog)
session.add(cat)
session.commit()

# Query the Tables
# ----------------------------------
# Perform a simple query of the database
dog_list = session.query(Dog)
for dog in dog_list:
    print(dog.name)

cat_list = session.query(Cat)
for cat in cat_list:
    print(cat.name)
