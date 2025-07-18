
-- SQL schema for Watch Party
CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(255),
    video_id VARCHAR(255),
    password VARCHAR(255)
);
CREATE TABLE participants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT,
    user_name VARCHAR(255)
);
CREATE TABLE sync_state (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_id INT,
    play_state ENUM('play', 'pause'),
    timestamp FLOAT
);
