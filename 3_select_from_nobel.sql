-- 1) Change the query shown so that it displays Nobel prizes for 1950. 
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

-- 2) Show who won the 1962 prize for literature. 
SELECT winner
FROM nobel
WHERE yr = 1962 AND subject = 'literature';

-- 3) Show the year and subject that won 'Albert Einstein' his prize. 
SELECT yr, subject
FROM nobel 
WHERE winner = 'Albert Einstein';

-- 4) Give the name of the 'peace' winners since the year 2000, including 2000. 
SELECT winner
FROM nobel 
WHERE subject = 'peace' AND yr > 1999;

-- 5) Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive. 
SELECT yr, subject, winner
FROM nobel 
WHERE subject = 'literature' 
AND yr BETWEEN 1980 AND 1989;

-- 6) Show all details of the presidential winners: 
SELECT * 
FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama'
                  )

-- 7) Show the winners with first name John 
SELECT winner
FROM nobel 
WHERE winner LIKE 'John %';


-- 8) Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.
SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) OR
    (subject = 'Chemistry'AND yr = 1984);

-- 9) Show the year, subject, and name of winners for 1980 excluding chemistry and medicine
SELECT yr, subject, winner
FROM nobel
WHERE subject NOT LIKE 'chemistry' AND
      subject NOT LIKE 'medicine' AND
      yr =1980;

-- 10) Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
SELECT yr, subject, winner
FROM nobel
WHERE (yr < 1910 AND subject = 'medicine') OR
(yr > 2003 AND subject = 'literature');