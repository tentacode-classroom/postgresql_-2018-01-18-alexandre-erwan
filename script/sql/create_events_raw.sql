\c events

DROP TABLE IF EXISTS events_raw;

CREATE TABLE events_raw (
	id SERIAL NOT NULL,
	data_json JSONB
);

