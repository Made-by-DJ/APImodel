--Spring runt dit SQL-bestand automatisch. Spring zoekt namelijk naar een bestand dat data.sql heet (in deze folder) en
--voert de SQL commando's voor je uit. Dit is een van de manier om de database te vullen. Om dit te laten werken, is het
--volgende aan application.properties toegevoegd:
--spring.datasource.initialization-mode=always
--Zoals gezegd, dit is een van de manieren. De huidige opzet avn deze applicatie heeft een vast aantal user-rollen. Deze
--kunnen niet door eindgebruikers, moderators of admins toegevoegd worden. Alleen de programmeur kan user-rollen
--toevoegen. Daarom is er ook geen Service & repo voor de user-rollen geprogrammeerd. De enige manier om dan iets in de
--database te krijgen is via SQL statements in dit bestand.

--Onderstaand moet alleen uncomment worden als spring.jpa.hibernate.ddl-auto op create staat. Of het moet op comment worden gezet
--nadat het de eerste keer met update is gestart. Als het op update staat zal spring boot bij elke keer opstarten de rollen
--en de gebruikers Mark en Eva aanmaken.

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
