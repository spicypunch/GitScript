#!/bin/bash
cd AndroidStudioProjects/
echo -n "branch: "
read branch

echo -n "account  1.spicypunch  2.f-lab-edu: "
read account

echo -n "repository: "
read repository

if [ $account -eq 1 ]; then
	git clone -b $branch --single-branch https://github.com/spicypunch/$repository.git
elif [ $account -eq 2 ]; then
	git clone -b $branch --single-branch https://github.com/f-lab-edu/$repository.git
fi

