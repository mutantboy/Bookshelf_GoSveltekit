package main

import (
	"Backend/db"
	"fmt"
	"github.com/gin-gonic/gin"
	_ "github.com/gin-gonic/gin"
	_ "github.com/joho/godotenv"
	"net/http"
	"os"
)

func main() {
	fmt.Println(os.Getenv("DB_URL"))
	router := gin.Default()
	router.GET("/books", GetBooksHTTP)

	if err := router.Run("localhost:6969"); err != nil {
		panic(err)
	}

}

func GetBooksHTTP(c *gin.Context) {
	books, err := db.GetAllBooks()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, books)
}
