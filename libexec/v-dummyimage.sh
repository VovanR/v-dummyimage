#!/usr/bin/env bash
#
# github.com/VovanR/v-dummyimage


function downloadImage {
    size=${1}
    text=${2}
    imageUrl="https://dummyimage.com/"${size}"/000/fff/?text="${text}
    fileName=${size}"-"${text}".png"

    wget -L ${imageUrl} -O ${fileName}
}

# Arguments exists
if [ -n "${1}" ];then
    size=${1}

    # Second argument
    if [ -n "${2}" ];then
        text=${2}
        downloadImage ${size} ${text}
    else
        for num in {1..5}
        do
            downloadImage ${size} ${num}
        done
    fi
else
    echo -e "Error: Image size?"
    echo -e "v-dummyimage 100x200 [image_text]"
    exit 2
    # Return 2
    # Exit Status: Incorrect usage
fi


# Debug
# echo -e "\n"
# echo -e "script:\t"$0
# echo -e "arguments.lenght:\t"$#
# echo -e "is previous running is successful ( 0 - successful ):\t"$?
# echo -e "PID:\t"$$
# echo -e "last PID:\t"$!
# echo -e "all arguments:\t"$*
# echo -e "all arguments2:\t"$@
# echo -e "last argument of last sh:\t"$_


echo -e "Successful execution"
exit 0
# Return 0
# Exit Status: Success
