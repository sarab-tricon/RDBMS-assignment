-- Task 10: Perform 5 INSERTs and UPDATEs with COMMIT and ROLLBACK

--Start a transaction
BEGIN;

-- Insert 5 new authors into the author table
INSERT INTO author (name, country) VALUES ('Leo Tolstoy', 'Russia');
INSERT INTO author (name, country) VALUES ('F. Scott Fitzgerald', 'USA');
INSERT INTO author (name, country) VALUES ('Ernest Hemingway', 'USA');
INSERT INTO author (name, country) VALUES ('Charles Dickens', 'UK');
INSERT INTO author (name, country) VALUES ('Virginia Woolf', 'UK');

-- Commit the transaction to save these changes
COMMIT;

-- Start another transaction to demonstrate ROLLBACK
BEGIN;

-- Perform some updates
UPDATE author SET country = 'United Kingdom' WHERE name = 'Charles Dickens';
UPDATE author SET country = 'United States' WHERE name = 'Ernest Hemingway';
UPDATE author SET country = 'Unknown' WHERE name = 'Virginia Woolf';

-- Rollback to undo the above updates
ROLLBACK;
