CREATE TABLE IF NOT EXISTS url
(
    hash                VARCHAR(6) PRIMARY KEY,
    url                 VARCHAR(320) NOT NULL UNIQUE,
    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_received_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS hash
(
    hash VARCHAR(6) PRIMARY KEY
);

CREATE SEQUENCE IF NOT EXISTS unique_number_seq START 1 INCREMENT 1;

CREATE UNIQUE INDEX IF NOT EXISTS url_idx ON url (url);