CREATE TABLE customer_contact_info (
    customer_contact_info_id SERIAL PRIMARY KEY,
    phone_number VARCHAR(255) NOT NULL,
    phone_number_alternative VARCHAR(255),
    email VARCHAR(255) NOT NULL,
    email_alternative VARCHAR(255),
    fathers_name VARCHAR(255) NOT NULL,
    fathers_phone VARCHAR(255),
    mothers_name VARCHAR(255) NOT NULL,
    mothers_phone VARCHAR(255),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer_data (customer_id) ON DELETE CASCADE
);
