-- Insert into trainer
INSERT INTO trainer (t_name, expertise, rating, YOE) VALUES
('Amit Sharma', 'Data Science', 4.5, 5),
('Sneha Rao', 'Web Development', 4.2, 4),
('Rakesh Nair', 'Machine Learning', 4.7, 7),
('Pooja Iyer', 'Cloud Computing', 4.3, 6),
('Anil Mehta', 'Cybersecurity', 4.0, 5),
('Ritu Singh', 'SQL & Databases', 4.6, 8),
('Nikhil Desai', 'Python', 4.8, 10),
('Divya Patel', 'AI & ML', 4.9, 12),
('Sameer Joshi', 'Excel Analytics', 4.1, 3),
('Neha Kulkarni', 'Power BI', 4.4, 4),
('Manish Jain', 'Data Structures', 4.0, 5),
('Kavita Das', 'Front-end Development', 4.3, 6),
('Suresh Pawar', 'Back-end Development', 3.9, 3),
('Ananya Sen', 'Statistics', 4.6, 9),
('Rajiv Khanna', 'Big Data', 4.2, 4),
('Rina Bhatt', 'Ethical Hacking', 4.5, 7),
('Siddharth Roy', 'Linux Admin', 4.0, 6),
('Meera Nambiar', 'Data Analysis', 4.7, 8),
('Vikas Arora', 'Project Management', 4.1, 5),
('Komal Jain', 'R Programming', 4.2, 6);

-- Insert into course
INSERT INTO course (c_name, fees, mode_of_learning) VALUES
('Data Science Bootcamp', 75000, 'Online'),
('Full Stack Web Dev', 68000, 'Offline'),
('Advanced Machine Learning', 85000, 'Online'),
('Cloud Architecture', 90000, 'Offline'),
('Cybersecurity Basics', 60000, 'Online'),
('SQL Mastery', 58000, 'Online'),
('Python Programming', 52000, 'Offline'),
('AI for Everyone', 70000, 'Online'),
('Excel for Business', 50000, 'Offline'),
('Power BI Dashboarding', 62000, 'Online'),
('C++ & Algorithms', 74000, 'Offline'),
('React Essentials', 67000, 'Online'),
('Node.js Mastery', 69000, 'Offline'),
('Business Statistics', 71000, 'Online'),
('Big Data with Hadoop', 93000, 'Offline'),
('Ethical Hacking Pro', 82000, 'Online'),
('Linux Masterclass', 66000, 'Offline'),
('Data Analytics with R', 77000, 'Online'),
('Agile Management', 55000, 'Online'),
('Statistics with Python', 69000, 'Offline');

-- Insert 20 learner records into the learner table
INSERT INTO learner (l_name, email, score, course_id, trainer_id) VALUES
    ('Gauri Deshpande',  'gauri@example.com',   87.5,  1,  1),
    ('Rohan Shah',       'rohan@example.com',   72.0,  2,  2),
    ('Priya Mehta',      'priya@example.com',   93.2,  3,  3),
    ('Ishaan Joshi',     'ishaan@example.com',  65.4,  4,  4),
    ('Aanya Sen',        'aanya@example.com',   78.9,  5,  5),
    ('Yash Patil',       'yash@example.com',    82.0,  6,  6),
    ('Tanya Sharma',     'tanya@example.com',   88.6,  7,  7),
    ('Mohit Rao',        'mohit@example.com',   91.3,  8,  8),
    ('Ritika Bhatt',     'ritika@example.com',  67.8,  9,  9),
    ('Sahil Khan',       'sahil@example.com',   74.0, 10, 10),
    ('Neeraj Verma',     'neeraj@example.com',  79.2, 11, 11),
    ('Sneha Dixit',      'sneha@example.com',   85.5, 12, 12),
    ('Karan Malhotra',   'karan@example.com',   81.4, 13, 13),
    ('Shruti Nair',      'shruti@example.com',  90.0, 14, 14),
    ('Arjun Das',        'arjun@example.com',   76.3, 15, 15),
    ('Payal Sinha',      'payal@example.com',   83.1, 16, 16),
    ('Ankit Gupta',      'ankit@example.com',   95.0, 17, 17),
    ('Disha Kulkarni',   'disha@example.com',   89.0, 18, 18),
    ('Nilesh Shetty',    'nilesh@example.com',  70.2, 19, 19),
    ('Kavya Rao',        'kavya@example.com',   68.5, 20, 20);

SET SQL_SAFE_UPDATES = 0;

UPDATE trainer
SET rating = rating + 0.2
WHERE YOE > 8 AND rating < 4.9;

UPDATE learner
SET email = REPLACE(email, 'example.com', 'coursehub.in')
WHERE email LIKE '%@example.com';

-- Increase YOE by 1 for trainers with expertise 'Python'
UPDATE trainer
SET YOE = YOE + 1
WHERE expertise = 'Python';

-- Update fees for courses that are Online by reducing 10%
UPDATE course
SET fees = fees * 0.9
WHERE mode_of_learning = 'Online'
AND fees * 0.9 >= 50000;

-- Delete a learner who scored below 70
DELETE FROM learner
WHERE score < 70;

