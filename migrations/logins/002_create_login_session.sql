CREATE TABLE login_sessions (
    session_id SERIAL PRIMARY KEY,
    login_id INT NOT NULL REFERENCES login(login_id),
    token VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    expires_at TIMESTAMP NOT NULL
);
