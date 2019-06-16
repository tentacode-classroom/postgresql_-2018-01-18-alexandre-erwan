-- on supprime la DB avant de la creer pour eviter les erreurs
DROP DATABASE IF EXISTS events;
CREATE DATABASE events;

-- on se connecte a la base pour etre sur d'effectuer les midification dessus
\c events;

-- on creer une table actor et repo qui seront appellé plus tard grave a leurs id  
DROP TABLE IF EXISTS actor;
CREATE TABLE actor (
	id int PRIMARY KEY,
	login varchar(50) NOT NULL,
	gravatar_id varchar(50),
	url varchar(80) NOT NULL,
	avatar_url varchar(80)
);

-- on insert une valeur dans la table 
INSERT INTO actor (login, url) values('Erwan0', 'https://github.com/Erwan0');

DROP TABLE IF EXISTS repo;
CREATE TABLE repo (
	id int PRIMARY KEY,
	name varchar(50) NOT NULL,
	url varchar(80) NOT NULL
);

-- on insert une valeur dans la table
INSERT INTO repo values('Erwan0/testPsql', 'https://github.com/repos/Erwan0/testPsql');


-- on crée une table events qui sera la table mere de pushEvent et pullRequestEvent avec des valeurs qu'elles auront en commun
DROP TABLE IF EXISTS events;
CREATE TABLE events (
	id SERIAL NOT NULL;
	id_actor INT REFERENCES actor(id),
	id_repo INT REFERENCES repo(id),
	type varchar(50)
);


-- on creer les table pushEvent et pullRequestEvent qui herite de events
DROP TABLE IF EXISTS pushEvent;
CREATE TABLE pushEvent(
	branch varchar(80) NOT NULL,
	commit_count int
) INHERITS (events);

DROP TABLE IF EXISTS pullRequestEvent;
CREATE TABLE pullRequestEvent (
	pullNumber int NOT NULL,
	commit_count int 
) INHERITS (events);

