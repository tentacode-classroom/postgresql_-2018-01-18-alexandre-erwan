
DROP DATABASE IF EXISTS events;
CREATE DATABASE events;

\c events;

DROP TABLE IF EXISTS actor;
CREATE TABLE actor (
	id SERIAL PRIMARY KEY,
	login varchar(50) NOT NULL,
	gravatar_id varchar(50),
	url varchar(80) NOT NULL,
	avatar_url varchar(80)
);

INSERT INTO actor (login, url) values('Erwan0', 'https://github.com/Erwan0');

DROP TABLE IF EXISTS repo;
CREATE TABLE repo (
	id SERIAL PRIMARY KEY,
	name varchar(50) NOT NULL,
	url varchar(80) NOT NULL
);

INSERT INTO repo values('Erwan0/testPsql', 'https://github.com/repos/Erwan0/testPsql');

DROP TABLE IF EXISTS events;
CREATE TABLE events (
	id SERIAL NOT NULL;
	id_actor INT REFERENCES actor(id),
	id_repo INT REFERENCES repo(id),
);



DROP TABLE IF EXISTS pushEvent;
CREATE TABLE pushEvent(
	refe varchar(80) NOT NULL,
	event_size int NOT NULL
) INHERITS (events);

DROP TABLE IF EXISTS pullRequestEvent;
CREATE TABLE pullRequestEvent (
	pullNumber int NOT NULL,
	changes varchar(255)
) INHERITS (events);

