DELIMITER //
CREATE PROCEDURE UpdateBooking(_bookingid INT, _bookingdate DATE)
BEGIN
DECLARE Confirmation VARCHAR(100);
UPDATE Bookings 
SET BookingDate = _bookingdate 
WHERE BookingID = _bookingid;
SET Confirmation = CONCAT('Booking ', _bookingid, ' is updated');
SELECT Confirmation;
END //
DELIMITER ;

CALL UpdateBooking(1, '2024-05-18');

SELECT * FROM Bookings;

