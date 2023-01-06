#!/bin/bash

echo -n "repository: "
read repository

echo -n "commit message: "
read commit

cd AndroidStudioProjects/$repository
git branch -m master main
git init
git add .
git commit -m "$commit"
git remote add origin https://github.com/spicypunch/$repository.git
git push -f origin main

echo -e "Push 완료됐습니다."
