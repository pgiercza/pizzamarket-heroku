---
--- INGREDIENTS
---
CREATE TABLE ingredients (
                             id int NOT NULL,
                             name VARCHAR ( 50 ) UNIQUE NOT NULL
);
INSERT INTO ingredients (id, name)
VALUES (1, 'Sos pomidorowy'),
       (2, 'Ser gouda'),
       (3, 'Ser mozzarella'),
       (4, 'Pieczarki'),
       (5, 'Salami'),
       (6, 'Szynka'),
       (7, 'Parmezan'),
       (8, 'Camembert'),
       (9, 'Sos śmietanowy'),
       (10, 'Boczek'),
       (11, 'Cebula');


---
--- PIZZAS
---
CREATE TABLE pizzas (
                        id int NOT NULL,
                        name VARCHAR ( 50 ) UNIQUE NOT NULL,
                        price decimal NOT NULL
);
INSERT INTO pizzas (id, name, price)
VALUES (1, 'Pizza Margherita', 25.90),
       (2, 'Pizza Funghi', 29.90),
       (3, 'Pizza Salome', 30.90),
       (4, 'Pizza Capriciosa', 32.90),
       (5, 'Pizza Quattro Formaggi', 32.90),
       (6, 'Pizza Carbonara', 33.90);

---
--- PIZZA INGREDIENTS
---
CREATE TABLE pizza_ingredients (
                                   pizza_id int NOT NULL,
                                   ingredient_id int NOT NULL
);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 1),
       (2, 2),
       (2, 3),
       (2, 4),
       (3, 1),
       (3, 2),
       (3, 3),
       (3, 5),
       (4, 1),
       (4, 2),
       (4, 3),
       (4, 4),
       (4, 6),
       (5, 1),
       (5, 2),
       (5, 3),
       (5, 7),
       (5, 8),
       (6, 9),
       (6, 2),
       (6, 3),
       (6, 10),
       (6, 11);


CREATE TABLE orders (
                        id int NOT NULL,
                        pizza_name varchar(50) NOT NULL,
                        order_address_id varchar NOT NULL
);


CREATE TABLE order_addresses (
                                 id int NOT NULL,
                                 first_name varchar(50) NOT NULL,
                                 last_address_id varchar NOT NULL,
                                 street varchar NOT NULL,
                                 postal_code varchar NOT NULL,
                                 city varchar NOT NULL
);


