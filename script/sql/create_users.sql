-- on supprime le role super_admin pour eviter les erreur quand on le crée

DROP ROLE super_admin;

CREATE ROLE super_admin LOGIN PASSWORD '12345' SUPERUSER;

-- on crée une database qui appartient a l'utilisateur super_admin

CREATE DATABASE super_admin OWNER super_admin;

