SELECT 
  CASE 
    WHEN session_length_mins < 10 THEN 'Under 10 mins'
    WHEN session_length_mins BETWEEN 10 AND 29 THEN '10–29 mins'
    WHEN session_length_mins BETWEEN 30 AND 59 THEN '30–59 mins'
    ELSE '60+ mins'
  END AS session_length_group,
  COUNT(*) AS session_count,
  ROUND(AVG(satisfaction_rating)::numeric, 2) AS avg_satisfaction
FROM student_ai_sessions
GROUP BY session_length_group
ORDER BY session_length_group;
