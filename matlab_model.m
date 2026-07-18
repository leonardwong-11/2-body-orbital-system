%% Constants
G = 6.6743e-11;
mass1 = 5.972e24;      % Earth mass (kg)
mass2 = 7.348e6;       % Satellite mass (kg)

%% Load and run the Simulink model
mdl = 'simulink_model';
load_system(mdl);

simOut = sim(mdl);
simOut.position.signals.values(1:5,:)
x = simOut.position.signals.values(:,1);
y = simOut.position.signals.values(:,2);

figure
plot(x,y,'LineWidth',1.5)
hold on
plot(0,0,'bo','MarkerFaceColor','b','MarkerSize',8)

axis equal
grid on
xlabel('x (m)')
ylabel('y (m)')
title('Satellite Orbit')