package main

import "fmt"

type People interface {
	Work(time int)
	Eat(time int)
	Sleep(time int)
	Sports(time int)
}

type Student struct {
	Name   string
	Code   string
	Energy int
}

type Teacher struct {
	Name       string
	Department string
	Energy     int
}

func (stu *Student) Work(time int) {
	stu.Energy -= time
}

func (stu *Student) Sports(time int) {
	stu.Energy -= time
}

func (stu *Student) Sleep(time int) {
	stu.Energy += time
}

func (stu *Student) Eat(time int) {
	stu.Energy += time
}

func (t *Teacher) Work(time int) {
	t.Energy -= time
}

func (t *Teacher) Sports(time int) {
	t.Energy -= time
}

func (t *Teacher) Sleep(time int) {
	t.Energy += time
}

func (t *Teacher) Eat(time int) {
	t.Energy += time
}

func main() {
	var student = Student{
		Name:   "stu_1",
		Code:   "001",
		Energy: 10,
	}
	var p People = &student
	p.Eat(10)
	p.Sports(10)
	p.Sleep(10)
	p.Work(10)
	fmt.Println(p)
}
