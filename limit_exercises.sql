-- TODO: 1. Create a new SQL script called limit_exercises.sql.
-- TODO: 2. MySQL provides a way to return only unique results from our queries with the keyword DISTINCT.
-- For example, to find all the unique titles within the company, we could run the following query:

    -- SELECT DISTINCT title FROM titles;
    -- List the first 10 distinct last name sorted in descending order. Your result should look like this:

    # Zykh
    # Zyda
    # Zwicker
    # Zweizig
    # Zumaque
    # Zultner
    # Zucker
    # Zuberek
    # Zschoche
    # Zongker

-- TODO: 3. Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees. Their names should be:

    # Khun Bernini
    # Pohua Sudkamp
    # Xiaopeng Uehara
    # Irene Isaak
    # Dulce Wrigley

-- TODO: 4. Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results. The employee names should be:

    # Piyawadee Bultermann
    # Heng Luft
    # Yuqun Kandlur
    # Basil Senzako
    # Mabo Zobel

-- LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?