SELECT 
  discipline,
  ROUND(AVG(total_prompts), 3) AS avg_prompts_per_session,
  COUNT(*) AS total_sessions,
  DENSE_RANK() OVER(ORDER BY ROUND(AVG(total_prompts), 2) DESC) AS prompt_rank
FROM student_ai_sessions
GROUP BY discipline
ORDER BY prompt_rank;
