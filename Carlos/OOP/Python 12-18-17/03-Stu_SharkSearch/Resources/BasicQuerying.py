from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
Base = declarative_base()

from sqlalchemy import Column, Integer, String, Float

class BaseballPlayer(Base):
  __tablename__ = "BaseballPlayers"
  playerID = Column(String(255), primary_key=True)
  birthYear = Column(Integer)
  birthMonth = Column(Integer)
  birthDay = Column(Integer)
  birthCountry = Column(String(255))
  birthState = Column(String(255))
  birthCity = Column(String(255))
  nameFirst = Column(String(255))
  nameLast = Column(String(255))
  nameGiven = Column(String(255))
  weight = Column(Integer)
  height = Column(Integer)
  bats = Column(String(255))
  throws = Column(String(255))
  debut = Column(String(255))
  finalGame = Column(String(255))

# Create Database Connection
# ----------------------------------
# Establish Connection to MySQL
engine = create_engine('mysql://root:<password>@localhost:3306/baseballplayers')
conn = engine.connect()
Base.metadata.create_all(conn)

from sqlalchemy.orm import Session
session = Session(bind=engine)

# Print all of the player names in the database
players = session.query(BaseballPlayer)
for player in players:
  print(player.nameGiven)

# Find the number of players from the USA
usa = session.query(BaseballPlayer).filter(BaseballPlayer.birthCountry=='USA').count()
print()
print("There are " + str(usa) + " players from the USA")
print()

# Find those players who were born before 1990
born_in_eighties = session.query(BaseballPlayer).filter(BaseballPlayer.birthYear < 1990).count()
print(str(born_in_eighties) + " players were born before 1990")

from sqlalchemy import and_, or_

# Find those players from the USA who were born after 1989
born_after_ninties = session.query(BaseballPlayer).filter(and_(BaseballPlayer.birthYear >= 1990, BaseballPlayer.birthYear=="USA")).count()
print(str(born_in_eighties) + " USA players were born after 1989")
