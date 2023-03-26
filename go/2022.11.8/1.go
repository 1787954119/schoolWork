package main

import "fmt"

// type People struct {
// 	Name    string
// 	Age     int
// 	Phone   string
// 	Address string
// }

// type Node struct {
// 	data string
// 	next *Node
// }

// type Ring struct {
// 	data string
// 	prev *Ring
// 	next *Ring
// }

type Node struct {
	Data int
	Next *Node
}

func NewNode(data int) *Node {
	return &Node{
		Data: data,
		Next: nil,
	}
}

func createLinkList(length int) *Node {
	head := &Node{
		Data: 0,
	}
	tail := head
	for i := 1; i <= length; i++ {
		node := &Node{
			Data: i,
		}
		tail.Next = node
		tail = node
	}
	return head
}

func (linklist *Node) Insert(pos, data int) bool {
	for i := 0; i < pos; i++ {
		linklist = linklist.Next
	}
	t := &Node{
		Data: data,
		Next: linklist.Next,
	}
	linklist.Next = t
	return true
}

func (linklist *Node) Delete(pos int) bool {
	for i := 0; i < pos-1; i++ {
		linklist = linklist.Next
	}
	linklist.Next = linklist.Next.Next
	return true
}

func (linklist *Node) ModifyNode(pos, data int) bool {
	for i := 0; i < pos; i++ {
		linklist = linklist.Next
	}
	linklist.Data = data
	return true
}

func (linklist *Node) FindNode(pos int) int {
	for i := 0; i < pos-1; i++ {
		linklist = linklist.Next
	}
	return linklist.Data
}

func (linklist *Node) IterateNode() {
	for {
		if linklist.Next == nil {
			break
		}
		fmt.Print(linklist.Data, " ")
		linklist = linklist.Next
	}
}

func main() {
	l := createLinkList(10)
	l.Insert(1, 10)
	l.IterateNode()
	//fmt.Println(*l)
	// for i := 0; i < 4; i++ {
	// 	head.FindNode(i)
	// }
	// p := &People{
	// 	Name:    "xiaoming",
	// 	Age:     18,
	// 	Phone:   "1234568",
	// 	Address: "longgang shenzhen",
	// }
	// fmt.Println(p)
}
