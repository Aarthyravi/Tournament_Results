# Tournament_Results
Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.
To develop a database schema to store the game matches between players and to rank the players and pair them up in matches in a tournament.
# Database Creation:
   First We have to create the Database.
   
      vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql tournament
      psql (9.3.16)
      Type "help" for help.

      tournament=> CREATE DATABASE tournament;
      CREATE DATABASE
    
 # Table Creation:   
    To develop a database containing fully normalized data within multiple tables. 
   Two Tables We have to need. First table is for players. It contains Player Id and Player Name. 
   Second one is for matches.It contains Match Id, winner and loser.This table is inside of the <tournament.sql> file.
    
