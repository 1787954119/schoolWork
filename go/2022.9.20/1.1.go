package main

import "fmt"

func main() {
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