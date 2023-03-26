package main

import "fmt"
//import "time"

func main() {
	// year := time.Now().Year()
	// if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
	// 	fmt.Println("\nYES")
	// } else{
	// 	fmt.Println("\nno")
	// }
	// firstDay := time.Date(2022, 1, 1, 0, 0, 0, 0, time.Local)
	// fmt.Println(int((time.Now().Sub(firstDay)).Hours() / 24 + 1))
	var score int
	fmt.Scan(&score)
	switch {
	case score >= 90:
		fmt.Println("excellent")
	case score >= 80:
		fmt.Println("good")
	case score >= 70:
		fmt.Println("middle")
	case score >= 60:
		fmt.Println("pass")
	default:
		fmt.Println("failed")
	}	
}