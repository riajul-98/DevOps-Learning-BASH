#!/bin/bash

ls Arena | grep "hero.txt" > /dev/null

if [ $? -eq 0 ]
then
        echo "Hero Found!"
else
        echo "Hero Missing!"
fi
