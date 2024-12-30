function Qult = vesic(b,l,d,phi,gama)
  % this function return Force, not stress!
  phi=pi/180*phi; %make phi by degree
  %F.S
  nq=(exp(pi.*tan(phi))).*(tan(pi/4+phi/2)).^2;
  ng=2*(nq+1).*tan(phi);
  ngs=1-0.4*b/l;
  ngd=1;
  nqs=1+(b/l).*tan(phi);
  nqd=1+2.*tan(phi).*((1-sin(phi)).^2).*(atan(d/b));
  q = gama*d;

  qult=0.5.*b.*gama.*ng.*ngs.*ngd+q.*nq.*nqs.*nqd;
  Qult = qult.*b.*l;
end
