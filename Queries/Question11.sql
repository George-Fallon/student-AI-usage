SELECT 
  EXTRACT(YEAR FROM session_date) AS year,
  TO_CHAR(session_date, 'Month') AS month,
  EXTRACT(MONTH FROM session_date) AS month_number,
  ROUND(AVG(satisfaction_rating::numeric), 2) AS avg_satisfaction,
  COUNT(*) AS session_count
FROM student_ai_sessions
GROUP BY year, month, month_number
ORDER BY year, month_number;
