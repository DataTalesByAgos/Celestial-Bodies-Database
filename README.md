#Project Overview
The core objective of this project was to construct a robust database structure that mirrors astronomical entities: galaxies, stars, planets, moons, and spacecraft. Each table within the database adheres to industry best practices, including defining primary keys (*_id), establishing relationships through foreign keys, and ensuring data integrity with constraints.

#Database Design
Galaxy Table: The central repository for galaxy information capturing essential details such as size, shape, activity status, and color.
Star Table: Stars, categorized by type and mass, are linked to their respective galaxies via foreign keys in the star table.
Planet Table: Contains planets with attributes like diameter, atmosphere composition, and ring presence, nested under stars in a hierarchical structure.
Moon Table: Moons, characterized by size, surface composition, and habitability status, are associated with planets in the moon table.
Spacecraft Table: Records spacecraft details including name, purpose, launch date, operational status, and fuel type.

Implementation and Data Insertion
The repository includes SQL scripts that define the database schema (CREATE TABLE statements) and populate it (INSERT INTO statements) with meaningful astronomical data. This approach not only demonstrates proficiency in SQL syntax but also showcases the ability to manage large datasets efficiently.

#Learning Outcomes
Through this project, I've honed my skills in database schema design, data modeling, and SQL query execution. It highlights my understanding of data normalization, ensuring minimal redundancy and maximum efficiency in storing and retrieving information.

