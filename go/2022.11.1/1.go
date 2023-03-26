// package main

// import (
// 	"fmt"
// 	"os"
// )

// func writeFile(f string, s string) {
// 	file, err := os.OpenFile(f, os.O_CREATE|os.O_WRONLY, 0644)
// 	if err != nil {
// 		fmt.Println("file open error!")
// 	}
// 	file.WriteString(s)
// 	defer file.Close()
// }

// func main() {
// 	data := "hello"
// 	writeFile("C:\\Users\\adminstartor\\Desktop\\test.txt", data)
// }

// func compare(a int, b int) int {
// 	if a > b {
// 		return a
// 	} else {
// 		return b
// 	}
// }

// func max(data []int, i int) int {
// 	if i == 0 {
// 		return data[0]
// 	}
// 	return compare(data[i], max(data, i-1))
// }

// func main() {
// 	data := []int{1, 8, 21, 9, 14, 32, 6}
// 	result := max(data, len(data))
// 	fmt.Println(result)
// }

// func combine(pb ...[]byte) []byte {
// 	var buffer bytes.Buffer
// 	l := len(pb)
// 	for index := 0; index < l; index++ {
// 		buffer.Write(pb[index])
// 	}
// 	return buffer.Bytes()
// }

// func main() {
// 	data1 := []byte("hello")
// 	data2 := []byte("world")
// 	fmt.Println(string(combine(data1, data2)))
// }