3. Prepare script to add unique constraint to any one column
ALTER TABLE author
ADD CONSTRAINT unique_author_name UNIQUE (name);
