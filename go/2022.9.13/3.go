package main

import "fmt"

func main() {
	var book = [4]string{"西游记", "水浒传", "三国演义", "红楼梦"}
	backup := make([]string, 6)
	backup = append(book[:])
	fmt.Println(book)
	fmt.Println(len(backup), cap(backup))

}