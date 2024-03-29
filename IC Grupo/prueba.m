p1 = [119.731, 116.194, 197.746];
p2 = [149.121, 228.872, -1.84052];
p3 = [-77.3489, 103.985, -189.203];
p4 = [-205.231, -178.782, 178.477, -180.45];
%p1 = [-35.6911, -54.6364, -0.132831];
%p2 = [29.2781, 27.5625, 50.0382];
%p3 = [-18.0443, 25.737, -45.063];
%p4 = [-62.5345, -57.6305, -58.2678, -57.6693];
Nx=50;
Ny=50;
m = zeros(Nx,Ny);
for i = 1:Nx
	for j = 1:Ny
		in = [-1 , i/Nx , j/Ny];
		r1 =umbral( dot(in,p1) );
		r2 = umbral( dot(in,p2) );
		r3 = umbral( dot(in,p3) );
		r = [-1, r1, r2, r3];
		res=umbral(dot(r,p4));
		if res > 0
			m(i,j)=1;
		else
			m(i,j)=-1;
		endif 
	endfor
endfor
mesh(m)
