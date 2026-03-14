# MATLAB-Based-Modeling-and-Estimation-of-Overhead-Transmission-Line-Parameters
MATLAB-Based Modeling and Estimation of Overhead Transmission Line Parameters
Transmission Line Parameter Determination Using MATLAB

Overview
This project presents a MATLAB-based computational approach for determining the electrical parameters of overhead power transmission lines. The program calculates the primary line constants:

• Resistance (R)
• Inductance (L)
• Capacitance (C)
• Conductance (G)

It further evaluates secondary parameters such as propagation constant, characteristic impedance, and ABCD parameters for short, medium, and long transmission lines.

The project is designed for undergraduate and postgraduate Electrical Engineering students studying Power Systems and Transmission Line Modeling.

Theoretical Background

A transmission line is characterized by distributed parameters:

R = Resistance per unit length (Ω/km)
L = Inductance per unit length (H/km)
C = Capacitance per unit length (F/km)
G = Conductance per unit length (S/km)

The propagation constant is defined as:

γ = √[(R + jωL)(G + jωC)]

where:
ω = 2πf (angular frequency)
f = system frequency (Hz)

The characteristic impedance is:

Z₀ = √[(R + jωL) / (G + jωC)]

These parameters are essential for voltage regulation, power flow, and stability analysis.

Project Features

• Calculation of R, L, C, G parameters
• Determination of characteristic impedance
• Computation of propagation constant
• ABCD parameter evaluation
• Short, medium, and long line modeling
• MATLAB-based numerical implementation

Software Requirements

• MATLAB R2020a or later
• No additional toolboxes required

How to Run

Clone the repository
git clone 

Open MATLAB

Navigate to the project directory

Run the main script:
main.m

Expected Output

• Transmission line primary constants
• Characteristic impedance
• Propagation constant
• ABCD parameters
• Performance analysis results

Applications

• Power system planning
• Transmission line design
• Academic laboratory simulation
• Power system performance evaluation

Example Use Case

For a 132 kV, 100 km transmission line at 50 Hz, the program computes line constants and evaluates voltage regulation using distributed parameter modeling.

Learning Outcomes

After completing this project, users will be able to:

• Understand distributed parameter modeling
• Implement analytical equations in MATLAB
• Analyze transmission line performance
• Interpret characteristic impedance and propagation effects

Author

Francesco
MSc – Electrical and Electronic Engineering
Specialization: Power Systems, Power Electronics, and Advanced Energy Systems

License

This project is for educational and research purposes.
