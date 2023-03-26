package main

import (
	"fmt"
)

type person struct {
	name string
	age  int8
	id   int
}

func main() {
	person1 := new(person)
	person1.age = 18
	person1.id = 1
	person1.name = "mike"
	fmt.Println("name = ", person1.name)
	fmt.Println("age = ", person1.age)
	fmt.Println("id = ", person1.id)
}
