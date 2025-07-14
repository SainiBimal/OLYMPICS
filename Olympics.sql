use unified_mentor;

select * from oly;
-------------------------------------------------------

/* Checking Data types */

show columns from oly;
--------------------------------------------------------

/* Checking duplicates */

select city, year, sport, discipline, event, athlete, gender, country_code, country, event_gender, medal, count(*) 
from oly
group by city, year, sport, discipline, event, athlete, gender, country_code, country, event_gender, medal
having count(*) > 1;

----------------------------------------------------------

/* Removing duplicates*/

create table new_oly as
select distinct city, year, sport, discipline, event, athlete, gender, country_code, country, event_gender, medal
from oly;

select count(*) from new_oly;
select count(*) from oly;

drop table oly;
alter table new_oly rename to oly;

---------------------------------------------------------

/* Checking Nulls     */

select count(*) from oly
where city is null and 
year is null and
sport is null and
 discipline is null and
 event is null and
 athlete is null and
 gender is null and
 country_code is null and
 country is null and
 event_gender is null and
 medal is null;

--------------------------------------------------
/* Year wise medals and city organise olympics */

select Year, City, count(medal) as Total_Medals
from oly
group by Year, City;

--------------------------------------------------
/* Year wise Top 5 Country */

with cte as (
select Year, Country, count(medal) as Total_Medals
from oly
group by Year, Country
),
cte2 as (
select *, row_number() over(partition by Year order by Total_Medals desc) as Country_Rank
from cte
)
select Year, Country, Total_Medals, Country_Rank
from cte2
where Country_Rank < 6;

--------------------------------------------------
/* Gender wise Medals */

select Gender, count(Medal) as Total_Medals
from oly
group by Gender;

--------------------------------------------------
/* Gender wise Medals and Medal Types*/

select Gender, Medal as Medal_Type, count(Medal) as Total_Medals
from oly
group by Gender, Medal
order by gender asc, Total_Medals desc;

--------------------------------------------------
/* Year and Gender wise Medals */

select Year, Gender, count(Medal) as Total_Medals
from oly
group by Year, Gender;

--------------------------------------------------
/* Country wise Medals */

select Country, count(Medal) as Total_Medals
from oly
group by country
order by Total_Medals desc
limit 20;

--------------------------------------------------
/* Sports wise Medals */

select Sport, count(Medal) as Total_Medals
from oly
group by Sport
order by Total_Medals desc;

--------------------------------------------------

/* Event wise Medals */

select Event, count(Medal) as Total_Medals
from oly
group by Event
order by Total_Medals desc
limit 30;

--------------------------------------------------
/* City wise Top 10 Event with No of Events */

with cte as (select City, Event, count(Event) as No_of_Events,
row_number() over(partition by City order by count(Event) desc) as City_Rank
from oly
group by City, Event
order by City asc, No_of_Events desc)

select City, Event , No_of_Events
from cte 
where City_Rank < 11;

--------------------------------------------------

/* Country wise Top 3 Event with No of Medals */

with cte as (select Country, Event, count(Medal) as No_of_Medals,
row_number() over(partition by Country order by count(Medal) desc) as Country_Rank
from oly
group by Country, Event
order by  No_of_Medals desc)

select Country, Event , No_of_Medals
from cte 
where Country_Rank < 4;

--------------------------------------------------

/* Country wise Medal type and No of Medals */

with cte as( select Country, Medal, count(Medal) as Total_Medals,
row_number() over(partition by Country, Medal order by  count(Medal) desc) as Con_Med_Rank
from oly
group by Country, Medal
order by  count(Medal) desc
)

select Country, Medal , Total_Medals
from cte
where Con_Med_Rank < 4 ;

--------------------------------------------------

/* India Country Medal type and No of Medals */

select Country, Medal, count(Medal) as Total_Medals
from oly
where Country = "India"
group by Country, Medal;

--------------------------------------------------

/*  Country with Gold Medal type comparison */

select Country,  count(Medal) as Total_Medals
from oly
where Medal = "Gold"
group by Country
order by Total_Medals desc;

--------------------------------------------------

/*  Country with Sport, Discipline and  Medal comparison */

select Country_Code, Sport, Discipline, count(Medal) as Total_Medals
from oly
group by Country_Code, Sport, Discipline
order by Total_Medals desc;

--------------------------------------------------

/*  Country wise Top Athlete with Medal comparison */

select Country, Athlete,  count(Medal) as Total_Medals
from oly
group by Country, Athlete
order by Total_Medals desc
limit 30;

--------------------------------------------------

/*  Country wise Top Athlete with Gold Medal comparison */

select Country, Athlete,  count(Medal) as Total_Medals
from oly
where Medal = "Gold"
group by Country, Athlete
order by Total_Medals desc
limit 20;




