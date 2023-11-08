#!/bin/bash

echo "Do you want to save data in the file?"
echo "y/n:"
read answer

if [[ $answer = "y" || $answer = "Y" ]]
then
    for arg in "$str1" "$str2" "$str3" "$str4" "$str5" "$str6" "$str7" "$str8"\
        "$str9" "$str10" "$str11" "$str12" "$str13" "$str14" "$str15" "$str16"
    do
        echo $arg >> $(date +"%d_%m_%g_%H_%M_%S").status
    done 
fi