package main

import (
	"fmt"
	"os"
	"os/exec"
	"strconv"
)

func run_cmd(arg string) {
	cmd := exec.Command("tree", "-L", arg)
	out, err := cmd.Output()
	if err != nil {
		fmt.Println("Error: tree is not installed\n", err)
	} else {
		fmt.Println(string(out))
	}
}

func main() {
	args := os.Args
	if len(args) < 2 {
		run_cmd("1")
	} else if len(args) == 2 {

		// check if the argument is an integer
		_, err := strconv.Atoi(args[1])
		if err != nil {
			fmt.Println("Error: argument not of type \"int\"\n", err)
		} else {
			run_cmd(args[1])
		}
	} else {
		fmt.Println("Error: too many arguments")
	}
}
