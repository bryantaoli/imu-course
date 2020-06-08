Ro=[0.52376327;-0.73798;-0.72758];
Q1=RotationToQuater(Ro);
DCM1=RotationToDCM(Ro);
Euler1=DCMToEuler(DCM1);
Q2=EulerToQuater(Euler1);
Q1-Q2
