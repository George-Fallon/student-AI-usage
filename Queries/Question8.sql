SELECT 
  ai_assistance_level,
  COUNT(*) AS total_sessions,
  	SUM(CASE WHEN final_outcome IN ('Assignment Completed','Idea Drafted') THEN 1 ELSE 0 END) AS successful_sessions, 
    	ROUND(100.0 * SUM(CASE WHEN final_outcome = 'Assignment Completed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS success_rate_pct
FROM student_ai_sessions
GROUP BY ai_assistance_level
ORDER BY success_rate_pct DESC;
