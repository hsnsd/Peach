CREATE TABLE `products`(
    `id` int(10) NOT NULL,
    `name` varchar(255),
    `photo` varchar(255),
    `description` varchar(255)
);

INSERT INTO `products` VALUES 
(1, 'Sun Flower', 'flower.jpg', 'This is a flower'),
(2, 'Gardnener', 'gardener.jpg', 'This is a gardener');