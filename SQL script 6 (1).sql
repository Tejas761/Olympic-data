select * from athletes
select * from coaches
SELECT * from entriesgender
SELECT * from medals
SELECT * from teams

-- Count the number of athletes from each country
select NOC, COUNT(*) AS Total_athletes 
from athletes
    GROUP by NOC
    ORDER by Total_athletes desc;

-- Calculate the total medals own by each country 

SELECT TeamNOC,
    sum(Gold) as Gold,
    Sum(Silver) as Silver,
    sum(Bronze) as Bronze
 from medals
 GROUP by TeamNOC
ORDER by Gold DESC


-- Calculate the avg number of entries by each discipline

select Discipline,
AVG(Female) as avg_female,
AVG(Male) as avg_male
 FROM entriesgender
 GROUP by Discipline
 ORDER by Discipline





