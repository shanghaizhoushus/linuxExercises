#!/bin/bash                                                                                                                                                                                        

mkdir ~/Desktop/linuxExercises/five

for (( x = 1; x <= 5; x++ ))
do

    y="dir"$x
    mkdir ~/Desktop/linuxExercises/five/$y
done


for (( x = 1; x <= 5; x++ ))
do

    for(( y = 1; y <= 4; y++ ))
    do
        file1="dir"$x
        file2="file"$y
        echo $y > ~/Desktop/linuxExercises/five/$file1/$file2
        num=$((y-1))

        for (( z = 1; z <= $num; z++ ))
        do

            echo $y >> ~/Desktop/linuxExercises/five/$file1/$file2
        done

    done
done

	    
