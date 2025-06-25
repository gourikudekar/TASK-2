# TASK-2
# Task 2: Data Insertion and Handling Nulls

Objective
Practice `INSERT`, `UPDATE`, and `DELETE` operations with constraints, default values, and NULL handling in SQL using a relational database schema.

## Tools Used
- DB Fiddle (MySQL)
- GitHub
 ## Description
Created a database named `CourseHub` with three core tables:
- `trainer` – Stores trainer profiles with `CHECK` constraints on rating and experience
- `course` – Holds course data with default learning mode and fee constraints
- `learner` – Maps learners to courses and trainers using `FOREIGN KEY` constraints

### Tasks Performed
- Inserted **20 records** each into `trainer`, `course`, and `learner`
- Applied `UPDATE` operations for rating boost, email domain update, YOE increment, and online course discounts
- Used a condition in `UPDATE` to **prevent constraint violations**
- Deleted learners with scores < 70
- Resolved safe update mode and foreign key errors with `SET SQL_SAFE_UPDATES = 0` and careful ordering

### Key Concepts Applied
- `AUTO_INCREMENT`, `DEFAULT`, `NOT NULL`, `CHECK`, `FOREIGN KEY`
- `SET SQL_SAFE_UPDATES`, `REPLACE()`, safe discounting
- Data integrity and constraint troubleshooting

