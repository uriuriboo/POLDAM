
hashes=(
    flow
    param
)
id=2
method="failOnUnknown"
class="MoshiConverterFactoryTest"

for hash in "${hashes[@]}"; do
    origin=/data/selog-2023-yamaoka/log/i-${id}o
    target=/data/selog-2023-yamaoka/log/i-${id}n
    build/POLDAM -o ${origin} -t ${target} -d /data/selog-2023-yamaoka/poldam_m/${id}_${hash}_m_c -c $class -m $method --$hash
done

echo origin=${origin}
echo target=${target}