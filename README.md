AdventureWorks Sales Analysis

🔍 Project Overview
This project analyzes sales data from the AdventureWorks2022 database using T-SQL. It focuses on extracting key insights about products, customers, and sales territories by creating views, analytical queries, stored procedures, and performance optimizations.

🧰 Technologies Used
- Microsoft SQL Server 2022
- SQL Server Management Studio (SSMS)
- T-SQL

📂 File Structure
sql/
├── create_view.sql -- Sales summary view
├── analysis_queries.sql -- Analytical queries for reporting
├── sales_procedure.sql -- Stored procedure with parameters
├── indexes_and_optimization.sql -- Index creation and performance analysis

✅ How to Use

1. Restore the `AdventureWorks2022` database on your SQL Server.
2. Run `create_view.sql` to create the base view for analysis.
3. Use `analysis_queries.sql` to generate reports by product, region, and customer.
4. Execute `sales_procedure.sql` to create a reusable procedure for top product revenue.
5. Test performance in `indexes_and_optimization.sql` using `STATISTICS IO` and `TIME`.

📌 Key Concepts Practiced
- Complex joins between sales, customers, and product tables
- Reusable views for cleaner querying
- Aggregation and filtering for business reporting
- Stored procedures with input parameters
- Performance tuning using indexes and query stats

Ivan Kolev
