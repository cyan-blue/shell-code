awk 'BEGIN{for(i=0;i<=10;i++)printf("touch %s-min.png\n",i)}' | sh
ls | sort -t. -k1 -nr | awk -F'-' '{printf("mv %s-%s %s.png\n",$1,$2,$1,$2)}'| sh
