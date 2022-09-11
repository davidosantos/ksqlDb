...
CREATE STREAM ratings_enriched AS
    SELECT u.name, m.title, m.genre, rating
    FROM ratings
        LEFT JOIN users u ON u.id = ratings.user_id
        LEFT JOIN movies m ON m.id = ratings.movie_id
    EMIT CHANGES;


CREATE TABLE genre_avg_rating AS
    SELECT genre, AVG(rating) AS avg
    FROM ratings_enriched
    GROUP BY genre
    EMIT CHANGES;


SELECT genre, avg
FROM genre_avg_rating
WHERE genre = 'horror';