#!/bin/sh
# Neo4j Workloads

echo "************************************************************************************************************************"
echo "neo4j YCSB Workload Generator"
echo "Cleanup folders.............................................."
#sudo rm /home/ubuntu/graphs/neo4j/workload/workloada/*
#sudo rm /home/ubuntu/graphs/neo4j/workload/workloade/*
#sudo rm /home/ubuntu/graphs/neo4j/workload/workloadf/*
#sudo rm /home/ubuntu/graphs/neo4j/workload/workloadg/*
echo "Done cleanup................................................."


NUMBER_OF_OPERATIONS=75000
NUMBER_OF_THREADS=10
SIMULATION_COUNT=1
TARGET_1=1000
TARGET_2=2000
TARGET_3=3000
TARGET_4=4000
TARGET_5=5000
TARGET_6=6000
TARGET_7=7000
TARGET_8=8000
TARGET_9=9000
TARGET_10=10000


WORKLOAD_TYPE=a
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS> outputLoada.txt

sleep 20

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1>/home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out

sleep 20

echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."




WORKLOAD_TYPE=b
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

sleep 20

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"



sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out


sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."

sleep 20

WORKLOAD_TYPE=f
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

sleep 20

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."




sleep 20

WORKLOAD_TYPE=g
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out

sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."



echo "Finished all workloads"



SIMULATION_COUNT=2


sleep 20
WORKLOAD_TYPE=a
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
sleep 20
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."




WORKLOAD_TYPE=b
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out

sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."




sleep 20

WORKLOAD_TYPE=f
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."

sleep 20
WORKLOAD_TYPE=g
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."



echo "Finished all workloads"


sleep 20
SIMULATION_COUNT=3


WORKLOAD_TYPE=a
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt

echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"


sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
sleep 20
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."




WORKLOAD_TYPE=b
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt
sleep 20
echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"



sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out

echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."
sleep 20

WORKLOAD_TYPE=f
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt
sleep 20
echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."





sleep 20
WORKLOAD_TYPE=g
echo "Loading workload "$WORKLOAD_TYPE"......."
sudo ./bin/ycsb load neo4j -s -P workloads/workload$WORKLOAD_TYPE  -p recordcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS > outputLoada.txt
sleep 20
echo "Finished loading workload "$WORKLOAD_TYPE""
echo "EXECUTING WORKLOAD "$WORKLOAD_TYPE"................................................................................................"

sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_1 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_1"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_2 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_2"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_3 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_3"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_4 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_4"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_5 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_5"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_6 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_6"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_7 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_7"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_8 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_8"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_9 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_9"_"$WORKLOAD_TYPE".out
sleep 20
sudo ./bin/ycsb run neo4j -s -P workloads/workload"$WORKLOAD_TYPE" -p operationcount=$NUMBER_OF_OPERATIONS -threads $NUMBER_OF_THREADS -target $TARGET_10 > /home/ubuntu/graphs/neo4j/workload/workload"$WORKLOAD_TYPE"/"$SIMULATION_COUNT"_ycsbrun"$TARGET_10"_"$WORKLOAD_TYPE".out
sleep 20
echo "FINISHED WORKLOAD "$WORKLOAD_TYPE"................................................................................................."



echo "Finished all workloads"


