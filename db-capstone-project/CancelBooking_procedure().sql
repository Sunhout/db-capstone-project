DELIMITER //
CREATE PROCEDURE CancelBooking(_bookingid INT)
BEGIN
DECLARE Confirmation VARCHAR(100);
DELETE FROM Bookings
WHERE BookingID = _bookingid;
SET Confirmation = CONCAT('Booking ', _bookingid, ' is cancelled');
SELECT Confirmation;
END //
DELIMITER ;

CALL CancelBooking(20);

SELECT * FROM Bookings;