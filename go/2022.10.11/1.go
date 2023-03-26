package main

import "fmt"

func main() {
	// data := []int{41, 123, 3, 45, 876, 2, 34}
	// l := len(data)
	// for gap := l / 2; gap > 0; gap /= 2 {
	// 	for i := gap; i < l; i++ {
	// 		for j := i; j - gap >= 0 && data[j - gap] > data[j]; j -= gap {
	// 			data[j - gap] += data[j]
	// 			data[j] = data[j - gap] - data[j]
	// 			data[j - gap] -= data[j]
	// 		} 
	// 	}
	// }
	// for i := 0; i < l; i++ {
	// 	fmt.Print(data[i], " ")
	// }

	fmt.Println(sum(1, 5))
	fmt.Println(sub(4, 5))
	fmt.Println(mul(3, 5))
	fmt.Println(exc(25, 5))
	fmt.Println(get_int(7.5))
	// a := 10
	// var b *int = &a
	// fmt.Println(a, *b)
	// slice(a)
	// fmt.Println(a, *b)
	// slice2(&a)
	// fmt.Println(a, *b)
}

// func slice(v1 int) {
// 	v1 = 20
// }

// func slice2(v2 *int){
// 	*v2 = 30
// }

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