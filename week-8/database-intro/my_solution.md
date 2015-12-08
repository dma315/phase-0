1. Select all data for all states

``
SELECT *      
FROM states    
;
``

2. Select all data for all regions

``
SELECT *    
FROM regions    
;  
``

3. Select state name and population for all states

``
SELECT state_name, population
FROM states
;
``

4. Select state name and population for all states ordered by population descending

``
SELECT state_name, population
FROM states
ORDER BY population DESC
;
``

5. Select the state name for the states in region 7

``
SELECT state_name 
FROM states 
WHERE region_id = 7
;
``

6. Select the state name and population density for all states with density > 50 ordered from least to most dense

``
SELECT state_name, population_density  
FROM states 
WHERE population_density > 50 
ORDER BY population_density
;
``

7.  Select state names with population between 1M and 1.5M

``
SELECT state_name 
FROM states 
WHERE population BETWEEN 1000000 AND 1500000
``

8. Select state name and region ID for states ordered by region in ascending order

``
SELECT state_name, region_id
FROM states
ORDER BY region_id
;
``

9. Select regions where the name contains central

``
SELECT region_name 
FROM regions 
WHERE lower(region_name) LIKE '%central%'
;
``

10. Select the region name and state name for all states in ascending order by region_id

``
SELECT r.region_name, s.state_name 
FROM states s 
	INNER JOIN regions r 
		ON r.id = s.region_id 
ORDER BY region_id
;
``