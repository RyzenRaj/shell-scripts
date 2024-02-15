#!/bin/bash

create_driectory(){
	mkdir demo
}
if ! create_driectory;then
	echo "the code is being exited as the dir already exist "
	exit 1
fi
echo "this demo folder is created"

