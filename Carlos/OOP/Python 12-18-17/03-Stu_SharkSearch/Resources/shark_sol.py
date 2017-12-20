from sqlalchemy import create_engine
from sqlalchemy import and_, or_
import pymysql
pymysql.install_as_MySQLdb()

from sqlalchemy.ext.declarative import declarative_base
Base = declarative_base()
from sqlalchemy import Column, Integer, String, Float
from config import pw

# create your shark class
class Sharks(Base):
    __tablename__ = 'sharks'
    id = Column(Integer, primary_key=True)
    case_number = Column(String(255))
    date = Column(String(255))
    year = Column(Integer)
    type = Column(String(255))
    country = Column(String(255))
    area = Column(String(255))
    location= Column(String(255))
    activity = Column(String(255))
    name = Column(String(255))
    sex = Column(String(255))
    age = Column(Integer)
    injury = Column(String(255))
    fatal_y_n = Column(String(1))
    time = Column(String(255))
    species = Column(String(255))
    investigator_or_source = Column(String(255))
    pdf = Column(String(255))
    original_order = Column(Integer)

from sqlalchemy import create_engine
engine = create_engine('mysql://root:'+pw+'@localhost:3306/SharkSearch')
conn = engine.connect()
Base.metadata.create_all(conn)

from sqlalchemy.orm import Session
session = Session(bind=conn)

# print all locations of shark attacks
attacks = session.query(Sharks)
print("All locations:")
for attack in attacks:
    print(attack.location)

print("-" * 12)

# find the number of provoked attacks
provoked = session.query(Sharks).filter(Sharks.type =='provoked').count()
print(provoked)

print("-" * 12)

# find the number of attacks in USA
usa = session.query(Sharks).filter(Sharks.country == 'USA').count()
print(usa)

print("-" * 12)

# find the number of attacks in 2017
year_2017 = session.query(Sharks).filter(Sharks.year == 2017).count()
print(year_2017)

print("-" * 12)

# find the number of attacks while surfing
surfing = session.query(Sharks).filter(Sharks.activity == 'surfing').count()
print(surfing)

print("-" * 12)

# find the number of fatal attacks in 2017 in Australia
fatal_2017_australia = session.query(Sharks).filter(and_(Sharks.fatal_y_n == 'Y', Sharks.country == "AUSTRALIA", Sharks.year == 2017)).count()
print(fatal_2017_australia)
