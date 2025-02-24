INSERT INTO login (nick_name, password, customer_id, active, created_at)
VALUES
    ('john_doe', 'adm123', 1, TRUE, NOW()),
    ('jane_smith', 'securePass456', 2, TRUE, NOW()),
    ('mike_jones', '123qweASD', 3, FALSE, NOW()),
    ('lisa_white', 'Pass@2023', 4, TRUE, NOW()),
    ('tom_clark', 'MySecretPass1', 5, FALSE, NOW());
