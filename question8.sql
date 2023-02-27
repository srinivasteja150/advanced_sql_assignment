SELECT film_name, 
category_name,
collection AS "Highest_Overall_revenue"
FROM
(	SELECT  DISTINCT f.title AS "film_name", 
    ct.name AS "Category_name",
	collection,
	RANK() OVER( PARTITION BY ct.name order by collection DESC) AS "Rank_by_collection"
	FROM film f , film_category fc,
	(	SELECT DISTINCT film_id,
		sum(amount) AS collection
		FROM payment p, rental r, inventory i
		WHERE p.rental_id = r.rental_id AND
		i.inventory_id = r.inventory_id
		GROUP BY film_id
	) c, category ct
	WHERE f.film_id = c.film_id AND
	fc.film_id = f.film_id AND 
	fc.category_id = ct.category_id 
) x
WHERE Rank_by_collection =1
