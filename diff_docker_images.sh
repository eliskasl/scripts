#!/bin/bash

image1="$1"
image2="$2"

docker run --rm $image1 rpm -qa > image1.txt
docker run --rm $image2 rpm -qa > image2.txt

comm -1 -3 <(sort image1.txt) <(sort image2.txt) > image_diff.txt && cat image_diff.txt

rm image1.txt && rm image2.txt







