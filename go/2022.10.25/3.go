package main

import (
	"fmt"
	"os"
)

func main() {
	// token := make([]byte, 4)
	// rand.Read(token)
	// fmt.Println(changeable(token, token, token))
	// array := []int{4, 3, 7, 2, 1, 9, 8, 6}
	// fmt.Println(f(array, len(array)))
	fileWrite("C:/Users/adminstartor/Desktop/output.txt", "this is a golang program")
	file, err := os.Open("C:/Users/adminstartor/Desktop/output.txt")
	if err != nil {
		fmt.Println("open file failed!,err:", err)
	}
	fmt.Println(file)
}

func fileWrite(filePath string, somethingToWrite string) bool {
	file, err := os.Open(filePath)
	if err != nil {
		fmt.Println("open file failed!,err:", err)
		return false
	}
	defer file.Close()
	file.WriteString(somethingToWrite)
	return true
}

// func f(arr []int, n int) int {

// 	if n == 0 {
// 		return arr[0]
// 	}
// 	max := f(arr, n-1)
// 	if max < arr[n-1] {
// 		max = arr[n-1]
// 	}
// 	return max
// }

// func changeable(args ...[]byte) []byte {
// 	var bt bytes.Buffer
// 	for _, value := range args {
// 		bt.Write(value)
// 	}
// 	return bt.Bytes()
// }
