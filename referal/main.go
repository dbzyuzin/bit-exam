package main

import (
	"context"
	"database/sql"
	"fmt"
	"log"

	_ "github.com/lib/pq"
)

func main() {
	connStr := "postgres://postgres:mysecretpassword@localhost/app_db?sslmode=disable"
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		log.Fatal(err)
	}

	_, err = db.ExecContext(context.Background(), `INSERT INTO authors (first_name, last_name) VALUES
($2, $1)`, "Dima", "Zyz")

	if err != nil {
		log.Panic(err)
	}

	rows, err := db.QueryContext(context.Background(), "SELECT first_name, last_name FROM authors")
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	for rows.Next() {
		var n, n2 string
		err = rows.Scan(&n, &n2)
		if err != nil {
			log.Panic(err)
		}

		fmt.Println(n, n2)
	}




}
