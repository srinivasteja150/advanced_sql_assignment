

SELECT f.film_id, title, length 
FROM film_category fc, category c, film f			-- joined three tables by applying joining conditions
where fc.category_id = c.category_id
AND (c.name = 'Drama' or c.name = 'Sports') 
AND fc.film_id = f.film_id
ORDER BY length DESC								-- ordered by film length in decresing order