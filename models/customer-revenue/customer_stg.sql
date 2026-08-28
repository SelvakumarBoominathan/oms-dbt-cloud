{{config(materialized='view')}}


SELECT
    CustomerID,
    FirstName,
    Lastname,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM 
    {{ source('landing', 'customers')}}