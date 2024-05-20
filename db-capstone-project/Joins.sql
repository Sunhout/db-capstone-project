SELECT C.CustomerID, CONCAT(C.FirstName, ' ', C.LastName) AS FullName, 
O.OrderID, O.TotalCost, M.MenuName, Mi.CourseName, Mi.StarterName
FROM Customers AS C
INNER JOIN Bookings
USING(CustomerID)
INNER JOIN Orders AS O
USING(BookingID)
INNER JOIN Menus AS M
USING(MenuID)
INNER JOIN MenuItems AS Mi
USING(MenuItemID)
WHERE O.TotalCost > 150
ORDER BY TotalCost;





