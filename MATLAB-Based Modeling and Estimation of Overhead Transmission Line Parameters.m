clc;
clear;
%Required input for program
VR=input('Enter the receiving end voltage (V):');
power=input('Enter the load power (W):');
pf_load=input('Enter the load power factor:');
R=input('Enter the line resistance(ohms):');
XL=input('Enter the line reactance(ohms):');

%Calculate the load power factor angle
theta_load=acos(pf_load);

%Load current magnitude(I=P/VR*pf)
I=power/(VR*pf_load);

%Complex load current
I_complex=I*(cos(theta_load)-1i*sin(theta_load));

%Total line impedance(Z=R+jXL)
Z=complex(R,XL);

%Sending end voltage calculation
VS=VR+Z*I_complex;

%Magnitude of sending end voltage
VS_mag=abs(VS);

%Angle between VS and I to calculate sending end power factor
theta_sending=angle(VS)-angle(I_complex);
pf_sending=cos(theta_sending);

%Sending end complex,active and reactive power
S_sending=VS*conj(I_complex);
p_sending=real(S_sending);
q_sending=imag(S_sending);

%Power loss in TL
p_loss=I^2*R;

%Transmission efficiency
efficiency=(power/p_sending)*100;

%Voltage regulation calculation
VR_mag=VR;
voltage_regulation=((VS_mag-VR_mag)/VR_mag)*100;

%Displaying results
disp('results:');
disp(['sending end voltage:',num2str(VS_mag),'V']);
disp(['sending end power factor:',num2str(pf_sending)]);
disp(['Transmission efficiency:',num2str(efficiency),'%']);
disp(['voltage regulation:',num2str(voltage_regulation),'%']);
disp(['power losss:',num2str(p_loss),'W']);