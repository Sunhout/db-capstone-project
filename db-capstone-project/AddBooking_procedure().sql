SELECT * FROM Bookings;

DELIMITER //
CREATE PROCEDURE AddBooking(_bookingid INT, _bookingdate DATE, _tableno INT, _customerid INT, _bookingslot TIME, _staffid INT)
BEGIN
DECLARE Confirmation VARCHAR(100);
INSERT INTO Bookings VALUES(_bookingid, _bookingdate, _tableno, _customerid, _bookingslot, _staffid);
SET Confirmation = 'New booking added';
SELECT Confirmation;
END //
DELIMITER ;

CALL AddBooking(22, '2023-01-03', 3, 1, '19:00:00', 1);