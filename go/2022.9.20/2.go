package main

import "fmt"

func main() {
	 year := time.Now().Year()
	 if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
	 	fmt.Println("\nYES")
	 } else{
	 	fmt.Println("\nno")
	 }
	 firstDay := time.Date(2022, 1, 1, 0, 0, 0, 0, time.Local)
	 fmt.Println(int((time.Now().Sub(firstDay)).Hours() / 24 + 1))
}