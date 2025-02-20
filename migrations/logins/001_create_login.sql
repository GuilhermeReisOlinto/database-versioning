CREATE TABLE login (
    login_id SERIAL PRIMARY KEY,
    nick_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    customer_id INT NOT NULL,
    active BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL
);
