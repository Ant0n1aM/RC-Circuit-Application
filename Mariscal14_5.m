% RC Circuit Application 
% Define some constants 
RC = 0.2;
Vi = 2;
Va = 10;
% Use ode45 to solve the differential equation
% Solve for voltage after 0.25s
[t,V] = ode45(@(t,V)(Va-V)/RC, [0 0.25], Vi);
n = length(V);
fprintf("The voltage after 0.25s is %.2f V.\n",V(n))
% Solve for voltage after 0.5s
[t,V] = ode45(@(t,V)(Va-V)/RC, [0 0.5], Vi);
n = length(V);
fprintf("The voltage after 0.5s is %.2f V.\n",V(n))
% Solve for voltage after 1.0s
[t,V] = ode45(@(t,V)(Va-V)/RC, [0 1.0], Vi);
n = length(V);
fprintf("The voltage after 1.0s is %.2f V.\n",V(n))
% Logical comparison
near8v = V>7.9 & V<8.1;
time8v = t(near8v);
fprintf("It will take %.2f seconds for the voltage to reach 8.0V.\n",time8v)
% Plot the voltage for the first one second
plot(t,V)
ylim([0 10])
grid on 
title("The capacitator voltge in a RC circuit")
xlabel("Time(s)")
ylabel("Voltage(V)")