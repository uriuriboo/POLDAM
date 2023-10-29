
hashes=(
    flow
    param
)


id=7
class="com/alibaba/druid/bvt/filter/log/Slf4jLogFilterTest"
method="test_slf4j"

for hash in "${hashes[@]}"; do
    origin=/home/atsuhito-y/research/POLDAM/i-${id}o1
    target=/home/atsuhito-y/research/POLDAM/i-${id}o2
    build/POLDAM -o ${origin} -t ${target} -d /home/atsuhito-y/research/POLDAM/dot/${id}_${hash}_m_c_ -c $class -m $method --$hash
done

echo origin=${origin}
echo target=${target}