
hashes=(
    flow
    param
)


for id in $(seq 2 2);do
    for hash in "${hashes[@]}"; do
        origin=/data/selog-2023-yamaoka/log/i-${id}o
        target=/data/selog-2023-yamaoka/log/i-${id}n
        build/POLDAM -o ${origin} -t ${target} -d /data/selog-2023-yamaoka/poldamlogclass/${id}_${hash} --$hash
    done
done;

echo origin=${origin}
echo target=${target}