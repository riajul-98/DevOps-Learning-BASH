#!/bin/bash

greet_user(){
    echo "What is your name?"
    read name
    echo "Hello, $name!"
}

greet_user