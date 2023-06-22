id=$1

# origin=Data/log/i-${id}o
# target=Data/log/i-${id}n
origin=/data/selog-2023-yamaoka/log/i-${id}o
target=/data/selog-2023-yamaoka/log/i-${id}n

hashes=(
    flow
    param
)
echo origin=${origin}
echo target=${target}

for hash in "${hashes[@]}"; do
    ./POLDAM -o ${origin} -t ${target} -d ${id}_${hash} --$hash
done

echo origin=${origin}
echo target=${target}