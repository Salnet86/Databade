sudo apt install mysql-server


mysql - u root - p


SELECT USER();



SELECT CURRENT_USER();




GRANT SELECT ON *.* TO utente@localhost


GRANT INSERT ON *.* TO utente@localhost




GRANT ALL PRIVILEGES ON test_db.* TO utente@localhost


-------------------------------
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';




FLUSH PRIVILEGES;


---------------------


GRANT <istruzioni_consentite>
ON <database>.<tabella>
TO <utente>@<host>
IDENTIFIED BY <password>;




Partiamo dall'utente con più restrizioni, cioè il visitatore:

GRANT SELECT
ON cinema.*
TO 'visitatore'@'%'
IDENTIFIED BY 'password_visitatore';
Agli utenti di livello più basso (visitatori) abbiamo assegnato il privilegio di lettura (comando SELECT) su tutte le tabelle del database "cinema" (cinema.*). Abbiamo altresì previsto che questo utente possa accedere senza alcuna restrizione di host (@'%') stante la limitatezza dei suoi privilegi.




--------------------------


GRANT SELECT, INSERT, UPDATE, DELETE
ON cinema.*
TO 'editore'@'localhost'
IDENTIFIED BY 'password_editore';






GRANT ALL
ON cinema.*
TO 'admin'@'123.123.123.123'
IDENTIFIED BY 'password_admin'








REVOKE <istruzioni_revocate>
ON <database>.<tabella>
FROM <utente>@<host>


REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'editore'@'localhost'








SHOW GRANTS FOR 'editore'@'localhost';




SHOW GRANTS FOR CURRENT_USER;






DROP USER 'editore'@'localhost
