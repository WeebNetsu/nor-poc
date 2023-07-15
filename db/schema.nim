import pkg/[allographer/schema_builder]
import connection

proc generate_schema*() =
    rdb.create([
        table("users", [
            Column.increments("id"),
            Column.string("email"),
            Column.string("password"),
        ])
    ])
