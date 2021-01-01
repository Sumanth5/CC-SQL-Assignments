 select title, score from hacker_news
 order by score desc
 limit 5; 

select sum(score) from hacker_news 

select user, sum(score) from hacker_news
group by user
having sum(score) > 200
order by 2 desc ;
select (517 + 309 + 304 + 282)/6366.0; 

select user, count(*) from hacker_news
where url like '%watch?v=dQw4w9WgXcQ'
group by 1
order by 2 desc; 

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  count (*)
FROM hacker_news
group by source; 

select timestamp from hacker_news limit 10;
SELECT strftime('%H', timestamp) AS 'Hour', 
   ROUND(AVG(score), 1) AS 'Average Score', 
   COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1; 
