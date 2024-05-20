DELIMITER //
CREATE PROCEDURE CheckBooking(IN _bookingdate DATE, IN _tableno INT)
BEGIN
DECLARE booking_count INT;
DECLARE booking_status VARCHAR(255);
SELECT COUNT(*) INTO booking_count FROM Bookings WHERE BookingDate = _bookingdate AND TableNo = _tableno;
IF booking_count > 0 THEN
SET booking_status = CONCAT('Table ', _tableno, ' is already booked');
ELSE 
SET booking_status = CONCAT('Table ', _tableno, ' is available');
END IF;
SELECT booking_status AS 'Booking status';
END //
DELIMITER ;

drop procedure CheckBooking;

CALL CheckBooking('2022-10-09', 4);
SELECT * FROM Bookings;