{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "markdown",
            "source": [
                "SQL Query to retrieve customers and their total spending"
            ],
            "metadata": {
                "azdata_cell_guid": "08758845-aae8-47ee-886d-ca69dd61f733"
            }
        },
        {
            "cell_type": "code",
            "source": [
                "\n",
                "INSERT INTO Customers (CustomerID, FirstName, LastName, Email)\n",
                "VALUES (1, 'John', 'Doe', 'john.doe@example.com'),\n",
                "       (2, 'Jane', 'Smith', 'jane.smith@example.com'),\n",
                "       (3, 'Michael', 'Johnson', 'michael.johnson@example.com'),\n",
                "       (4, 'Emily', 'Brown', 'emily.brown@example.com'),\n",
                "       (5, 'David', 'Wilson', 'david.wilson@example.com');\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "f9abd007-0a06-49ac-b2e8-d91ce186a78a",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.031"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 11
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)\n",
                "VALUES (1, 1, '2024-04-17', 100.00),\n",
                "       (2, 2, '2024-04-18', 150.00),\n",
                "       (3, 3, '2024-04-19', 200.00),\n",
                "       (4, 1, '2024-04-20', 120.00),\n",
                "       (5, 2, '2024-04-21', 180.00);\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e5f74d3b-a8dd-48e1-bb5e-508ad79751ef"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.039"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 12
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO Products (ProductID, ProductName, UnitPrice)\n",
                "VALUES (1, 'Product A', 10.00),\n",
                "       (2, 'Product B', 20.00),\n",
                "       (3, 'Product C', 30.00),\n",
                "       (4, 'Product D', 40.00),\n",
                "       (5, 'Product E', 50.00);\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "7e1a0ef9-9e57-437c-a521-ca04667419f1"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "Msg 2627, Level 14, State 1, Line 1\nViolation of PRIMARY KEY constraint 'PK__Products__B40CC6ED8615C453'. Cannot insert duplicate key in object 'dbo.Products'. The duplicate key value is (1).",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "The statement has been terminated."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.021"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 14
        },
        {
            "cell_type": "code",
            "source": [
                "INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)\n",
                "VALUES (1, 1, 1, 2),\n",
                "       (2, 1, 2, 3),\n",
                "       (3, 2, 3, 1),\n",
                "       (4, 3, 1, 4),\n",
                "       (5, 4, 4, 2);\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "987db45c-c20f-4a0a-9ac6-e755cca108d4"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.033"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 15
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT * FROM Customers"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b5eaa3aa-0c81-4fe6-a058-c8469b606792"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.011"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 18,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "CustomerID"
                                    },
                                    {
                                        "name": "FirstName"
                                    },
                                    {
                                        "name": "LastName"
                                    },
                                    {
                                        "name": "Email"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "CustomerID": "1",
                                    "FirstName": "John",
                                    "LastName": "Doe",
                                    "Email": "john.doe@example.com"
                                },
                                {
                                    "CustomerID": "2",
                                    "FirstName": "Jane",
                                    "LastName": "Smith",
                                    "Email": "jane.smith@example.com"
                                },
                                {
                                    "CustomerID": "3",
                                    "FirstName": "Michael",
                                    "LastName": "Johnson",
                                    "Email": "michael.johnson@example.com"
                                },
                                {
                                    "CustomerID": "4",
                                    "FirstName": "Emily",
                                    "LastName": "Brown",
                                    "Email": "emily.brown@example.com"
                                },
                                {
                                    "CustomerID": "5",
                                    "FirstName": "David",
                                    "LastName": "Wilson",
                                    "Email": "david.wilson@example.com"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>CustomerID</th><th>FirstName</th><th>LastName</th><th>Email</th></tr><tr><td>1</td><td>John</td><td>Doe</td><td>john.doe@example.com</td></tr><tr><td>2</td><td>Jane</td><td>Smith</td><td>jane.smith@example.com</td></tr><tr><td>3</td><td>Michael</td><td>Johnson</td><td>michael.johnson@example.com</td></tr><tr><td>4</td><td>Emily</td><td>Brown</td><td>emily.brown@example.com</td></tr><tr><td>5</td><td>David</td><td>Wilson</td><td>david.wilson@example.com</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 18
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT * from Orders"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "11a960da-7817-4ec0-bb5d-a04b25caba7c"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.028"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 19,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "OrderID"
                                    },
                                    {
                                        "name": "CustomerID"
                                    },
                                    {
                                        "name": "OrderDate"
                                    },
                                    {
                                        "name": "TotalAmount"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "OrderID": "1",
                                    "CustomerID": "1",
                                    "OrderDate": "2024-04-17",
                                    "TotalAmount": "100.00"
                                },
                                {
                                    "OrderID": "2",
                                    "CustomerID": "2",
                                    "OrderDate": "2024-04-18",
                                    "TotalAmount": "150.00"
                                },
                                {
                                    "OrderID": "3",
                                    "CustomerID": "3",
                                    "OrderDate": "2024-04-19",
                                    "TotalAmount": "200.00"
                                },
                                {
                                    "OrderID": "4",
                                    "CustomerID": "1",
                                    "OrderDate": "2024-04-20",
                                    "TotalAmount": "120.00"
                                },
                                {
                                    "OrderID": "5",
                                    "CustomerID": "2",
                                    "OrderDate": "2024-04-21",
                                    "TotalAmount": "180.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>OrderID</th><th>CustomerID</th><th>OrderDate</th><th>TotalAmount</th></tr><tr><td>1</td><td>1</td><td>2024-04-17</td><td>100.00</td></tr><tr><td>2</td><td>2</td><td>2024-04-18</td><td>150.00</td></tr><tr><td>3</td><td>3</td><td>2024-04-19</td><td>200.00</td></tr><tr><td>4</td><td>1</td><td>2024-04-20</td><td>120.00</td></tr><tr><td>5</td><td>2</td><td>2024-04-21</td><td>180.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 19
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT * from Products"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "533773a4-bf89-49bb-bf96-3c48ad2afadb"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.011"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 20,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "ProductID"
                                    },
                                    {
                                        "name": "ProductName"
                                    },
                                    {
                                        "name": "UnitPrice"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "ProductID": "1",
                                    "ProductName": "Product A",
                                    "UnitPrice": "10.00"
                                },
                                {
                                    "ProductID": "2",
                                    "ProductName": "Product B",
                                    "UnitPrice": "20.00"
                                },
                                {
                                    "ProductID": "3",
                                    "ProductName": "Product C",
                                    "UnitPrice": "30.00"
                                },
                                {
                                    "ProductID": "4",
                                    "ProductName": "Product D",
                                    "UnitPrice": "40.00"
                                },
                                {
                                    "ProductID": "5",
                                    "ProductName": "Product E",
                                    "UnitPrice": "50.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>ProductID</th><th>ProductName</th><th>UnitPrice</th></tr><tr><td>1</td><td>Product A</td><td>10.00</td></tr><tr><td>2</td><td>Product B</td><td>20.00</td></tr><tr><td>3</td><td>Product C</td><td>30.00</td></tr><tr><td>4</td><td>Product D</td><td>40.00</td></tr><tr><td>5</td><td>Product E</td><td>50.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 20
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT * from OrderDetails"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c5b2d8e7-0f18-465c-b293-047ab7f859be"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.019"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 21,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "OrderDetailID"
                                    },
                                    {
                                        "name": "OrderID"
                                    },
                                    {
                                        "name": "ProductID"
                                    },
                                    {
                                        "name": "Quantity"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "OrderDetailID": "1",
                                    "OrderID": "1",
                                    "ProductID": "1",
                                    "Quantity": "2"
                                },
                                {
                                    "OrderDetailID": "2",
                                    "OrderID": "1",
                                    "ProductID": "2",
                                    "Quantity": "3"
                                },
                                {
                                    "OrderDetailID": "3",
                                    "OrderID": "2",
                                    "ProductID": "3",
                                    "Quantity": "1"
                                },
                                {
                                    "OrderDetailID": "4",
                                    "OrderID": "3",
                                    "ProductID": "1",
                                    "Quantity": "4"
                                },
                                {
                                    "OrderDetailID": "5",
                                    "OrderID": "4",
                                    "ProductID": "4",
                                    "Quantity": "2"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>OrderDetailID</th><th>OrderID</th><th>ProductID</th><th>Quantity</th></tr><tr><td>1</td><td>1</td><td>1</td><td>2</td></tr><tr><td>2</td><td>1</td><td>2</td><td>3</td></tr><tr><td>3</td><td>2</td><td>3</td><td>1</td></tr><tr><td>4</td><td>3</td><td>1</td><td>4</td></tr><tr><td>5</td><td>4</td><td>4</td><td>2</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 21
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to retrieve customers and their total spending\n",
                "SELECT\n",
                "    c.CustomerID,\n",
                "    c.FirstName,\n",
                "    c.LastName,\n",
                "    c.Email,\n",
                "    SUM(o.TotalAmount) AS TotalSpending\n",
                "FROM\n",
                "    Customers c\n",
                "JOIN\n",
                "    Orders o ON c.CustomerID = o.CustomerID\n",
                "GROUP BY\n",
                "    c.CustomerID,\n",
                "    c.FirstName,\n",
                "    c.LastName,\n",
                "    c.Email\n",
                "HAVING\n",
                "    SUM(o.TotalAmount) > 0;\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "11d27a4b-277f-456a-886d-1a1784055a72"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(3 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.072"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 16,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "CustomerID"
                                    },
                                    {
                                        "name": "FirstName"
                                    },
                                    {
                                        "name": "LastName"
                                    },
                                    {
                                        "name": "Email"
                                    },
                                    {
                                        "name": "TotalSpending"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "CustomerID": "1",
                                    "FirstName": "John",
                                    "LastName": "Doe",
                                    "Email": "john.doe@example.com",
                                    "TotalSpending": "220.00"
                                },
                                {
                                    "CustomerID": "2",
                                    "FirstName": "Jane",
                                    "LastName": "Smith",
                                    "Email": "jane.smith@example.com",
                                    "TotalSpending": "330.00"
                                },
                                {
                                    "CustomerID": "3",
                                    "FirstName": "Michael",
                                    "LastName": "Johnson",
                                    "Email": "michael.johnson@example.com",
                                    "TotalSpending": "200.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>CustomerID</th><th>FirstName</th><th>LastName</th><th>Email</th><th>TotalSpending</th></tr><tr><td>1</td><td>John</td><td>Doe</td><td>john.doe@example.com</td><td>220.00</td></tr><tr><td>2</td><td>Jane</td><td>Smith</td><td>jane.smith@example.com</td><td>330.00</td></tr><tr><td>3</td><td>Michael</td><td>Johnson</td><td>michael.johnson@example.com</td><td>200.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 16
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to calculate total revenue in the year 2022\n",
                "SELECT\n",
                "    SUM(TotalAmount) AS TotalRevenue2022\n",
                "FROM\n",
                "    Orders\n",
                "WHERE\n",
                "    OrderDate >= '2022-01-01' AND OrderDate <= '2022-12-31';\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b4399465-a255-47cf-b9f8-f4745150b087"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(1 row affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.068"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 22,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "TotalRevenue2022"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "TotalRevenue2022": "NULL"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>TotalRevenue2022</th></tr><tr><td>NULL</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 22
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to find the top 5 products by revenue \n",
                "SELECT TOP 5\n",
                "    p.ProductID,\n",
                "    p.ProductName,\n",
                "    SUM(od.Quantity * p.UnitPrice) AS Revenue\n",
                "FROM\n",
                "    OrderDetails od\n",
                "JOIN\n",
                "    Products p ON od.ProductID = p.ProductID\n",
                "GROUP BY\n",
                "    p.ProductID, p.ProductName\n",
                "ORDER BY\n",
                "    Revenue DESC;\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "01bf2e12-4d18-4ee1-bee9-18505cce7654"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(4 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.064"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 24,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "ProductID"
                                    },
                                    {
                                        "name": "ProductName"
                                    },
                                    {
                                        "name": "Revenue"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "ProductID": "4",
                                    "ProductName": "Product D",
                                    "Revenue": "80.00"
                                },
                                {
                                    "ProductID": "2",
                                    "ProductName": "Product B",
                                    "Revenue": "60.00"
                                },
                                {
                                    "ProductID": "1",
                                    "ProductName": "Product A",
                                    "Revenue": "60.00"
                                },
                                {
                                    "ProductID": "3",
                                    "ProductName": "Product C",
                                    "Revenue": "30.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>ProductID</th><th>ProductName</th><th>Revenue</th></tr><tr><td>4</td><td>Product D</td><td>80.00</td></tr><tr><td>2</td><td>Product B</td><td>60.00</td></tr><tr><td>1</td><td>Product A</td><td>60.00</td></tr><tr><td>3</td><td>Product C</td><td>30.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 24
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to find the customer with the highest total spending \n",
                "SELECT TOP 1\n",
                "    c.CustomerID,\n",
                "    c.FirstName,\n",
                "    c.LastName,\n",
                "    c.Email,\n",
                "    SUM(o.TotalAmount) AS TotalSpending\n",
                "FROM\n",
                "    Customers c\n",
                "JOIN\n",
                "    Orders o ON c.CustomerID = o.CustomerID\n",
                "GROUP BY\n",
                "    c.CustomerID, c.FirstName, c.LastName, c.Email\n",
                "ORDER BY\n",
                "    TotalSpending DESC;\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "2696bff0-d657-468b-89ea-954f3c5d395f"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(1 row affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.074"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 25,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "CustomerID"
                                    },
                                    {
                                        "name": "FirstName"
                                    },
                                    {
                                        "name": "LastName"
                                    },
                                    {
                                        "name": "Email"
                                    },
                                    {
                                        "name": "TotalSpending"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "CustomerID": "2",
                                    "FirstName": "Jane",
                                    "LastName": "Smith",
                                    "Email": "jane.smith@example.com",
                                    "TotalSpending": "330.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>CustomerID</th><th>FirstName</th><th>LastName</th><th>Email</th><th>TotalSpending</th></tr><tr><td>2</td><td>Jane</td><td>Smith</td><td>jane.smith@example.com</td><td>330.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 25
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to calculate the average order value (AOV) for each year from 2020 to 2022\n",
                "SELECT\n",
                "    YEAR(OrderDate) AS OrderYear,\n",
                "    AVG(TotalAmount) AS AverageOrderValue\n",
                "FROM\n",
                "    Orders\n",
                "WHERE\n",
                "    OrderDate >= '2020-01-01' AND OrderDate <= '2022-12-31'\n",
                "GROUP BY\n",
                "    YEAR(OrderDate)\n",
                "ORDER BY\n",
                "    OrderYear;\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "74dddb59-f8a7-4ab1-97be-5806d929c1f4"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(0 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.039"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 26,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "OrderYear"
                                    },
                                    {
                                        "name": "AverageOrderValue"
                                    }
                                ]
                            },
                            "data": []
                        },
                        "text/html": "<table><tr><th>OrderYear</th><th>AverageOrderValue</th></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 26
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to calculate the total number of products sold per product category\n",
                "\n",
                "SELECT\n",
                "    p.ProductName,\n",
                "    SUM(od.Quantity) AS TotalProductsSold\n",
                "FROM\n",
                "    OrderDetails od\n",
                "JOIN\n",
                "    Products p ON od.ProductID = p.ProductID\n",
                "WHERE\n",
                "    p.ProductName IN ('Product A', 'Product B', 'Product C', 'Product D', 'Product E')\n",
                "GROUP BY\n",
                "    p.ProductName;\n",
                "\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b095e55d-51fd-48a9-bf38-dd8253b6d1d4"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(4 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.019"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 30,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "ProductName"
                                    },
                                    {
                                        "name": "TotalProductsSold"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "ProductName": "Product A",
                                    "TotalProductsSold": "6"
                                },
                                {
                                    "ProductName": "Product B",
                                    "TotalProductsSold": "3"
                                },
                                {
                                    "ProductName": "Product C",
                                    "TotalProductsSold": "1"
                                },
                                {
                                    "ProductName": "Product D",
                                    "TotalProductsSold": "2"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>ProductName</th><th>TotalProductsSold</th></tr><tr><td>Product A</td><td>6</td></tr><tr><td>Product B</td><td>3</td></tr><tr><td>Product C</td><td>1</td></tr><tr><td>Product D</td><td>2</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 30
        },
        {
            "cell_type": "code",
            "source": [
                "--  Query to find the product with the highest quantity sold overall\n",
                "SELECT TOP 1\n",
                "    p.ProductName,\n",
                "    SUM(od.Quantity) AS TotalQuantity\n",
                "FROM\n",
                "    OrderDetails od\n",
                "JOIN\n",
                "    Products p ON od.ProductID = p.ProductID\n",
                "GROUP BY\n",
                "    p.ProductName\n",
                "ORDER BY\n",
                "    TotalQuantity DESC;\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "dc9c763a-14cc-4142-ab22-b5145e26bd16"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(1 row affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.061"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 32,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "ProductName"
                                    },
                                    {
                                        "name": "TotalQuantity"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "ProductName": "Product A",
                                    "TotalQuantity": "6"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>ProductName</th><th>TotalQuantity</th></tr><tr><td>Product A</td><td>6</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 32
        }
    ]
}