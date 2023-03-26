package main

import (
	"fmt"
)

func main() {	
	arr := []int{1, 24, 8, 2, 4, 45, 12, 87}
	size := len(arr)
	t := 0
	// j := 0
	for i := 0; i < size; i++ {
		for j := 0; j < i; j++ {
			if arr[i] < arr[j] {
				t = arr[i]
				arr[i] = arr[j]
				arr[j] = t
			}
		}
	}
	// for gap := size / 2; gap > 0; gap /= 2 {
	// 	for i := gap; i < size; i++ {
	// 		t = arr[i]
	// 		for j := i - gap; j >= 0 && t < arr[j]; j -= gap {
				
	// 			arr[j + gap] = arr[j]
	// 		}
	// 		arr[j + gap] = t
	// 	}
	// }
	for i := 0; i < size; i++ {
		fmt.Print(arr[i], " ")
	}
}