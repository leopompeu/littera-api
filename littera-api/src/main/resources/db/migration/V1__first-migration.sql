CREATE TABLE users(
    id VARCHAR NOT NULL PRIMARY KEY,
    username VARCHAR NOT NULL UNIQUE,
    password VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    role VARCHAR NOT NULL
);

CREATE TABLE costumer(
    id VARCHAR NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    user_id VARCHAR NOT NULL
);

CREATE TABLE videos(
    id INTEGER NOT NULL PRIMARY KEY,
    url VARCHAR(2048) NOT NULL,
    costumer_id VARCHAR NOT NULL
);

CREATE TABLE texts(
    id INTEGER NOT NULL PRIMARY KEY,
    content VARCHAR(1000) NOT NULL,
    costumer_id VARCHAR NOT NULL
);

CREATE TABLE images(
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    img BYTEA NOT NULL
);

CREATE TABLE blog(
    id VARCHAR NOT NULL PRIMARY KEY,
    costumer_id VARCHAR NOT NULL
);

CREATE TABLE post(
    id VARCHAR NOT NULL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(62206) NOT NULL,
    blog_id VARCHAR NOT NULL,
    img_id INTEGER NOT NULL,
    video_id INTEGER
);