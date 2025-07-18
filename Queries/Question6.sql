SELECT 
  ROUND(
    100.0 * SUM(CASE WHEN used_again = TRUE THEN 1 ELSE 0 END) / COUNT(*), 
    2
  ) AS pct_used_again
FROM student_ai_sessions;
