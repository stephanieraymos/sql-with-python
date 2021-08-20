# Prerequisites

- draw.io or pencil + paper
- `docker`

# Part 1: Create ER Diagram from requirements

Your client, Northwind Traders, imports and exports specialty foods from around the world. They need a database to keep track of their business and have enlisted your help in creating a technical solution for them. They hand you this list of requirements (with certain constraints in parenthesis):

Product Category
- Name (required)
- Description
- Picture
  - Note: Not sure how to store this? Think back to how we stored album artwork

Customer
- Primary Key ID is a unique 5 character-long string (required)
- Company Name (required)
- 0 or more Demographic Types
  - Each demographic should have a description
- Has multiple Orders
- Purchases Product(s)
- Quantity (required)
- Discount (required)

Order
- Belongs to at most 1 customer
- Order Date
- Shipped by at most 1 Shipper
- Worked on by at most 1 Employee

Shipper
- Name (required)
- Phone
  - Should this be a number or a string? Hmm, might need to check stack overflow...

Employee
- Works on Orders
- First Name (required)
- Last Name (required)
- Reports to at most 1 Employee
- Works in 0 or more territories

Product
- Name (required)
- Discontinued or not (required)
  - Note from client: Please track this as an integer of 1 or 0, 1 meaning discontinued and 0 meaning active, for compatibility with one of our other systems
- Belongs to  at most 1 Category
- Supplied by at most 1 supplier

Supplier
- Name (required)

Territory
- Primary Key ID is a unique 5 character-long string (required)
- Description (required)
- Must belong to 1 Region (required)
- Worked by Employees

Region
- Description (required)
- Has territories

U.S. State
- Name
- Abbreviation (Exactly 2 characters long)

## Submitting

If using the drawio VS code extenstion, click File > Export and select the .png option. It may help to change the background of your diagram to black, or another color for contrast.

If using pen and paper, please take a photo.

Upload this image to moodle.

Solution here:
https://github.com/nucamp/python-c2/blob/main/week1/workshop/part1_solution.png

# Part 2:

Create database tables based on ER diagram from Part 1
(Note to instructors: if a student puts in effort but still struggles with Part 1, give them a solution so they can move on)

Students can test their SQL using this command and refreshing PgAdmin.

```sql
cat ./part2_template.sql | docker exec -i pg_container psql -U postgres -d week1
```

## Submitting

Upload the filled in template file to moodle.

Starter code here:  
https://github.com/nucamp/python-c2/blob/main/week1/workshop/part2_template.sql

Solution here:  
https://github.com/nucamp/python-c2/blob/main/week1/workshop/part2_solution.sql
