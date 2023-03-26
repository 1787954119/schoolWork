package main

import "fmt"

func main() {
	 a := 10
	 var b *int = &a
	 fmt.Println(a, *b)
	 slice(a)
	 fmt.Println(a, *b)
	 slice2(&a)
	 fmt.Println(a, *b)
}

 func slice(v1 int) {
 	v1 = 20
 }

 func slice2(v2 *int){
 	*v2 = 30
}