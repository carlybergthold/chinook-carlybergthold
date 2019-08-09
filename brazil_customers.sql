SELECT CustomerId, Concat(FirstName, ' ', LastName) AS FullName, Country 
FROM Customer
WHERE Country = 'Brazil'