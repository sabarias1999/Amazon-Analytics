create database	amazon_project;
use amazon_project;
##Overall KPIs
Select * from reviews limit 10;
SELECT COUNT(*) FROM reviews;
##Rating Distribution
SELECT rating, COUNT(*) 
FROM reviews
GROUP BY rating;

SELECT brand, AVG(rating)
FROM reviews
GROUP BY brand;
SELECT COUNT(*) FROM reviews;

SELECT * FROM reviews LIMIT 10;
##Brand Performance
SELECT 
    COUNT(*) AS total_reviews,
    ROUND(AVG(rating),2) AS avg_rating
FROM reviews;
SELECT brand,
       COUNT(*) AS total_reviews,
       ROUND(AVG(rating),2) AS avg_rating
FROM reviews
WHERE brand IS NOT NULL
GROUP BY brand
ORDER BY avg_rating DESC; 
##Top Products with Ranking
SELECT product_id,
       COUNT(*) AS total_reviews,
       AVG(rating) AS avg_rating,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_position
FROM reviews
GROUP BY product_id;
##Best Products
SELECT product_id,
       COUNT(*) AS reviews,
       AVG(rating) AS avg_rating
FROM reviews
GROUP BY product_id
HAVING COUNT(*) > 50
ORDER BY avg_rating DESC
LIMIT 10;
##Sentiment vs Rating
SELECT rating,
       ROUND(AVG(sentiment_score), 3) AS avg_sentiment
FROM reviews
GROUP BY rating
ORDER BY rating;
##Top Positive Products
SELECT product_id,
       COUNT(*) AS reviews,
       AVG(sentiment_score) AS avg_sentiment
FROM reviews
GROUP BY product_id
HAVING COUNT(*) > 50
ORDER BY avg_sentiment DESC
LIMIT 10;
##Trend Analysis
SELECT DATE_FORMAT(review_date, '%Y-%m') AS month,
       COUNT(*) AS total_reviews
FROM reviews
GROUP BY month
ORDER BY month;