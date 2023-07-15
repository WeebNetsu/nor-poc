import pkg/[allographer/connection]

# let rdb* = dbOpen(PostgreSql, "database", "user", "password" "localhost", 5432, maxConnections, timeout)

# you can create connection for multiple database at same time.
let rdb* = dbOpen(Sqlite3, "db/sqlite3.db", logDir = "log/db.log")
    # let mysqlRdb* = dbOpen(MySQL, "database", "user", "password" "localhost", 3306, maxConnections, timeout)
    # let mariaRdb* = dbOpen(MariaDB, "database", "user", "password" "localhost", 3306, maxConnections, timeout)
    # let surrealDb* = dbOpen(SurrealDb, "test_ns" "test_db", "user", "password" "http://localhost", 8000, maxConnections, timeout)
