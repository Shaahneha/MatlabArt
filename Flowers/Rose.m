n=800;
p=pi;
[R,T]=ndgrid(linspace(0,1,n),linspace(-2,20*p,n));
x=1-(.5)*((5/4)*(1-mod(3.6*T,2*p)/p).^2-.25).^2;
U=2*exp(-T/(8*p));
L=sin(U);
J=cos(U);
y=1.99*(R.^2).*(1.2*R-1).^2.*L;
K=x.*(R.*L+y.*J);
X=K.*sin(T);
Y=K.*cos(T);
Z=x.*(R.*J-y.*L);
surf(X,Y,Z,'LineStyle','n',FaceA=.3)
axis off;
colorm='jet';
