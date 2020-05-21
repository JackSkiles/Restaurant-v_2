-- CREATE TABLE restaurant (
--     id SERIAL PRIMARY KEY,
--     restaurant_name VARCHAR NOT NULL,
--     distance NUMERIC,
--     stars NUMERIC,
--     category TEXT,
--     fav_dish TEXT, 
--     takeout BOOLEAN,
--     visit_date TIMESTAMP 
-- );

-- INSERT INTO restaurant VALUES (
--     DEFAULT,
--     'St. Johns Restaurant',
--     16.2,
--     5.0,
--     'High Class Dining',
--     'Gulf Red Snapper',
--     False,
--     '2019-09-05 06:00:00'
-- );

-- CREATE TABLE restaurant (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR NOT NULL,
--     address VARCHAR,
--     category VARCHAR
-- );

-- CREATE TABLE reviewer (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR NOT NULL,
--     email VARCHAR,
--     karma NUMERIC DEFAULT 0 CHECK (karma >= 0 AND karma <= 7)
-- );

-- CREATE TABLE review (
--     id SERIAL PRIMARY KEY,
--     reviewer_id INTEGER REFERENCES reviewer (id),
--     stars INTEGER NOT NULL CHECK(stars >= 1 AND stars <= 5),
--     title VARCHAR,
--     review VARCHAR,
--     restaurant_id INTEGER REFERENCES restaurant (id)
-- );

-- SELECT * FROM review WHERE restaurant_id = 2;

-- SELECT restaurant.name, review.review FROM review inner join restaurant on restaurant.id = review.restaurant_id WHERE restaurant.name='Mojo Burrito';
