
# create log dir for origin
cd origin/

echo compile customClass
cd customClass/
rm *.class
javac -g myMath.java 

cd ../
echo compile Main
rm *.class
javac -g Main.java

echo run selogger with omni
java  -javaagent:../../../selogger/target/selogger-0.5.0.jar=output=selogger_out,format=omnibinary Main

# Please Make sure execute following command at ./origin
echo run selogger.reader
java -classpath ../../../selogger/target/selogger-0.5.0.jar selogger.reader.LogPrinter selogger_out
