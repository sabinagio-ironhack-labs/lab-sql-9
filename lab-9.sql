# In this lab we will find the customers who were active in consecutive months of May and June. 
# Follow the steps to complete the analysis.
USE sakila;

# 1. Create a table rentals_may to store the data from rental table with information for the month of May.
# 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
CREATE TABLE sakila.rentals_may
	AS (SELECT * FROM sakila.rental WHERE MONTH(rental_date) = 5);
    
# 3. Create a table rentals_june to store the data from rental table with information for the month of June.
# 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
CREATE TABLE sakila.rentals_june
	AS (SELECT * FROM sakila.rental WHERE MONTH(rental_date) = 6);

# 5. Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(rental_id) AS rental_count FROM sakila.rentals_may GROUP BY customer_id;

# 6. Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(rental_id) AS rental_count FROM sakila.rentals_june GROUP BY customer_id;

