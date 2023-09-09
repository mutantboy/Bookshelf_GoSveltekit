package db

import (
	"database/sql"
	_ "database/sql"
	_ "fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/joho/godotenv"
	"log"
	_ "log"
	"os"
)

type Book struct {
	ID          int    `json:"id"`
	Name        string `json:"name"`
	Author      string `json:"author"`
	ISBN        string `json:"isbn"`
	AmazonLink  string `json:"amazon_link"`
	Description string `json:"description"`
}

var db *sql.DB
var err error

func init() {

	//load env variables
	if err := godotenv.Load(); err != nil {
		log.Fatal("Could not load env variables")
	}

	db, err = sql.Open("mysql", os.Getenv("DB_URL"))
	if err != nil {
		panic(err.Error())
	}

}

func GetAllBooks() ([]Book, error) {

	var books []Book

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
