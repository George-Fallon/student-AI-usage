SELECT 
  student_level,
  COUNT(*) AS num_sessions,
  ROUND(AVG(satisfaction_rating::numeric), 2) AS avg_satisfaction
FROM student_ai_sessions
GROUP BY student_level
ORDER BY avg_satisfaction DESC;
