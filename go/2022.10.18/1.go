package main

import (
	"fmt"
	// "2022.10.18/common"
)

func main() {
	s := seq()
	for i := 0; i < 10; i++ {
		fmt.Printf("%d ", s())
	}
	// common.GetNumber(10)
	// common.GetPath()
	// common.GetTimeStamp()
}

func seq() func() int {
	result := 1
	return func() int {
		result = result * 2
		return result
	}
}
