-- 3.1 Μέσος Όρος Αξιολογήσεων ανά μάγειρα και εθνική κουζίνα

SELECT 
    Cook.First_Name AS Cook_First_Name,
    Cook.Last_Name AS Cook_Last_Name,
    Cuisine.Cuisine_Name AS Cuisine_Name,
    AVG(CookRatings.Rating) AS Average_Rating
FROM 
    CookRatings
JOIN 
    EpisodeCookCuisineRecipe ON CookRatings.Episode_ID = EpisodeCookCuisineRecipe.Episode_ID 
    AND CookRatings.Episode_Cook_ID = EpisodeCookCuisineRecipe.Cook_ID
JOIN 
    Cook ON CookRatings.Episode_Cook_ID = Cook.Cook_ID
JOIN 
    Cuisine ON EpisodeCookCuisineRecipe.Cuisine_ID = Cuisine.Cuisine_ID
GROUP BY 
    Cook.Cook_ID, Cuisine.Cuisine_ID
ORDER BY 
    Cook.Cook_ID, AVG(CookRatings.Rating) DESC;


-- 3.2 Για δεδομένη Εθνική κουζίνα και έτος, ποιοι μάγειρες ανήκουν σε αυτήν και ποιοι μάγειρες συμμετείχαν σε επεισόδια;

SELECT DISTINCT 
    Cook.Cook_ID,
    Cook.First_Name,
    Cook.Last_Name
FROM 
    Cook
JOIN 
    CookSpecializesInCuisine ON Cook.Cook_ID = CookSpecializesInCuisine.Cook_ID
JOIN 
    EpisodeCookCuisineRecipe ON Cook.Cook_ID = EpisodeCookCuisineRecipe.Cook_ID
JOIN 
    Episode ON Episode.Episode_ID = EpisodeCookCuisineRecipe.Episode_ID
JOIN 
    Season ON Episode.Season_ID = Season.Season_ID
WHERE 
    CookSpecializesInCuisine.Cuisine_ID = 8
    AND Season.Year = 2020
ORDER BY 
    Cook.Cook_ID;

-- 3.3 Βρείτε τους νέους μάγειρες (ηλικία < 30 ετών) που έχουν τις περισσότερες συνταγές.

SELECT 
    Cook.Cook_ID,
    Cook.First_Name,
    Cook.Last_Name,
    TIMESTAMPDIFF(YEAR, Cook.Date_of_Birth, CURDATE()) AS Age,
    COUNT(Recipe_Cooks.Recipe_ID) AS Recipe_Count
FROM 
    Cook
JOIN 
    Recipe_Cooks ON Cook.Cook_ID = Recipe_Cooks.Cook_ID
WHERE 
    TIMESTAMPDIFF(YEAR, Cook.Date_of_Birth, CURDATE()) < 30
GROUP BY 
    Cook.Cook_ID
ORDER BY 
    Recipe_Count DESC;


-- 3.4 Βρείτε τους μάγειρες που δεν έχουν συμμετάσχει ποτέ ως κριτές σε κάποιο επεισόδιο.
SELECT 
    C.Cook_ID,
    C.First_Name,
    C.Last_Name
FROM 
    Cook C
LEFT JOIN 
    EpisodeJudge EJ ON C.Cook_ID = EJ.Cook_ID
WHERE 
    EJ.Cook_ID IS NULL;



-- 3.5 Ποιοι κριτές έχουν συμμετάσχει στον ίδιο αριθμό επεισοδίων σε διάστημα ενός έτους με περισσότερες από 3 εμφανίσεις;WE NEED APPROPRIATE DATA TO CHECK!!!


SELECT 
    A.Cook_ID,
    A.Judge_Name,
    A.Year,
    A.Episode_Count
FROM (
    SELECT 
        EJ.Cook_ID,
        CONCAT(C.First_Name, ' ', C.Last_Name) AS Judge_Name,
        S.Year,
        COUNT(E.Episode_ID) AS Episode_Count
    FROM 
        EpisodeJudge EJ
    JOIN 
        Episode E ON EJ.Episode_ID = E.Episode_ID
    JOIN 
        Season S ON E.Season_ID = S.Season_ID
    JOIN
        Cook C ON EJ.Cook_ID = C.Cook_ID
    GROUP BY 
        EJ.Cook_ID, S.Year
    HAVING 
        COUNT(E.Episode_ID) > 3
) A
JOIN (
    SELECT 
        S.Year,
        COUNT(E.Episode_ID) AS Episode_Count
    FROM 
        Episode E
    JOIN 
        Season S ON E.Season_ID = S.Season_ID
    GROUP BY 
        S.Year
    HAVING 
        COUNT(E.Episode_ID) > 3
) B ON A.Year = B.Year AND A.Episode_Count = B.Episode_Count
ORDER BY 
    A.Year, A.Episode_Count DESC;


-- 3.6 Ανάμεσα σε ζεύγη πεδίων (π.χ. brunch και κρύο πιάτο) που είναι κοινά στις συνταγές, βρείτε τα 3 κορυφαία (top-3) ζεύγη που εμφανίστηκαν σε επεισόδια


SELECT 
  l1.Label_Name AS Label1,
  l2.Label_Name AS Label2,
  COUNT(*) AS Shared_Recipe_Count
FROM 
  Recipe_Label rl1
JOIN 
  Recipe_Label rl2 ON rl1.Recipe_ID = rl2.Recipe_ID AND rl1.Label_ID < rl2.Label_ID
JOIN 
  Label l1 ON rl1.Label_ID = l1.Label_ID
JOIN 
  Label l2 ON rl2.Label_ID = l2.Label_ID
JOIN 
  EpisodeCookCuisineRecipe ec ON rl1.Recipe_ID = ec.Recipe_ID
GROUP BY 
  rl1.Label_ID, rl2.Label_ID
ORDER BY 
  Shared_Recipe_Count DESC
LIMIT 3;
   


-- 3.7 Βρείτε όλους τους μάγειρες που συμμετείχαν τουλάχιστον 5 λιγότερες φορές από τον μάγειρα με τις περισσότερες συμμετοχές σε επεισόδια.

    SELECT 
        c.Last_Name, 
        Participation_Count,
        (SELECT MAX(Participation_Count) FROM (
            SELECT COUNT(Episode_ID) AS Participation_Count
            FROM EpisodeCookCuisineRecipe
            GROUP BY Cook_ID
        ) AS MaxParticipation) - Participation_Count AS Margin
    FROM 
        (SELECT 
            Cook_ID, 
            COUNT(Episode_ID) AS Participation_Count
        FROM 
            EpisodeCookCuisineRecipe
        GROUP BY 
            Cook_ID
        ) AS Participation
    JOIN 
        Cook c ON Participation.Cook_ID = c.Cook_ID
    HAVING 
        Margin >= 5






-- 3.8 Σε ποιο επεισόδιο χρησιμοποιήθηκαν τα περισσότερα εξαρτήματα (εξοπλισμός); 


SELECT 
    e.Episode_ID, 
    COUNT(r.Equipment_ID) AS Equipment_Count
FROM 
    EpisodeCookCuisineRecipe e
JOIN 
    RecipeRequiresEquipment r ON e.Recipe_ID = r.Recipe_ID
GROUP BY 
    e.Episode_ID
ORDER BY 
    Equipment_Count DESC
LIMIT 50;


-- 3.9 Λίστα με μέσο όρο αριθμού γραμμάριων υδατανθράκων στο διαγωνισμό ανά έτος

SELECT 
    s.Year,
    AVG(rni.Carbs_per_Portion) AS Average_Carbs_per_Portion
FROM 
    Season s
JOIN 
    Episode e ON s.Season_ID = e.Season_ID
JOIN 
    EpisodeCookCuisineRecipe eccr ON e.Episode_ID = eccr.Episode_ID
JOIN 
    RecipeNutritionalInfo rni ON eccr.Recipe_ID = rni.Recipe_ID
GROUP BY 
    s.Year;

-- 3.10 Ποιες Εθνικές κουζίνες έχουν τον ίδιο αριθμό συμμετοχών σε διαγωνισμούς, σε διάστημα δύο συνεχόμενων ετών, με τουλάχιστον 3 συμμετοχές ετησίως;  NEED APPROPRIATE DATA TO CHECK!!!


WITH SeasonAppearances AS (
    SELECT 
        s.Year,
        ec.Cuisine_ID,
        COUNT(DISTINCT ec.Episode_ID) AS Appearance_Count
    FROM 
        EpisodeCookCuisineRecipe ec
    JOIN 
        Episode e ON ec.Episode_ID = e.Episode_ID
    JOIN 
        Season s ON e.Season_ID = s.Season_ID
    GROUP BY 
        s.Year, ec.Cuisine_ID
    HAVING 
        COUNT(DISTINCT ec.Episode_ID) >= 3
),
ConsecutiveSeasons AS (
    SELECT 
        a.Year AS Year1,
        b.Year AS Year2,
        a.Cuisine_ID,
        a.Appearance_Count AS Count1,
        b.Appearance_Count AS Count2
    FROM 
        SeasonAppearances a
    JOIN 
        SeasonAppearances b ON a.Cuisine_ID = b.Cuisine_ID
        AND b.Year = a.Year + 1
    WHERE 
        a.Appearance_Count = b.Appearance_Count
)

SELECT 
    Year1,
    Year2,
    c.Cuisine_Name,
    Count1 AS Appearances
FROM 
    ConsecutiveSeasons
JOIN 
    Cuisine c ON c.Cuisine_ID = ConsecutiveSeasons.Cuisine_ID
ORDER BY 
    Year1, Year2, c.Cuisine_Name;





-- 3.11 Βρείτε τους top-5 κριτές που έχουν δώσει συνολικά την υψηλότερη βαθμολόγηση σε ένα
-- μάγειρα. (όνομα κριτή, όνομα μάγειρα και συνολικό σκορ βαθμολόγησης)

SELECT 
    CONCAT(j.First_Name, ' ', j.Last_Name) AS Judge_Name, 
    CONCAT(c.First_Name, ' ', c.Last_Name) AS Cook_Name, 
    SUM(cr.Rating) AS Total_Rating
FROM 
    CookRatings cr
JOIN 
    Cook j ON cr.Judge_Cook_ID = j.Cook_ID
JOIN 
    Cook c ON cr.Episode_Cook_ID = c.Cook_ID
GROUP BY 
    cr.Judge_Cook_ID, cr.Episode_Cook_ID
ORDER BY 
    Total_Rating DESC
LIMIT 5;

-- 3.12 Ποιο ήταν το πιο τεχνικά δύσκολο, από πλευράς συνταγών, επεισόδιο του διαγωνισμού ανά έτος;

WITH RankedEpisodes AS (
    SELECT 
        s.Year,
        e.Episode_ID,
        AVG(r.Difficulty) AS Avg_Difficulty,
        RANK() OVER (PARTITION BY s.Year ORDER BY AVG(r.Difficulty) DESC) AS rank
    FROM 
        Episode e
    JOIN 
        Season s ON e.Season_ID = s.Season_ID
    JOIN 
        EpisodeCookCuisineRecipe eccr ON e.Episode_ID = eccr.Episode_ID
    JOIN 
        Recipe r ON eccr.Recipe_ID = r.Recipe_ID
    GROUP BY 
        e.Episode_ID, s.Year
)
SELECT 
    Year,
    Episode_ID,
    Avg_Difficulty
FROM 
    RankedEpisodes
WHERE 
    rank = 1
ORDER BY 
    Year;



-- 3.13 Ποιο επεισόδιο συγκέντρωσε τον χαμηλότερο βαθμό επαγγελματικής κατάρτισης (κριτές και μάγειρες);
SELECT 
    e.Episode_ID,
    SUM(clm.Level_Number) AS Total_Expertise
FROM 
    Episode e
LEFT JOIN (
    SELECT Episode_ID, Cook_ID FROM EpisodeCookCuisineRecipe
    UNION ALL
    SELECT Episode_ID, Cook_ID FROM EpisodeJudge
) all_cooks ON e.Episode_ID = all_cooks.Episode_ID
LEFT JOIN CookLevelMapping clm ON all_cooks.Cook_ID = clm.Cook_ID
GROUP BY 
    e.Episode_ID
ORDER BY 
    Total_Expertise ASC
LIMIT 1;



-- 3.14 Ποια θεματική ενότητα έχει εμφανιστεί τις περισσότερες φορές στο διαγωνισμό;


SELECT 
    t.Name AS Theme_Name,
    COUNT(*) AS Appearance_Count
FROM 
    Theme t
JOIN 
    RecipeIsThemed rit ON t.Theme_ID = rit.Theme_ID
JOIN 
    Recipe r ON rit.Recipe_ID = r.Recipe_ID
JOIN 
    EpisodeCookCuisineRecipe eccr ON r.Recipe_ID = eccr.Recipe_ID
GROUP BY 
    t.Theme_ID
ORDER BY 
    Appearance_Count DESC
LIMIT 10;


-- 3.15 Ποιες ομάδες τροφίμων δεν έχουν εμφανιστεί ποτέ στον διαγωνισμό;
SELECT 
    ft.Food_Type_ID,
    ft.Name AS Food_Type_Name,
    ft.Description
FROM 
    Food_Type ft
LEFT JOIN 
    Ingredient i ON ft.Food_Type_ID = i.Food_Type_ID
LEFT JOIN 
    RecipeIngredient ri ON i.Ingredient_ID = ri.Ingredient_ID
LEFT JOIN 
    EpisodeCookCuisineRecipe eccr ON ri.Recipe_ID = eccr.Recipe_ID
WHERE 
    eccr.Recipe_ID IS NULL
GROUP BY 
    ft.Food_Type_ID;
