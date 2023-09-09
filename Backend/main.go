package main

import (
	"Backend/db"
	"github.com/gin-gonic/gin"
	_ "github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	router := gin.Default()
	router.GET("/books", GetBooksHTTP)
	router.Run("localhost:6969")

}

func GetBooksHTTP(c *gin.Context) {
	books, err := db.GetAllBooks()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, books)
}
