CREATE TABLE customer_data (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    document_number VARCHAR(50) NOT NULL UNIQUE,
    nationality VARCHAR(100) NOT NULL,
    type_document VARCHAR(50) NOT NULL,
    date_birth DATE NOT NULL
);