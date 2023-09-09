package db

import (
	"database/sql"
	_ "database/sql"
	_ "fmt"
	_ "github.com/go-sql-driver/mysql"
	"log"
	_ "log"
)

type Book struct {
	ID          int    `json:"id"`
	Name        string `json:"name"`
	Author      string `json:"author"`
	ISBN        string `json:"isbn"`
	AmazonLink  string `json:"amazon_link"`
	Description string `json:"description"`
}

func Init() {
	db, err := sql.Open("mysql", "root:root@tcp(127.0.0.1:3307)/bookshelf")
	if err != nil {
		panic(err.Error())
	}
	defer func(db *sql.DB) {
		err := db.Close()
		if err != nil {
			panic(err.Error())
		}
	}(db)

}

func GetAllBooks() ([]Book, error) {

	var books []Book

	db, _ := sql.Open("mysql", "root:root@tcp(127.0.0.1:3307)/bookshelf")
	defer func(db *sql.DB) {
		err := db.Close()
		if err != nil {
			log.Fatal(err)
		}
	}(db)

	res, _ := db.Query("SELECT * FROM books")

	defer func(res *sql.Rows) {
		err := res.Close()
		if err != nil {
			log.Fatal(err)
		}
	}(res)

	for res.Next() {
		var book Book
		err := res.Scan(&book.ID, &book.Name, &book.Author, &book.ISBN, &book.AmazonLink, &book.Description)
		if err != nil {
			log.Fatal(err)
		}

		books = append(books, book)
	}
	return books, nil
}
