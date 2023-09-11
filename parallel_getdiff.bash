#!/bin/bash

function run (){
    id=$1

    origin=/data/selog-2023-yamaoka/log/i-${id}o
    target=/data/selog-2023-yamaoka/log/i-${id}n

    hashes=(
        flow
        param
    )
    
    echo origin=${origin}
    echo target=${target}


    if [ -d $origin  ] && [ -d $target ]; then
        for hash in "${hashes[@]}"; do
        echo origin=${origin}
        echo target=${target}
        ./POLDAM -o ${origin} -t ${target} -d /data/selog-2023-yamaoka/pomdamlog/${id}_${hash} --$hash
        done
    fi
    
}

export -f run

<<<<<<< HEAD
seq 1 13 | xargs -I@ -P 5 -n1 bash -c "run @"
=======
seq 1 123 | xargs -I@ -P 5 -n1 bash -c "run @"
>>>>>>> 実行トレースを取得する番号を変更