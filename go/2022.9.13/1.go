package main

import "fmt"

func main() {
	//  a := []string{"富强", "民主", "文明", "和谐", "自由", "平等", "公正", "法治", "爱国", "敬业", "诚信", "友善"}
	//  fmt.Println(a[8: ])
	// var b = map[int]string{
	// 	1: "opencv",
	// 	2: "opencv",
	// 	3: "os",
	// 	4: "golang",
	// 	5: "three kingdoms",
	// }
	// fmt.Println(b)
	var book = [4]string{"西游记", "水浒传", "三国演义", "红楼梦"}
	backup := make([]string, 6)
	backup = append(book[:])
	fmt.Println(book)
	fmt.Println(len(backup), cap(backup))

}