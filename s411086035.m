 NubOfTerms = 1000001 ; % Must be an Odd Number
% You may try 3, 17, 33, ...
T = 1 ;
T1 = 0.1 ; % You may try 0.1, 0.2, 0.3, ...
w0 = 2*pi/T ;
t = -2 : 0.005 : 2 ;
xt = zeros(1,length(t));
ak = zeros(1,NubOfTerms);
xt = zeros(1,length(t));
for idx=1:NubOfTerms
k = idx-((NubOfTerms+1)/2);
if (k == 0)
ak(idx) = -7/4 ;
else
ak(idx) = [7-7*cos(k*pi)]/(2*k*k*pi*pi);
end
xt = xt + ak(idx) * exp(j*k*w0*t);
end
subplot(2,1,1) 
stem([1:NubOfTerms] -((NubOfTerms+1)/2), imag(ak))
subplot(2,1,2)
plot(t,xt)
grid on
axis([-2 2 -3.5 0])
hold 