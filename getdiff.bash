
hashes=(
    flow
    param
)



# id=18
# class="org/apache/shiro/authc/credential/DefaultPasswordServiceTest"
# method="testHashFormatWarned"

# id=87
# class="com/github/davidmoten/rx/jdbc/DatabaseTestBase"
# method="testReturnGeneratedKeysForMultipleInsertedValuesInOneStatement"

# id=114
# class="org/jongo/spike/projection/JacksonProjectionTest"
# method="canCreateQueryForPOJO"
# id=2
# class="retrofit2/converter/moshi/MoshiConverterFactoryTest"
# method="failOnUnknown"

id=7
class="com/alibaba/druid/bvt/filter/log/Slf4jLogFilterTest"
method="test_slf4j"


for hash in "${hashes[@]}"; do
    origin=/data/selog-2023-yamaoka/log/i-${id}o
    target=/data/selog-2023-yamaoka/log/i-${id}n
    build/POLDAM -o ${origin} -t ${target} -d /data/selog-2023-yamaoka/poldam_tmp/${id}_${hash}_m_c_ -c $class -m $method --$hash
done

echo origin=${origin}
echo target=${target}

