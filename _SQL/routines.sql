DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_by_product_id`(IN `id` INT)
    NO SQL
select * from plants natural join product where product_id = id$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_plants`()
    NO SQL
SELECT * from plants join product where plants.product_id = product.product_id$$
DELIMITER ;