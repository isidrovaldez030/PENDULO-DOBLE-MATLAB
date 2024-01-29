function dy=DP(t,y)
%...............Definicion de los parametros.........%
g=9.81;
tau1=0;
tau2=0;
m1=0.2;
m2=0.1;
l1=0.3;
l2=0.25;
h1=0.2;


m11=(m1+m2)*l1;
m12=l2*m2*cos(y(1)-y(3));
m21=l1*cos(y(1)-y(3));
m22=l2;
M=[m11 m12; m21 m22];

c1=h1;
c2=-m2*l2*y(4)*sin(y(1)-y(3));
c3=-l1*y(2)*sin(y(1)-y(3));
c4=0;
C=[c1 c2; c3 c4];

g1=(m1+m2)*g*sin(y(1));
g2=g*sin(y(3));
G=[g1;g2];

dq=[y(2);y(4)];
tau=[tau1;tau2];
ddq=M.'*(C*dq-G);

%..........................................%
dx=zeros(4,1);
%...............Definicion de la dinamica del sistema........%
dy(1, 1) = y(2);
dy(2, 1) = ddq(1);
dy(3, 1) = y(4);
dy(4, 1) = ddq(2);
