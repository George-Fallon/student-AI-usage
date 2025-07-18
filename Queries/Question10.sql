SELECT 
  task_type, 
  COUNT(*) AS task_count,
  DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS rank
FROM student_ai_sessions
GROUP BY task_type
ORDER BY rank;
