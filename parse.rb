# parse the CSV into a sqlite3 database here!

db = {:conn => SQLite3::Database.new("guests.db")}
DB[:conn].execute("DROP TABLE IF EXISTS guests")

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS guests (
    year INTEGER,
    occupation TEXT,
    show TEXT,
    type TEXT,
    name TEXT
    )
    SQL

DB[:conn].execute(sql)
