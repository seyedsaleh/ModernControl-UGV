clear all
clc

% system parameters
% v_d = 1 m/s , theta_d_dot = 1 rad/s

% symbols
syms x_e y_e theta_e v v_d theta_dot theta_d_dot u1 u2

states = [x_e y_e theta_e];

u1 = theta_d_dot - theta_dot;
u2 = v_d - v;

x_e_d = v_d*cos(theta_e) + y_e*theta_d_dot - v;
y_e_d = v_d*sin(theta_e) - x_e*theta_d_dot;
theta_e_d = theta_d_dot - theta_dot;

f = [x_e_d; y_e_d; theta_e_d]';

% linearization around [0,0,0]
As = jacobian(f,states); % symbolic
A = subs(As, [states, theta_d_dot, v_d], [0 0 0 0.1963 0.9817]);
A = double(A);

B1 = diff(x_e_d, theta_dot) +  diff(x_e_d, theta_d_dot);
B2 = diff(x_e_d, v_d);
B3 = diff(y_e_d, theta_dot) +  diff(x_e_d, theta_d_dot);
B4 = diff(y_e_d, v_d);
B5 = diff(theta_e_d, theta_dot) -  diff(x_e_d, theta_d_dot);
B6 = diff(theta_e_d, v_d);

Bs = [B1 B2; B3 B4; B5 B6]; % symbolic
B = subs(Bs, states, [0,0,0]);

% Bs = jacobian(f,u); % symbolic
% B = subs(Bs, f, [0 0 0]);
B = double(B);
B = B*[0.333 -0.333;0.025 0.025];
C = [1 0 0;0 1 0];
D = [0 0;0 0];

% jordan realisation
sys = ss(A,B,C,D);
[v, j] = jordan(sys.A);
A_bar = inv(v)*A*v;
B_bar = inv(v)*B;
C_bar = C*v;

% checking cotrolability and obsevability
Co = ctrb(A, B);
Ob = obsv(A, C);

x = rank(ctrb(A, B));
y = rank(obsv(A, C));

% state feedback
K = place(A,B,[-20, -4-4i,-4+4i]);

%full order observer
L = place(A',C',[-21, -22, -23])'

