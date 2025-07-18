SELECT 
  discipline, 
  COUNT(*) AS session_count,
  ROUND(AVG(total_prompts), 2) AS prompt_avg
FROM student_ai_sessions
GROUP BY discipline
ORDER BY prompt_avg DESC
LIMIT 2;
