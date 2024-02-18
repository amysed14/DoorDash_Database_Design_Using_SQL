USE doordash;
# 1. How many customers does Doordash have?

SELECT DISTINCT COUNT(*) FROM Customer;

# 2. Display all customers' names and order IDs and order date & time including
# the customers who have not ordered on DoorDash
SELECT CONCAT(C.First_name, ' ', C.Last_name) AS CustomerName, O.OrderID, O.Dates
FROM Customer AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID;

# 3. Display the 5 star rated restaurants on Doordash
SELECT restaurant.restaurantname, Review.RestaurantRating
FROM Restaurant, Review, Orders, Menu
WHERE Restaurant.RestaurantID = Menu.RestaurantID AND
Menu.MenuID = Orders.MenuID AND
Orders.OrderID = Review.OrderID  AND
Review.RestaurantRating = 5;

# 4. What is the cheapest food Item?
SELECT FoodName, FoodNameDescription AS Description, Amount
FROM Menu
ORDER BY Amount
LIMIT 3;

# 5. Display food names which have the word ‘spicy’ in the description
SELECT RestaurantName, FoodName, FoodNameDescription AS Description
FROM Menu, Restaurant
WHERE FoodNameDescription LIKE '%spicy%'
AND Menu.RestaurantID = Restaurant.RestaurantID;

# 6. Display all the agents and their ratings
(SELECT DeliveryAgent.First_name, DeliveryAgent.Last_name, Review.AgentRating
FROM DeliveryAgent LEFT JOIN Review 
ON DeliveryAgent.AgentID = Review.AgentID)
UNION
(SELECT DeliveryAgent.First_name, DeliveryAgent.Last_name, Review.AgentRating
FROM DeliveryAgent RIGHT JOIN Review
ON DeliveryAgent.AgentID = Review.AgentID);

# 7. Insert new customer with trigger if email is NULL.
CREATE TABLE CustomerLOG (
TimeAtEntry TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
ActionLOG TEXT
);

DELIMITER //
CREATE TRIGGER tr_add_new_cus
AFTER INSERT ON Customer
FOR EACH ROW
BEGIN
IF NEW.email IS NULL
THEN
INSERT INTO CustomerLOG (ActionLOG) VALUES  ('Email not entered');
END IF;
END //
DELIMITER ;

INSERT INTO Customer VALUES 
(111, 'Kim', 'Kardashian', 3042298192, NULL);

Select * from CustomerLOG;
# 8. Display the restaurants of a particular cuisine type using Stored Procedures.
## Stored procedure
DELIMITER //
CREATE PROCEDURE GetRestaurants(all_rest varchar(10))
BEGIN
IF all_rest = 'Indian' THEN
	SELECT * FROM Restaurant WHERE CuisineType = 'Indian';
ELSEIF all_rest = 'Chinese' THEN 
	SELECT * FROM Restaurant WHERE CuisineType = 'Chinese';
ELSEIF all_rest = 'Japanese' THEN 
	SELECT * FROM Restaurant WHERE CuisineType = 'Japanese';
ELSE
	SELECT * FROM Restaurant;
END IF;
END //
DELIMITER ;

CALL GetRestaurants('Indian');
CALL GetRestaurants('Chinese');
CALL GetRestaurants('Japanese');

#9. Create View to show the total number of restaurants for all cuisine types.
CREATE VIEW rest_count AS
SELECT CuisineType, COUNT(*) AS NumOfRestaurants
FROM Restaurant
GROUP BY CuisineType;

SELECT * FROM rest_count;



