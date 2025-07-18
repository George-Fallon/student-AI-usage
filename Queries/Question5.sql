WITH task_counts AS (
  SELECT 
    task_type,
    COUNT(*) AS total_sessions
  FROM student_ai_sessions
  GROUP BY task_type
),
ranked_tasks AS (
  SELECT 
    task_type,
    total_sessions,
    DENSE_RANK() OVER (ORDER BY total_sessions DESC) AS task_rank
  FROM task_counts
)
SELECT *
FROM ranked_tasks
WHERE task_rank <= 3;
