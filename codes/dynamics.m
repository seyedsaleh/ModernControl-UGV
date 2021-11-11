clc
clear
%% parameters:
m = 2527;
p_air = 1.2;
c_drag =0.3;
c_ar = 55;
c_of =55;
c_af = 57300;
a_front = 2;
f_r = 0.12;
g = 9.8;
b_x = 0;
b_y = 0;
i_z = 6550;
i_r = 1.86;
i_f = 1.37;
r_eff =0.305;

% syms va m p_air c_drag c_ar c_of  c_af a_front f_r g b_x b_y i_z i_r i_f r_eff 
syms u1 u2
% x1=x; x2=y; x3=theta; x4=x_dot; x5=y_dot; x6=thete_dot;
syms x1 x2 x3 x4 x5 x6 u1 u2
states =[x1 x2 x3 x4 x5 x6];
%% linearization x1=x;x2=y;x3=theta;x4=x_dot;x5=y_dot;x6=thete_dot, u1=omega_w , u2=delta
h1 = -x5*x6-((p_air*c_drag*a_front*(x4^2)+f_r*m*g+m*g*sin(b_x))*(sign(x4)/m));
h2 = -x4*x6+((-2*c_ar*(((x5-i_r*x6)/x4)-g*sin(b_y))))/m;
h3 = (i_r*x6-x5)/(2*c_ar*i_r/(m*i_z)*x4);

o1 = (1/m)*(((c_of*(2*r_eff*u1-2*x4))/(r_eff*u1))*cos(u2) - (2*c_af*(u2-(x5-i_f*x6/x4)))*sin(u2) + c_of*(2*r_eff*u1-2*x4));
o2 = (1/m)*(c_of*((2*r_eff*u1-2*x4)/r_eff*u1)*sin(u2) - (2*c_af*(u2-(x5-i_f*x6/x4))*cos(u2)));
o3 = (i_f/i_z)*(c_of*((2*r_eff*u1-2*x4)/r_eff*u1)*sin(u2) - (2*c_af*(u2-(x5-i_f*x6/x4))*cos(u2)));


functions = [x4, x5, x6, h1, h2, h3]'+[0 0 0 o1 o2 o3]';
A_linear_symbolic = jacobian(functions,states);
B_linear_symbolic = jacobian(functions, [u1,u2]);
% balance point
A_linear_numeric = double(subs(A_linear_symbolic, [states,u1,u2] ,[0 0 0 1 0 0 1 0]));
B_linear_numeric = double(subs(B_linear_symbolic, [states,u1,u2] ,[0 0 0 1 0 0 1 0]));
c = eye(6,6);
%% Controllability and Observability
Controllability  = rank(ctrb(A_linear_numeric,B_linear_numeric));
Observability  = rank(obsv(A_linear_numeric,c));