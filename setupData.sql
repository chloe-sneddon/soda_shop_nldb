INSERT INTO menu_item (menu_item_id, item_name, price, base_soda) VALUES
(1, 'Strawberry Lime Fizz', 450, 'Lemon-lime soda'),
(2, 'Peach Cream Pop', 500, 'Cola'),
(3, 'Cherry Vanilla Splash', 475, 'Root beer'),
(4, 'Mango Citrus Cooler', 525, 'Lemon-lime soda'),
(5, 'Raspberry Candy Cloud', 550, 'Club soda'),
(6, 'Classic Cola Float', 600, 'Cola');

INSERT INTO Ingredient (id, flavor, ingredient_type) VALUES
(1, 'Strawberry', 'syrup'),
(2, 'Lime', 'fresh_fruit'),
(3, 'Peach', 'syrup'),
(4, 'Vanilla', 'cream'),
(5, 'Cherry', 'syrup'),
(6, 'Orange', 'fresh_fruit'),
(7, 'Raspberry', 'syrup'),
(8, 'Gummy Bears', 'candy'),
(9, 'Whipped Cream', 'cream'),
(10, 'Caramel', 'syrup');

INSERT INTO employee (employee_id, first_name, last_name, hourly_pay) VALUES
(1, 'Maya', 'Chen', 1600),
(2, 'Ethan', 'Brooks', 1750),
(3, 'Olivia', 'Patel', 1650);

INSERT INTO customer (customer_id, first_name, last_name, birthdate, phone_number) VALUES
(1, 'Laura', 'Stevenson', '1998-04-12', 8015550134),
(2, 'Bob', 'Jones', '1985-11-03', 3855550172),
(3, 'Charlie', 'Brown', '2001-07-21', 8015550198),
(4, 'Sydney', 'Smith', '1995-02-16', 4355550126),
(5, 'Jordan', 'Malone', '2003-09-08', 8015550147);

INSERT INTO receipt (receipt_id, employee_id, customer_id, subtotal, tip, tax) VALUES
(1, 1, 1, 950, 200, 76),
(2, 2, 2, 1075, 150, 86),
(3, 1, 3, 1325, 250, 106),
(4, 3, 4, 600, 100, 48),
(5, 2, 5, 1025, 175, 82);

INSERT INTO menu_item_ingredient (menu_item_id, ingredient_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 2),
(2, 4, 1),
(3, 5, 2),
(3, 4, 1),
(4, 6, 2),
(4, 7, 1),
(5, 7, 2),
(5, 8, 1),
(5, 9, 1),
(6, 4, 1),
(6, 10, 1),
(6, 9, 1);

INSERT INTO receipt_item (receipt_item_id, menu_item_id, receipt_id, price_at_sale) VALUES
(1, 1, 1, 450),
(2, 2, 1, 500),
(3, 4, 2, 525),
(4, 3, 2, 475),
(5, 5, 3, 550),
(6, 1, 3, 450),
(7, 2, 3, 325),
(8, 6, 4, 600),
(9, 3, 5, 475),
(10, 4, 5, 550);

INSERT INTO receipt_item_addin (receipt_item_id, ingredient_id, quantity) VALUES
(1, 8, 1),
(2, 9, 1),
(3, 2, 1),
(5, 8, 2),
(6, 5, 1),
(7, 10, 1),
(9, 4, 1),
(10, 7, 1);