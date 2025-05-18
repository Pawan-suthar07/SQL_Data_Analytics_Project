/*
Question: What are the most in-demand skills for data analyst?
*/
SELECT 
    skills,
    count(skills_job_dim.job_id) as Demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id 
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY Demand_count DESC
LIMIT 5;