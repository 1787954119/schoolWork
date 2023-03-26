package main

import "fmt"

type human struct {
	name string
	age  int
	sex  string
}

type teacher struct {
	human
	department string
}

type student struct {
	human
	id    int
	major string
}

func main() {
	teacher_1 := teacher{
		human: human{
			name: "teacher1",
			age:  28,
			sex:  "male",
		},
		department: "science",
	}
	fmt.Println(teacher_1)

	student_1 := student{
		human: human{
			name: "zhangsan",
			age:  18,
			sex:  "male",
		},
		id:    1,
		major: "science",
	}
	fmt.Println(student_1)
}
