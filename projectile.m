function [v,time] = projectile(h) 
% PROJECTILE takes a height in meters and returns the time that it take to
% fall from h height in meters
g=9.81;
time=sqrt(2*h/g);
v = sqrt(2*g*h);
end

