package main

import "fmt"

func main() {

	fmt.Println(sum(1, 5))
	fmt.Println(sub(4, 5))
	fmt.Println(mul(3, 5))
	fmt.Println(exc(25, 5))
	fmt.Println(get_int(7.5))
}

func sum(number1, number2 float64) float64 {
	return number1 + number2
}

func sub(number1, number2 float64) float64 {
	return number1 - number2
}

func mul(number1, number2 float64) float64 {
	return number1 * number2
}

func exc(number1, number2 float64) float64 {
	return number1 / number2
}

func get_int(number1 float64) int64 {
	return int64(number1)
}