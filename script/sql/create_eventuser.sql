-- on supprime le role si il existe avant de le creer pour eviter les erreurs
DROP ROLE IF EXISTS events;

CREATE ROLE events LOGIN PASSWORD '12345' SUPERUSER;



