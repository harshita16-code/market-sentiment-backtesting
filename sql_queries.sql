-- Get sentiment trend by date
SELECT date, AVG(sentiment_score) AS avg_sentiment
FROM market_sentiment
GROUP BY date
ORDER BY date;

-- Check correlation between sentiment and stock movement
SELECT m.date, m.sentiment_score, s.close_price
FROM market_sentiment m
JOIN stock_data s ON m.date = s.date;
