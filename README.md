# Efficient FPGA-based Accelerator for Post-Processing in Object Detection
This repository include the source code and testing ways in the paper Efficient FPGA-based Accelerator for Post-Processing in Object Detection.
```plaintext
.
├── HW                   # Hardware-related engineering and source code
│    ├── implementation
│            ├──dnn_690t # project folder, the project file is dnn_690t.xpr (include synthesis and implementation reports)   
│    ├── simulation
│            ├──dnn_690t # project folder, the project file is dnn_690t.xpr (RTL-level simulations can be performed)
├── SW
│   ├── 
│
├── DATA
│   └── 
│
└── README.md
```
## Part1:  The implementation report of our accelerator
---
Our accelerator implemented on a Xilinx Virtex-7 690t FPGA runs at 150MHz. The synthesis and implementation details can be found in project ./implementation/dnn_690t/dnn_690t.xpr. The xpr file needs to be opened with __Vivado 2018.3__. The resource utilization of our accelerator is shown in below image.
![File Open Error](HW/implementation/result/resource.png)

## Part2:  The performance of our accelerator
---
The First step, a joint simulation environment of __Vivado 2018.3 and Modelsim 10.6d__ is required to evaluate the accelerator performance. The simulation environment setup can be found at https://docs.xilinx.com/r/en-US/ug900-vivado-logic-simulation/Simulating-with-Third-Party-Simulators.

The second step, Open . /simulation/dnn_690t/a.xpr project, find the testbench file sim2/tb_position_resolution.v, and change the file paths in the code on lines 73 to 75.

The third step, start the simulation by adding the yolo_layer_top module to the wave window to see the results and performance. The result signal is final_det and the result valid signal is final_det_vaild. counter cnt_perf records the number of clocks used for processing.The simulation waveform is shown below.
![File Open Error](HW/simulation/image/sim_fig1.png)

The fourth step, the number of clock cycles for the full processing flow is recorded and the processing time is calculated based on the running frequency. The performance of the NMS module can be obtained in the same way. Processing time is calculated as time = (final-start)*(1/150), where final is the clock count of the last result and start is the clock count of the first valid input data.