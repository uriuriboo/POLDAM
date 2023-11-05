
hashes=(
    flow
    param
)
# id=2
# method="failOnUnknown"
# class="retrofit2/converter/moshi/MoshiConverterFactoryTest"
# flib="moshi"

# id=7
# class="com/alibaba/druid/bvt/filter/log/Slf4jLogFilterTest"
# method="test_slf4j"
# flib="slf4j"


# id=49
# class="com/intuit/wasabi/export/rest/impl/DefaultRestEndPointTest"
# method="testGetRestEndPointURI"
# flib="http"

# id=114
# class="org/jongo/spike/projection/JacksonProjectionTest"
# method="canCreateQueryForPOJO"
# flib="mongodb"


id=87
class="com/github/davidmoten/rx/jdbc/DatabaseTestBase"
method="testReturnGeneratedKeysForMultipleInsertedValuesInOneStatement"
flib="h2"

for hash in "${hashes[@]}"; do
    origin=/data/selog-2023-yamaoka/log/i-${id}o
    target=/data/selog-2023-yamaoka/log/i-${id}n
    build/POLDAM -o ${origin} -t ${target} -d /data/selog-2023-yamaoka/poldam_tmp/${id}_${hash}_m_c_f -c $class -m $method --$hash -f ^.*$flib.*$

done

echo origin=${origin}
echo target=${target}