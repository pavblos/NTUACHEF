Οδηγίες Εκτέλεσης:
Χρησιμοποιήσαμε server version 11.3.2-MariaDB μέσω XAMPP.
Αρχικά, ξεκινήστε τη βάση με XAMPP, συνδεθείτε με MySQL και δημιουργήστε τη βάση με την εξής εντολή (προσοχή στο όνομα):
CREATE DATABASE NTUACHEF;
USE NTUACHEF
Έπειτα, εκτελέστε την ακόλουθη εντολή για να φορτώσει πλήρως η βάση:
SOURCE C:/path_to_folder/Everything.sql;
Για να γίνει η κλήρωση για τη δημιουργία νέου επεισοδίου για δεδομένη σεζόν, δεδομένων όλων των περιορισμών, ορίζεται η συνάρτηση generate_new_episode(season_year) στο αρχείο generate_episode_for_season.py, η οποία παίρνει ως παράμετρο το έτος της αναφερόμενης σεζόν.
Για δημιουργία administrator και παραδείγματος χρήστη μάγειρα, εκτελέστε τον sql κώδικα που βρίσκεται στο αρχείο AdminUserCreation.sql .  Για να αλλάξει τις πληροφορίες του ο μάγειρας θα πρέπει να κάνει την εξής κλήση:
	CALL UpdateCookDetails(3, 'NewFirstName', 'NewLastName', 1234567890);

Για την ανακήρυξη του νικητή ενός επεισοδίου τρέξτε την ακόλουθη εντολή:
	CALL FindEpisodeWinner(Episode.ID);  

, όπου Episode.ID <-- επεισόδιο του οποίου θέλω να βρω τον νικητή.


Τα queries βρίσκονται στο αρχείο queries.sql.

Design Coordinator
ikonomoug
