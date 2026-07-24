CREATE TABLE IF NOT EXISTS orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    date_in TEXT NOT NULL DEFAULT (date('now')) CHECK (date_in IS date(date_in)),
    guaranteed_date_out TEXT NOT NULL DEFAULT (date('now', '+2 days')) CHECK (guaranteed_date_out IS date(guaranteed_date_out)),
    real_date_out TEXT CHECK (real_date_out IS date(real_date_out)),
    picked_by INTEGER NOT NULL REFERENCES employees(id) ON UPDATE CASCADE ON DELETE CASCADE,
    packed_by INTEGER NOT NULL REFERENCES employees(id) ON UPDATE CASCADE ON DELETE CASCADE,
    dispatched_by INTEGER NOT NULL REFERENCES employees(id) ON UPDATE CASCADE ON DELETE CASCADE
);
