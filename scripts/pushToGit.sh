#!/bin/bash

echo What is your commit message?
read MESSAGE

git add .

git commit -m "$MESSAGE"

git push