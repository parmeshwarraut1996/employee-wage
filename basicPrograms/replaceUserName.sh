#!/bin/bash -x 

#Problem-statement:User Input and Replace String Template “Hello <<UserName>>, How are you?” 
#Description:Take UserName as Input. Ensure UserName has min 3 char. Replace <<UserName>> with the proper name.
#File:replaceUserName.sh

str="Hello <<UserName>>, How are you?"
echo Original String = $str

read -p "Enter string to replace <<userName>> = " replaceUserName
	if [ $((${#replaceUserName})) -ge 3 ]
	then
		echo Replace string = "${str/<<UserName>>/$replaceUserName}"
	
	fi

