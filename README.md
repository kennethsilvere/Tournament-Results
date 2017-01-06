				Swiss Tournament

This is a project made using Python and PostgreSQL database to keep track of players and matches in a game tournament.
The game tournament will use the Swiss system for pairing up players in each round.

There are three files included in this folder.

(1) tournament.sql
(2) tournament.py
(3) tournament_test.py

The tournament.sql file contains various sql commands such as 
creating the database, connecting to it, creating its two main tables namely 'players' and 'matches', and creates several views to extract certain tables from the exisiting tables, ultimately forming the table which lists out the player standings .

The tournament.py file is a python module connected to the tournament database using PostgreSQL. It consists of several functions to register players, count the number of currently registered players, delete registered players, report the results of a match, delete match records, get player standings, pair players with their appropriate opponents. 

The tournament_test.py file contains unit tests that will test the functions written in tournament.py


To run this project :


-> Have Vagrant and VirtualBox installed on your machine

-> Login to the VagrantVM

-> Unzip the contents of the project folder

-> Upload the three files into the VagrantVM and make this the current directory

-> Open the psql interface

-> Import and run the psql commands from the tournament.sql file

-> Exit the psql command line

-> Run the tournament_test.py file for an automated run of the project
