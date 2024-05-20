DELIMITER //
CREATE PROCEDURE CancelOrder(IN _orderid INT)
BEGIN
DECLARE confirmation VARCHAR(100);
DELETE FROM Orders
WHERE OrderID = _orderid;
SET confirmation = CONCAT('Order ', _orderid, ' is cancelled');
SELECT confirmation AS Confirmation;
END //
DELIMITER ;

SELECT * FROM Orders;

CALL CancelOrder(8);