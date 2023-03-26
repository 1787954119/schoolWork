package main

import (
	"fmt"
	"math"
)

func main()  {
	 t := 0
	 fmt.Print("2 3 ")
	 for i := 2; i < 100; i++ {
	 	t = int(math.Sqrt(float64(i)))
	 	for j := 2; j <= t; j++ {
	 		if i % j == 0{
	 			break
	 		}
	 		fmt.Print(i)
	 		fmt.Print(" ")
	 	}
	 }	
}