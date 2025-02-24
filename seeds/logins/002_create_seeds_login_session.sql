INSERT INTO login_sessions (login_id, token, created_at, expires_at)
VALUES
    (1, 'a1b2c3d4e5f6g7h8i9j0', NOW(), NOW() + INTERVAL '1 day'),
    (2, 'z9y8x7w6v5u4t3s2r1q0', NOW(), NOW() + INTERVAL '2 days'),
    (3, 'qwerty123456asdfgh7890', NOW(), NOW() + INTERVAL '3 hours'),
    (4, '09876zxcvbn54321lkjhg', NOW(), NOW() + INTERVAL '30 minutes'),
    (5, 'poiuy09876mnbvc54321', NOW(), NOW() + INTERVAL '1 week');
