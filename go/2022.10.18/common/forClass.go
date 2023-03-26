package common

import (
	"fmt"
	"math/rand"
	"os"
	"path/filepath"
	"time"
)

func GetNumber(n int) {
	rand.Seed(10)
	fmt.Println(rand.Intn(n))
}

func GetPath() {
	ex, err := os.Executable()
	if err != nil {
		panic(err)
	}
	fmt.Println(filepath.Dir(ex))
}

func GetTimeStamp() {
	fmt.Println(time.Now().Unix())
}
