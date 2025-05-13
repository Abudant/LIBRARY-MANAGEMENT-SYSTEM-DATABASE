# LIBRARY-MANAGEMENT-SYSTEM-DATABASE

#Project Title:
Library Management System (MySQL-Based DBMS)

#Description:
This project is a **relational database system** designed for managing core operations of a library. It allows for the efficient tracking of books, members, staff, and borrowing activities. The database supports functionalities such as:
- Storing and managing book inventories
- Registering members and staff
- Logging borrowing and returning of books
- Enforcing referential integrity through foreign key constraints

The database schema includes:
- `Books`: Details about books available in the library
- `Members`: Registered users who can borrow books
- `Staff`: Library personnel managing operations
- `Borrowing`: Records of all book borrow and return transactions

## How to Run / Setup the Project

1. **Requirements**:
   - MySQL Server (e.g., MySQL 8+)
   - MySQL client (CLI, Workbench, or VS Code extension)


2. **Steps**:
   - Clone this repository or download the `.sql` file:
     ```bash
     git clone https://github.com/yourusername/library-management-mysql.git
     ```
   - Open your MySQL client and execute the SQL file:
     ```sql
     SOURCE path_to_your_project/Librarymanagementsystem.sql;
     ```
   - Ensure the `library_management` database is selected:
     ```sql
     USE library_management;
     ```

3. **Alternative (Workbench/VS Code)**:
   - Open the `Librarymanagementsystem.sql` file
   - Run all the queries using the play/run button

4. **Done!** You can now start querying the tables.

## ERD (Entity-Relationship Diagram)
https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=ERD%20lIBRARY%20MANAGEMENT%20SYSTEM%20DATABASE.drawio&dark=auto#R%3Cmxfile%3E%3Cdiagram%20id%3D%22C5RBs43oDa-KdzZeNtuy%22%20name%3D%22Page-1%22%3E7ZlLU9swEIB%2FjY9lbCtOzJEQSl8wUNrS9tJRYsXWIFuuLOfBr6%2BEJL8TG4aUTtsLSKvVStZ%2Bq12BBU7jzTmDaXRBA0Qs1w42FphZrjvxffFTCrZKMHImShAyHCiRUwpu8D3SQltLcxygrKbIKSUcp3XhgiYJWvCaDDJG13W1JSX1VVMYopbgZgFJW3qLAx4pqe9OSvkbhMPIrOyMj9VIDI2y%2FpIsggFdV0TgzAKnjFKuWvHmFBF5duZcbt9ub8mHu%2FH5u%2BvsJ%2Fw8ff%2Fp8ssrZez1Y6YUn8BQwp%2FXNFCmV5Dk%2Brwsd0zEItO5aISyMaX0LhMdGKeil8wz%2BctoieUKxWImq0798Xa2a3Kp%2BAlz4a9etZOcR5T1613lc4IXkGOa%2FJhBjoxGgFdG5TqHCcd8W%2FmQyqh2ON8aihjNkwDJk3TE8DrCHN2kcCFH1yJshCziMdHDS5pwHQiOoGQaEphJim3RzjijdwWJUrvAyi4W7vW0JmKFGEebCufa8%2BeIxogz8XG2CWPNsA5ioLvrMiIcI4tq0aCFUEdhWFguSRMNDdsjwJv0g3eB4jkSPrWHENQFpDIwCMBLGA%2FhLwgYynYGQwXAiCYD7KkNsizCqeb0L8Nu5Lwgd%2FcXq%2FG1jyJvvHz37Ut6%2FP2nfanvyL3c3XC4XO674GoXRUv0MH0PdM2bpmVgH4u9k69ohuW992QDZzHEZL92z13ZgynMUpXnl3gj0Z7ugGooj7vhs5vwddDndtHnHoq%2B0ZB0K4senIRPu%2FPU9IGX5uD8%2FIibtA%2F%2F6upyqyZB9yh%2FRDxnSfct%2BacA5zZuO7cLuFEXcKNDAdeVZhunh5Lg5IEZMEtk1qqdXZmAZJoQh8O2X0XnlX1k256RfJPDRyMwNoLZpjphtq32rhDD4ttEYq%2BmHhS0qvhhuYhDFqJ9epNul1Vc4nV4xMgYIqKMXNX31uUlvcIVxWLXBRHA3UGEMZHRnC2QnlUt3huGRqDHkDqHliHhWbitqKVSIRu%2BYb%2F2phANZbAEsjjSpzPqPy%2BjG8y%2F6hHZ1nB6nu6XbMrOtkm2fVTHug9pYeSZiVZI9L%2FZquTvTjYvRr7fANb7w8l3R%2FvIb6v7vz9Qjg8SKJp4HSrOsDCRCQCAegLwS8FvTADVcNlXc%2FWGi239D5dHhEtjw6bYPmgAmPqqEgGGgjIERFHHGwUgwWEi2gsBlMRuKks%2FvIDkRA%2FEOAjk9Kl43eN7OH8wJdnUpyDselPLm0lbORcvLPXILt7Vp5RQVobcEhPSEFmHKjkbbxyvXXF2va%2FBoepNx2l56OLf9hCYePVA8V%2FYQ%2B7%2FGGrEkFf3EAAv7aL2X%2BX%2FcRc1gwh4B3OR6Jb%2F0lGJq%2Fy%2FGDj7BQ%3D%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E

> The ERD shows the relationships between all tables including Primary Keys, Foreign Keys, and Cardinalities (1-M, M-1).

---

## Repo Contents
- `Librarymanagementsystem.sql` – Full SQL script for creating and setting up the database
- `README.md` – Documentation on how to use the project
- `A_Entity-Relationship_Diagram_(ERD)_in_the_digital.png` – Visual representation of the database structure

---

## Author
Created by Abundant Karanja 
Contact:abundantk@gmail.com


