#!/bin/bash

awk -F: '{

if($3 >= 1000)
{ 	if($7 != "/bin/bash" ){
		print($1,"*")
	}
	else{
		print($1)}
	}

}' /etc/passwd

