-- 1. Create a test user (if not already there)
INSERT INTO users (username, email) 
VALUES ('victor_dev', 'victor@example.com') 
ON CONFLICT (username) DO NOTHING;

-- 2. Insert tasks for the user
-- Note: We use a subquery to find the ID of 'victor_dev'
INSERT INTO tasks (user_id, title, description, is_completed)
VALUES 
((SELECT id FROM users WHERE username = 'victor_dev'), 'Build Custom Dockerfile', 'Complete the Day 3 frontend build', true),
((SELECT id FROM users WHERE username = 'victor_dev'), 'Configure n8n Guardian', 'Set up the uptime monitor in n8n', false),
((SELECT id FROM users WHERE username = 'victor_dev'), 'Sync to GitHub', 'Push the Day 3 progress to the repository', false);
