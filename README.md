# advanced_sql_assignment

### Question 1
Write a query that gives an overview of how many films have replacements costs in the following cost ranges
- low: 9.99 - 19.99
- medium: 20.00 - 24.99
- high: 25.00 - 29.99

<img width="1132" alt="question1" src="https://user-images.githubusercontent.com/122455311/221527378-8faaa11f-8218-4619-83bc-06d35570ee59.png">

### Question 2
Write a query to create a list of the film titles including their film title, film length and film category name ordered descendingly by the film length. Filter the results to only the movies in the category 'Drama' or 'Sports'.

<img width="1072" alt="question2" src="https://user-images.githubusercontent.com/122455311/221527554-3bae3e21-66fe-486e-825a-a4298fbf6abc.png">

### Question 3
Write a query to create a list of the addresses that are not associated to any customer.

<img width="951" alt="question3" src="https://user-images.githubusercontent.com/122455311/221527638-d430c57f-5cb3-408f-8134-bdf8f8b08a24.png">

### Question 4
Write a query to create a list of the revenue (sum of amount) grouped by a column in the format "country, city" ordered in decreasing amount of revenue.
eg. 	"Poland, Bydgoszcz"		52.88

<img width="945" alt="question4" src="https://user-images.githubusercontent.com/122455311/221527778-6b550618-e3e3-4d01-a05d-1ce82a622704.png">

### Question 5
Write a query to create a list with the average of the sales amount each staff_id has per customer.

<img width="925" alt="question5" src="https://user-images.githubusercontent.com/122455311/221527911-a7dfd8d6-4d11-48d9-a1d5-92431ccb0228.png">

### Question 6
Write a query that shows average daily revenue of all Sundays.

<img width="960" alt="question6" src="https://user-images.githubusercontent.com/122455311/221546110-a99072d1-81b0-4278-a8de-e5e74026404b.png">

### Question 7
Write a query to create a list that shows how much the average customer spent in total (customer life-time value) grouped by the different districts.

<img width="991" alt="question7" src="https://user-images.githubusercontent.com/122455311/221576556-37150b26-9cb4-4352-b050-bd4ffd0205ae.png">

### Question 8
Write a query to list down the highest overall revenue collected (sum of amount per title) by a film in each category. Result should display the film title, category name and total revenue.
eg. 	"FOOL MOCKINGBIRD"		"Action"	175.77
	"DOGMA FAMILY"			"Animation"	178.7
	"BACKLASH UNDEFEATED"	"Children"	158.81

<img width="1075" alt="question8" src="https://user-images.githubusercontent.com/122455311/221528344-93bb33dd-6519-4652-b658-87cff8db06b9.png">

### Question 11
Write a query to count the total number of addresses from the “address” table where the ‘postal_code’ is of the below formats. Use regular expression.
9*1**, 9*2**, 9*3**, 9*4**, 9*5**

<img width="1012" alt="question11" src="https://user-images.githubusercontent.com/122455311/221528523-8807ed03-0e4d-4d21-b4a4-fb73d2e5605c.png">

### Question 13
Write a query to list down the total sales of each staff with each customer from the ‘payment’ table. In the same result, 
list down the total sales of each staff i.e. sum of sales from all customers for a particular staff. Use the ROLLUP command.
Also use GROUPING command to indicate null values.

<img width="1143" alt="question13" src="https://user-images.githubusercontent.com/122455311/221528684-00814766-d6d7-4b40-8283-45cc6c7a4837.png">

### Question 14
 Write a single query to display the customer_id, staff_id, payment_id, amount, amount on immediately previous payment_id, 
 amount on immediately next payment_id ny_sales for the payments from customer_id ‘269’ to  staff_id ‘1’.

<img width="1144" alt="question14" src="https://user-images.githubusercontent.com/122455311/221528814-5b9e54f5-a40a-40a7-9443-791c9ea01ac3.png">

