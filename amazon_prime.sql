-- AMAZON PRIME VIDEO ANALYTICS
CREATE TABLE prime_dataset (
    watch_id VARCHAR(30),
    user_id VARCHAR(30),
    watch_date DATE,
    watch_time TIME,
    content_id VARCHAR(30),
    title TEXT,
    content_type VARCHAR(50),
    genre VARCHAR(100),
    language VARCHAR(50),
    country VARCHAR(100),
    release_year INTEGER,
    age_rating VARCHAR(30),
    duration_minutes INTEGER,
    episode_number INTEGER,
    season_number INTEGER,
    device_type VARCHAR(100),
    operating_system VARCHAR(100),
    subscription_plan VARCHAR(50),
    monthly_subscription_fee NUMERIC(12,2),
    watch_time_minutes INTEGER,
    completion_percentage NUMERIC(6,3),
    rating_given INTEGER,
    rewatched VARCHAR(10),
    downloaded_offline VARCHAR(10),
    city VARCHAR(100),
    state VARCHAR(100),
    country_of_user VARCHAR(100),
    login_method VARCHAR(50),
    payment_method VARCHAR(50),
    internet_type VARCHAR(50),
    buffering_events INTEGER,
    average_stream_quality VARCHAR(30),
    viewing_session_duration INTEGER,
    account_age_months INTEGER,
    churn_risk VARCHAR(30)
);


SELECT *
FROM prime_dataset;

-- Business Problem Solving 

-- 1. What is the total number of unique customers?

SELECT
    COUNT(DISTINCT user_id) AS total_customers
FROM public.prime_dataset;


-- 2. How many unique movies and TV shows are available?

SELECT
    content_type,
    COUNT(DISTINCT content_id) AS total_content
FROM public.prime_dataset
GROUP BY content_type
ORDER BY total_content DESC;


-- 3. Which are the top 10 most popular genres based on content count?

SELECT
    genre,
    COUNT(DISTINCT content_id) AS total_content
FROM public.prime_dataset
GROUP BY genre
ORDER BY total_content DESC
LIMIT 10;


-- 4. Which are the top 5 genres based on total content?

SELECT
    genre,
    COUNT(DISTINCT content_id) AS total_content
FROM public.prime_dataset
GROUP BY genre
ORDER BY total_content DESC
LIMIT 5;


-- 5. Which countries have the highest number of customers?

SELECT
    country_of_user,
    COUNT(DISTINCT user_id) AS total_customers
FROM public.prime_dataset
GROUP BY country_of_user
ORDER BY total_customers DESC
LIMIT 10;


-- 6. What is the distribution of customers across subscription plans?

SELECT
    subscription_plan,
    COUNT(DISTINCT user_id) AS total_customers
FROM public.prime_dataset
GROUP BY subscription_plan
ORDER BY total_customers DESC;


-- 7. What is the estimated monthly subscription revenue by plan?

SELECT
    subscription_plan,
    SUM(monthly_subscription_fee) AS monthly_revenue
FROM (
    SELECT
        user_id,
        subscription_plan,
        MAX(monthly_subscription_fee) AS monthly_subscription_fee
    FROM public.prime_dataset
    GROUP BY user_id, subscription_plan
) AS customer_plans
GROUP BY subscription_plan
ORDER BY monthly_revenue DESC;


-- 8. Which subscription plan generates the highest estimated revenue per customer?

SELECT
    subscription_plan,
    ROUND(AVG(monthly_subscription_fee), 2) AS avg_monthly_fee,
    COUNT(DISTINCT user_id) AS total_customers
FROM public.prime_dataset
GROUP BY subscription_plan
ORDER BY avg_monthly_fee DESC;


-- 9. What is the average watch time for each subscription plan?

SELECT
    subscription_plan,
    ROUND(AVG(watch_time_minutes), 2) AS average_watch_time
FROM public.prime_dataset
GROUP BY subscription_plan
ORDER BY average_watch_time DESC;


-- 10. Which content type receives the highest average watch time?

SELECT
    content_type,
    ROUND(AVG(watch_time_minutes), 2) AS average_watch_time
FROM public.prime_dataset
GROUP BY content_type
ORDER BY average_watch_time DESC;


-- 11. Which genres have the highest average customer ratings?

SELECT
    genre,
    ROUND(AVG(rating_given), 2) AS average_rating
FROM public.prime_dataset
WHERE rating_given IS NOT NULL
GROUP BY genre
ORDER BY average_rating DESC
LIMIT 10;


-- 12. Which genres have the highest total watch time?

SELECT
    genre,
    ROUND(SUM(watch_time_minutes), 2) AS total_watch_time
FROM public.prime_dataset
GROUP BY genre
ORDER BY total_watch_time DESC
LIMIT 10;


-- 13. What percentage of content is watched on average?

SELECT
    ROUND(AVG(completion_percentage), 2) AS average_completion_percentage
FROM public.prime_dataset;


-- 14. How many customers have rewatched content?

SELECT
    COUNT(DISTINCT user_id) AS customers_who_rewatched
FROM public.prime_dataset
WHERE LOWER(rewatched) = 'yes';


-- 15. What percentage of viewing records involve rewatching?

SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE LOWER(rewatched) = 'yes'
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS rewatch_percentage
FROM public.prime_dataset;


-- 16. Which customers have a high churn risk?

SELECT
    COUNT(DISTINCT user_id) AS high_churn_risk_customers
FROM public.prime_dataset
WHERE LOWER(churn_risk) = 'high';


-- 17. What is the distribution of customers by churn risk?

SELECT
    churn_risk,
    COUNT(DISTINCT user_id) AS total_customers
FROM public.prime_dataset
GROUP BY churn_risk
ORDER BY total_customers DESC;


-- 18. Which subscription plans have the highest average buffering events?

SELECT
    subscription_plan,
    ROUND(AVG(buffering_events), 2) AS average_buffering_events
FROM public.prime_dataset
GROUP BY subscription_plan
ORDER BY average_buffering_events DESC;


-- 19. What is the average account age of customers across subscription plans?

SELECT
    subscription_plan,
    ROUND(AVG(account_age_months), 2) AS average_account_age_months
FROM public.prime_dataset
GROUP BY subscription_plan
ORDER BY average_account_age_months DESC;


-- 20. Which customers have the highest total watch time?

SELECT
    user_id,
    ROUND(SUM(watch_time_minutes), 2) AS total_watch_time
FROM public.prime_dataset
GROUP BY user_id
ORDER BY total_watch_time DESC
LIMIT 10;


