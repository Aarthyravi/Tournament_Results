# Tournament_Results
Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.
To develop a database schema to store the game matches between players and to rank the players and pair them up in matches in a tournament.
# Database Creation:
   To develop a database containing fully normalized data within multiple tables. 
   Database Creation:
   
      vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql tournament
      psql (9.3.16)
      Type "help" for help.

      tournament=> CREATE DATABASE tournament;
      CREATE DATABASE
