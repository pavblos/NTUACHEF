DELIMITER $$

CREATE PROCEDURE `FindEpisodeWinner`(IN episode_id INT)
BEGIN
    DROP TEMPORARY TABLE IF EXISTS TempScores;
    CREATE TEMPORARY TABLE TempScores (
        Cook_ID INT,
        TotalScore INT,
        CookLevel INT,
        PRIMARY KEY (Cook_ID)
    );

    INSERT INTO TempScores (Cook_ID, TotalScore)
    SELECT 
        cr.Episode_Cook_ID,
        SUM(cr.Rating) AS TotalScore
    FROM 
        CookRatings cr
    WHERE 
        cr.Episode_ID = episode_id
    GROUP BY 
        cr.Episode_Cook_ID;

    UPDATE 
        TempScores ts
    JOIN 
        CookLevelMapping clm ON ts.Cook_ID = clm.Cook_ID
    SET 
        ts.CookLevel = clm.Level_Number;

    SELECT 
        c.Cook_ID, 
        c.First_Name, 
        c.Last_Name,
        ts.TotalScore,
        ts.CookLevel
    FROM 
        TempScores ts
    JOIN 
        Cook c ON ts.Cook_ID = c.Cook_ID
    WHERE 
        ts.TotalScore = (SELECT MAX(TotalScore) FROM TempScores)
        AND ts.CookLevel = (SELECT MAX(CookLevel) FROM TempScores WHERE TotalScore = (SELECT MAX(TotalScore) FROM TempScores))
    ORDER BY 
        RAND()
    LIMIT 1;

    DROP TEMPORARY TABLE IF EXISTS TempScores;

END$$

DELIMITER ;
