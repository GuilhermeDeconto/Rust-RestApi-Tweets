-- Your SQL goes here

CREATE TABLE IF NOT EXISTS tweets
(
    id         UUID PRIMARY KEY        NOT NULL,
    created_at TIMESTAMP DEFAULT now() NOT NULL,
    message    TEXT                    NOT NULL
    );

CREATE TABLE IF NOT EXISTS likes
(
    id         UUID PRIMARY KEY        NOT NULL,
    created_at TIMESTAMP DEFAULT now() NOT NULL,
    tweet_id   UUID                    NOT NULL REFERENCES tweets (id)
    );