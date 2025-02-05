CREATE DATABASE IF NOT EXISTS mybase1;
CREATE USER IF NOT EXISTS 'user' @'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON mybase1.* TO 'user'@'%';
FLUSH PRIVILEGES;
USE mybase1;
CREATE TABLE IF NOT EXISTS cars (
  brend VARCHAR(50) NOT NULL, 
  model VARCHAR(50) NOT NULL, 
  years VARCHAR(50) NOT NULL
);
INSERT INTO cars (brend, model, years) 
VALUES 
  (
    'TOYOTA', 'RAV4', 
    '1994-2025'
  ), 
  (
    'HONDA', 'CR-V', 
    '1995-2025'
  ), 
  (
    'NISSAN', 'X-Trail', 
    '2000-2025'
  );
