a = [0 .1963 0;-.1963 0 0.9817;0 0 0];
b = [.025;0;-.333];
c = [1 0 0];
d = [0 -470.63;0.9817 -3.583];
cq = [0 0 1];
Q = [0 0 1;0 1 0;1 0 0];
a_tilda = inv(Q)*a*Q;
a11 = a_tilda(1:2,1:2);
a21 = a_tilda(3,1:2);
a12 = a_tilda(1:2,3);
a22 = a_tilda(3,3);

l2 = -18.264;
l1 = -2397.51;

t=a12+[l1 ;l2]*a22 - d*[l1 ;l2];
lq = [1 0 l1;0 1 l2];
l = lq*inv(Q);
r = l*b;
f=inv([c;l]);
f1=f(1:3,1);
f2 =f(1:3,2:3);




