#!/bin/bash
function get_card_numbers {
date >> ~/exam_NOUI/sales.txt
for carte in 'rtx3060' 'rtx3070' 'rtx3080' 'rtx3090' 'rx6700'
do
#echo $carte
echo "$carte:$(curl localhost:5000/$carte)" >> ~/exam_NOUI/sales.txt
done
}
get_card_numbers