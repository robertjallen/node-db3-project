-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
              SELECT * from "Product"
              JOIN "category" ON "Product"."CategoryId" = "Category"."id" 


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

      SELECT  "o"."ShipVia", "o"."Id", "o"."OrderDate", "s"."CompanyName"

      from "Order" AS o

      JOIN "Shipper" AS s 

      ON "s"."Id" = "o"."ShipVia" 

      where "o"."OrderDate" < '2012-08-12'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT  "o"."OrderId", "o"."Quantity"

    from "OrderDetail" as "o"


    where "o"."OrderId" = 10251


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

    SELECT "o"."Id", "o"."ShipName", "e"."LastName"

    from "order" as "o"

    JOIN "Employee" as "e"

    ON "o"."EmployeeId" = "e"."Id"
