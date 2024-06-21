----Top 10 wines by scores 

Select p.wine_id, w.title, p.score
FROM price p
Join wine w on p.wine_id = w.wine_id 
order by p.score desc
limit 10

--- Top 10 wines by scores and their temperature and precipitation level 
Select w.wine_id, w.region_id, r.prcp, r.temp, p.score
FROM wine w 
join price p on w.wine_id = p.wine_id
join region r on r.region_id = w.region_id 
order by p.score desc 
limit 10 

---Top 10 wines and their categories 
Select p.wine_id, w.title, p.score, w.category
FROM price p
Join wine w on p.wine_id = w.wine_id 
order by p.score desc
limit 10


----- Top 10 wines and their regions
Select w.wine_id, r.region, p.score
FROM wine w 
join price p on w.wine_id = p.wine_id
join region r on r.region_id = w.region_id 
order by p.score desc 
limit 10 

---Bottom 10 wines and their scores
Select p.wine_id, w.title, p.score
FROM price p
Join wine w on p.wine_id = w.wine_id 
order by p.score asc
limit 10

--- average temperature and impact on wine score 
----- Case 1: 
Select  r.region, r.temp, r.prcp, avg(p.score) as avg_score
FROM price p
Join wine w on p.wine_id = w.wine_id 
join region r on w.region_id = r.region_id
group by r.region, r.temp, r.prcp 
order by avg_score desc
---limit 10

--- average score for 10 category 
Select avg(p.score)
FROM wine w
Join price p on p.wine_id = w.wine_id 
order by 
