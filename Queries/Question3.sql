SELECT 
  student_level,
  ROUND(AVG(total_prompts), 2) AS avg_prompts
FROM student_ai_sessions
WHERE student_level IN ('Undergraduate', 'Graduate')
GROUP BY student_level
ORDER BY avg_prompts DESC;
