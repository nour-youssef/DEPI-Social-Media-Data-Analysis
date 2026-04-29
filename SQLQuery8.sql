SELECT COUNT(*) FROM social_media_vs_productivity;





SELECT TOP 20
    f.user_id,
    f.age,
    g.gender,
    j.job_type,
    a.age_group,
    p.social_platform_preference,
    s.stress_category,
    f.daily_social_media_time,
    f.perceived_productivity_score,
	n.notifications_category_id
FROM social_media_vs_productivity f
-- Testing the links to dimension tables:
LEFT JOIN gender g ON f.gender_id = g.gender_id
LEFT JOIN job_type j ON f.job_type_id = j.job_type_id
LEFT JOIN age_group a ON f.age_group_id = a.age_group_id
LEFT JOIN social_platforms p ON f.social_platform_id = p.social_platform_id
LEFT JOIN stress_category s ON f.stress_category_id = s.stress_category_id
left Join notifications_category n on f.notifications_category_id=n.notifications_category_id;