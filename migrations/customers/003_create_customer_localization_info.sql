CREATE TABLE customer_localization_info (
	customer_localization_info_id SERIAL PRIMARY KEY,
	street VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
	state VARCHAR(255) NOT NULL,
	country VARCHAR(255) NOT NULL,
	zip_code VARCHAR(255) NOT NULL,
	number_house VARCHAR(255) NOT NULL,
	complement VARCHAR(255) NOT NULL,
	customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer_data (customer_id) ON DELETE CASCADE
);
