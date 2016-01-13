package main

import "golang.org/x/crypto/ssh"

func main() {
	_ = &ssh.ClientConfig{
		PasswordCallback: func(c ssh.ConnMetadata, pass []byte) (*ssh.Permissions, error) {
			return nil, nil
		},
	}
}
