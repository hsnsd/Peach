DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteProduct`(IN `id` INT(11))
    NO SQL
BEGIN
DELETE from product where product_id = id;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePlant`(IN `id` INT(11))
    NO SQL
DELETE from plants where product_id = id$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addProduct`(IN `name` VARCHAR(191), IN `photo` VARCHAR(191), IN `category_id` INT(11), IN `Unit_price` INT(11))
    NO SQL
INSERT into product (Name, Photo, category_id, Unit_price)
        values (name, photo, category_id, Unit_price )$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPlant`(IN `product_id` INT(11), IN `height` INT(11), IN `width` INT(11), IN `light` VARCHAR(25), IN `water` VARCHAR(25), IN `plant_type` VARCHAR(25), IN `life` VARCHAR(25))
    NO SQL
INSERT into plants  (product_id, height,width,light,water,plant_type,life)
      values ( product_id, height, width, light, water, plant_type, life)$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPlant`()
    NO SQL
select * from plants natural join product$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductCount`()
    NO SQL
select max(product_id)+1 as count from product$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_by_product_id`(IN `id` INT)
    NO SQL
select * from plants natural join product where product_id = id$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_seeds_by_product_id`(IN `id` INT(11))
    NO SQL
select * from seeds natural join product where product_id = id$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_plants`()
    NO SQL
SELECT * from plants join product where plants.product_id = product.product_id$$
DELIMITER ;
