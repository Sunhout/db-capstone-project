DELIMITER //
CREATE PROCEDURE AddValidBooking(_bookingid INT, _bookingdate DATE, _tableno INT, _customerid INT, _bookingslot TIME, _staffid INT)
BEGIN
DECLARE booking_count INT;
DECLARE booking_status VARCHAR(255);
START TRANSACTION;
SELECT COUNT(*) INTO booking_count FROM Bookings WHERE BookingDate = _bookingdate AND TableNo = _tableno;
IF booking_count = 0 THEN
INSERT INTO Bookings VALUES(_bookingid, _bookingdate, _tableno, _customerid, _bookingslot, _staffid);
SET booking_status = CONCAT('Table ', _tableno, ' is booked - booking confirmed');
COMMIT;
ELSE 
SET booking_status = CONCAT('Table ', _tableno, ' is booked - booking cancelled');
ROLLBACK;
END IF;
SELECT booking_status AS 'Booking status';
END //
DELIMITER ;

CALL AddValidBooking(21, '2023-11-11', 2, 1, '19:00:00', 1);

DROP PROCEDURE AddValidBooking;


SELECT * FROM Bookings;

