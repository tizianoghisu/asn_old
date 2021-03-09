i=1
while [ $i -gt 0 ]; do
    ./getasn.sh
    cat present.txt >> secs_ordered.txt
    cp notpresent.txt secs.txt
    i=`wc notpresent.txt | awk '{print $1}'`
    sleep 3600
done
