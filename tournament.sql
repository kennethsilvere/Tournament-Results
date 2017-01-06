drop database if exists tournament;

create database tournament;

\c tournament

create table players (id serial primary key, name text);

create table matches (id serial primary key,
					  winner integer references players(id) on delete cascade,
					  loser integer references players(id));

create view total_wins as select players.name, 
count(matches.winner) as total_wins from players left join matches
on players.id = matches.winner group by players.name order by total_wins desc;
 
create view total_losses as select players.name, 
count(matches.loser) as total_losses from players left join matches
on players.id = matches.loser group by players.name order by total_losses;
 
create view num_wins as select players.id,total_wins.name,total_wins
from total_wins,players where total_wins.name = players.name 
order by total_wins desc;
 
create view standings as select num_wins.id,num_wins.name,num_wins.total_wins,
total_losses as num_losses from num_wins,total_losses 
where num_wins.name = total_losses.name;
 
create view p_standings as select standings.id,standings.name,total_wins,
(total_wins+num_losses) as matches_played from standings
order by total_wins desc;