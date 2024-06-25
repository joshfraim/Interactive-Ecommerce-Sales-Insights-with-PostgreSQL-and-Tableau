-- creating a table
CREATE TABLE sales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATE,
    UnitPrice FLOAT,
    CustomerID INT,
    Country VARCHAR(50)
);

SELECT *
FROM sales;

-- loading data from source
COPY sales FROM 'D:\DATA ANALYST\DATA ANALYTICS LESSONS\PROJECTS\my_project\data.csv' 
WITH (FORMAT CSV, HEADER, DELIMITER ',', ENCODING 'ISO-8859-1');

SHOW datestyle;
SET datestyle = 'ISO, MDY';

--(DATA CLEANING AND PREPARATION)

--deleting null values
DELETE FROM sales 
WHERE customerid IS NULL;

--identifying negative values
SELECT * FROM sales WHERE quantity < 0 OR unitprice < 0;

--fixing the negative values
UPDATE sales SET quantity = ABS(quantity) WHERE quantity < 0;

SELECT * FROM sales WHERE unitprice = 0;

-- EXPLORATORY DATA ANALYSIS(EDA)

-- Summary statistics
SELECT 
    COUNT(*) AS total_orders,
    SUM(quantity * unitprice) AS total_sales,
    AVG(quantity * unitprice) AS avg_order_value,
    MAX(quantity * unitprice) AS max_order_value,
    MIN(quantity * unitprice) AS min_order_value
FROM sales;

-- Sales trend over time
SELECT 
    InvoiceDate,
    SUM(Quantity * UnitPrice) AS daily_sales
FROM sales
GROUP BY InvoiceDate
ORDER BY InvoiceDate;

--SEGMENTATION (RFM ANALYSIS)

-- Recency: Days since last purchase

SELECT 
    CustomerID, 
    EXTRACT(DAY FROM AGE(CURRENT_DATE, MAX(InvoiceDate))) AS recency
FROM sales
GROUP BY CustomerID
ORDER BY recency ASC;

-- Frequency: Total number of purchases
SELECT 
    CustomerID, 
    COUNT(*) AS frequency
FROM sales
GROUP BY CustomerID
ORDER BY frequency DESC;

-- Monetary: Total amount spent
SELECT 
    CustomerID, 
    SUM(Quantity * UnitPrice) AS monetary
FROM sales
GROUP BY CustomerID
ORDER BY monetary DESC;