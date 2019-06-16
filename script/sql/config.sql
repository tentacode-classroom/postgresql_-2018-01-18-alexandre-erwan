-- on reset les parametre systeme pour etre sur qu'ils ont leur valeur de base pour les modifier
ALTER SYSTEM RESET ALL;
-- on modifier le port et la memoire utiliser
ALTER SYSTEM SET port=1234;
ALTER SYSTEM SET work_mem=8;

-- on affiche les parametre qu'on vient de modifier 
SELECT name, setting FROM pg_settings WHERE name='port';

-- on remet les parametre a zero pour eviter des erreurs par la suite
ALTER SYSTEM RESET all;
