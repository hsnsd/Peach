CREATE TABLE `products`(
    `id` int(10) NOT NULL,
    `name` varchar(255),
    `photo` varchar(255),
    `description` varchar(255)
);

INSERT INTO `products` VALUES 
(1, 'Sun Flower', 'flower.jpg', 'This is a flower'),
(2, 'Garden', 'gardener.jpg', 'This is a gardener'),
(3, 'Rose', 'rose.jpg', 'This is a gardener');


CREATE TABLE `seeds`(
    `product_id` int(10) NOT NULL,
    `seed_name` varchar(255),
    `photo` varchar(255),
    `description` varchar(255)
    'sowing_type' date
    'reaping_time' date
    'sowing_method' varchar(50)
    );
