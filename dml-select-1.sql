## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**

SELECT name 
FROM team
ORDER BY name;

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**

SELECT * 
FROM player
WHERE name LIKE 'S%' AND country!='South Africa'
ORDER BY name DESC;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**

select event_no,clock_in_seconds from event1 order by event_no asc;

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
SELECT event_no
FROM event1
WHERE  raid_points + defending_points >= 3
ORDER BY event_no asc ; 

-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**

SELECT name
FROM player
WHERE  (country = 'India' OR country = 'Iran')
ORDER BY name ASC;

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**

SELECT name
FROM player
WHERE  (country != 'India' AND country != 'Iran')
ORDER BY name ASC; 
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**

SELECT name
FROM skill1
WHERE name LIKE 'Defend%'
ORDER BY name ASC;
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**

SELECT stadium_name
FROM venue
WHERE stadium_name LIKE '%Complex'
ORDER BY stadium_name ASC; 
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT winner_team_id,score
FROM outcome1
WHERE score < 35
ORDER BY id DESC;

-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**

SELECT *
FROM game1
WHERE game_date BETWEEN TO_DATE('01-JAN-2020', 'DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY id DESC;

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT name
FROM player
WHERE name='Raiders'
ORDER BY name ASC;

-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**

SELECT event_no,raid_points,defending_points
FROM event1,game1
WHERE innings_id = 1 AND game_date = TO_DATE('26-JAN-2020', 'DD-MM-YYYY')
ORDER BY event_no ASC;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**

SELECT name
FROM outcome,game,team
WHERE game_date = TO_DATE('09-MAR-2020', 'DD-MM-YYYY')
ORDER BY name ASC;

-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**

SELECT name
FROM game,player,outcome
WHERE game_date = TO_DATE('09-MAR-2020', 'DD-MM-YYYY')
ORDER BY name ASC;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**

SELECT name
FROM player
WHERE skill_id=3
ORDER BY name ASC;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**

SELECT name
FROM game,venue
WHERE game_date = TO_DATE('09-MAR-2020', 'DD-MM-YYYY')
ORDER BY name ASC;


-- 17. **Write a query to display the Coach's name of the team `Iran`**

SELECT coach
FROM team,player
WHERE country = 'Iran'
ORDER BY team.name;
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**

select event_no,defending_points
FROM event1,player
WHERE player.name = 'Fazel Atrachali'
ORDER BY event.event_no;

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**


SELECT name
FROM team,outcome,game
WHERE game_date BETWEEN TO_DATE('01-MAR-2020' AND '31-MAR-2020')
ORDER BY team.name;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT name
FROM player,outcome,game
WHERE game_date BETWEEN TO_DATE('01-MAR-2020' AND '31-MAR-2020')
ORDER BY player.name;