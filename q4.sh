#/bin/bash


read variable
n=0
A={}
for i in ${variable//,/ }
do
    let A[$n]=$i
    #echo ${A[$n]}
    ((n++))
done

let l=n
 while (($n!=1))
    do
    
        for (( i = 0; i < $n - 1; i = i + 1))
        do
            let k=i+1
            if ((${A[$i]} > ${A[$k]}))
               then 
            
            
                
                let temp=${A[$i]}
                let A[$i]=${A[$k]}
                let A[$k]=$temp
                
            fi
            
        done
        ((n--))
    done

for (( x=0 ; x<$l ; x++))
do
    printf ${A[$x]},
done
echo