CREATE DATABASE spam_detection;
USE spam_detection;

CREATE TABLE spam_calls (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phone_number VARCHAR(20) NOT NULL,
    prediction ENUM('Spam', 'Not Spam') NOT NULL,
    confidence FLOAT CHECK (confidence >= 0 AND confidence <= 1),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE spam_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT NOT NULL,
    prediction ENUM('Spam', 'Not Spam') NOT NULL,
    confidence FLOAT CHECK (confidence >= 0 AND confidence <= 1),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
