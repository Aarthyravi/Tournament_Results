# Tournament_Results
Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.
To develop a database schema to store the game matches between players and to rank the players and pair them up in matches in a tournament.

# Setup: 
   1.Install Vagrant and virtual box
     vagrantup.com and virtualbox.org
   2.Launch the Vagrant VM 
      $vargrant up
   3.Login to your vagrant environment 
      $vagrant ssh
      
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
   Second one is for matches which player is win or loss in the tournament.It contains Match Id, winner and loser.These tables are inside    of the tournament.sql file.
   
# Initialize the database

   $ psql tournament
   
   tournament=> \i tournament.sql
# Run the Test

   vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
   
   we could see the Test Results:
   1.countPlayers() returns 0 after initial deletePlayers() execution.
   2.countPlayers() returns 1 after one player is registered.
   3.countPlayers() returns 2 after two players are registered.
   4.countPlayers() returns zero after registered players are deleted.
   5.Player records successfully deleted.
   6.Newly registered players appear in the standings with no matches.
   7.After a match, players have updated standings.
   8.After match deletion, player standings are properly reset.
   9.Matches are properly deleted.
   10.After one match, players with one win are properly paired.
   Success!  All tests pass!
