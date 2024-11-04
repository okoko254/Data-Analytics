
use Tuesday

select * from Crime

--1.Which state has the highest crime in the year?
select top 1 STATE, sum(NUMBER)TotalCrime from Crime
group by STATE
order by TotalCrime desc

--2.Which state is said to be the most peaceful state with the least crime in the year?
select top 1 STATE, sum(NUMBER)TotalCrime from Crime
group by STATE
order by TotalCrime asc

--3.What is the sum total of all committed in the North East?
select REGION, sum(NUMBER)TotalCrime from Crime
where REGION = 'North East'
group by REGION

--4.Which state has the highest number of crimes against lawful authorities?
select top 1 STATE, sum(NUMBER)TotalCrime from Crime
where OFFENCE_CATEGORY = 'OFFENCES AGAINST LAWFUL AUTH'
group by STATE
order by TotalCrime desc

--5.Which geo-political region is said to have the highest crime rate?
select top 1 REGION, sum(NUMBER)TotalCrime from Crime
group by REGION 
order by TotalCrime desc

--6.What is the number of crimes commited in Lagos State?
select STATE, sum(NUMBER)TotalCrime from Crime
where STATE = 'LAGOS STATE'
group by STATE

--7.Which region would you recommend that the security agensies should pay lower attention to?
select top 1 REGION, sum(NUMBER)TotalCrime from Crime
group by REGION
order by TotalCrime asc

--8.Which region and state has the highest number of crimes against properties?
select top 1 STATE, REGION, sum(NUMBER)TotalCrime from Crime
where OFFENCE_CATEGORY = 'OFFENCES AGAINST PROPERTY'
group by STATE, REGION
order by TotalCrime desc

--9.Highligt the top 5 states with the highest number of crimes committed.
select top 5 STATE, sum(NUMBER)TotalCrime from Crime 
group by STATE
order by TotalCrime desc

--10.Which South Eastern state has the least number of crimes committed?
select top 1 STATE, sum(NUMBER)TotalCrime from Crime
where REGION = 'SOUTH EAST'
group by STATE
order by TotalCrime asc

--11.What is the average number of crimes per state for the year?
select STATE, avg(NUMBER)AverageCrime from Crime
group by STATE

--12.Which offence category has the highest reported cases in the South West region?
select top 1 OFFENCE_CATEGORY, sum(NUMBER)TotalCrime from Crime
where REGION = 'SOUTH WEST'
group by OFFENCE_CATEGORY
order by TotalCrime desc

--13.What is the total number of crimes committed against persons across all states?
select OFFENCE_CATEGORY, sum(NUMBER)TotalCrime from Crime
where OFFENCE_CATEGORY = 'OFFENCES AGAINST PERSONS'
group by OFFENCE_CATEGORY

--14.Identify the top 3 offence subcategories with the highest number of crimes in the North Central region.
select top 3 OFFENCE_SUBCATEGORY, sum(NUMBER)Totalcrime from Crime 
where REGION = 'NORTH CENTRAL'
group by OFFENCE_SUBCATEGORY
order by TotalCrime desc

--15.What is the total number of crimes reported in the South-South region?
select REGION, sum(NUMBER)Totalcrime from Crime
where REGION = 'SOUTH SOUTH'
group by REGION
order by TotalCrime

--16.Which state in the north west has the has the highest number of crimes related to forgery offence?
select top 1 STATE, sum(NUMBER)TotalCrime from Crime
where OFFENCE_SUBCATEGORY  = 'FORGERY'
group by STATE
order by Totalcrime desc

--17.Which state has the highest number of crimes under the offence subcategory "theft"?
select STATE, sum(NUMBER)TotalCrime from Crime
where OFFENCE_SUBCATEGORY = 'THEFT/STEALING'
group by STATE
order by TotalCrime desc

--18.How many states have a crime count above the national average?

--19.What is the trend of crimes against public peace in the North East region?
select OFFENCE_SUBCATEGORY, sum(NUMBER)TotalCrime from Crime
where REGION = 'NORTH EAST' where OFFENCE_SUBCATEGORY = 'BREACH OF PEACE'
group by OFFENCE_SUBCATEGORY
order by TotalCrime 

--23.How many crimes were commited in Abuja (FCT) for the year?
select STATE, sum(NUMBER)TotalCrime from Crime
where STATE = 'ABUJA'
group by STATE

--24.Which offence category contibutes the least to the overal crime statistics in the South East?
select top 1 OFFENCE_CATEGORY, sum(NUMBER)TotalCrime from Crime
where REGION = 'SOUTH EAST'
group by OFFENCE_CATEGORY
order by TotalCrime asc

--25.What is the distribution of crime categories in the south west region?
select OFFENCE_CATEGORY, sum(NUMBER)TotalCrime from Crime
where REGION = 'SOUTH WEST'
group by OFFENCE_CATEGORY
order by TotalCrime 