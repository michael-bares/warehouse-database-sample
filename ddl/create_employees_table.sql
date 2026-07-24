CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE CHECK (email LIKE '%_@_%._%'),
    date_of_birth TEXT NOT NULL CHECK (date_of_birth IS date(date_of_birth)),
    created_at TEXT NOT NULL DEFAULT (date('now')) CHECK (created_at IS date(created_at)),
    deactivated_at TEXT CHECK (deactivated_at IS date(deactivated_at))
);
