# ImprovingCloudArchitectures
In this repository is presented the results and binary of the Master Thesis Project "Improving Cloud Architectures using Metamorphic testing and multi-objective optimization techniques"
There are two different clouds, CloudA is a cloud model with less performance, meanwhile, the CloudB is a cloud model with high-performance components.
In addition, there are two workloads, w1 is demanding and w3 is a light demanding workload.

To run the test case presented in the previous step, the system requires certain input parameters. The input parameters that the framework expects to receive are as follows:

- **Algorithm**: Specifies the algorithm to be used for this execution. This parameter is optional, and if it is not provided, all algorithms integrated into the framework will be executed.

- **Simulator**: The simulator on which the test cases will be executed.

- **Test_Path**: The path to the directory where the configuration files have been defined.

- **Iterations**: The number of iterations the algorithm must perform.

- **Percentage1**: An integer that defines the percentage of individuals involved in the crossover.

- **Probability2**: An integer that defines the mutation probability.

- **Simulator_Path**: The path to the executable of the simulator responsible for running the tests.

The algorithms available are: ga, moga, paes, nsgaii and spea2.


An example configuration of the input parameters can be seen below. In this example, the selected algorithm is NSGAII, with the CloudSimStorage simulator. 
The directory where the test cases are located is /localSpace/cloudEnergy/cloudsimStorage/test_generic_fw. 
This configuration is for one iteration where 100% of the machines are involved in the crossover, and there is a 10% mutation probability. 
The simulator is located in the directory /localSpace/cloudEnergy/cloudsimStorage/evolutionary.

```nsgaii cloudsimstorage /localSpace/cloudEnergy/cloudsimStorage/test_generic_fw 1 100 10 /localSpace/cloudEnergy/cloudsimStorage/evolutionary```
