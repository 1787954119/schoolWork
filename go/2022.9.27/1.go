package main

import (
	"fmt"
	// "math"
)

func main()  {
	// t := 0
	// fmt.Print("2 3 ")
	// for i := 2; i < 100; i++ {
	// 	t = int(math.Sqrt(float64(i)))
	// 	for j := 2; j <= t; j++ {
	// 		if i % j == 0{
	// 			break
	// 		}
	// 		fmt.Print(i)
	// 		fmt.Print(" ")
	// 	}
	// }	
	arr := []int{1, 24, 8, 2, 4, 45, 12, 87}
	size := len(arr)
	t := 0
	for i := 0; i < size; i++ {
		for j := 0; j < i; j++ {
			if arr[i] < arr[j] {
				t = arr[i]
				arr[i] = arr[j]
				arr[j] = t
			}
		}
	}
	for i := 0; i < size; i++ {
		fmt.Print(arr[i], " ")
	}
}