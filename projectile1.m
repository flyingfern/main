function [range,mh,time] = projectile1(v,angle,h)
if h<0 
    sprintf("Try again with a positive h");
end
g=9.81;
<<<<<<< HEAD
=======

>>>>>>> b71f0601863f168bcc060dd7cbc94736c3886888
opts = odeset('events',@events,'Refine',8);    
[t,y] = ode45(@bagel,[0 inf],[h v*sind(angle)],opts);

    function [value,isterminal,direction] = events(t,w)
    % EVENTS locates when value is zero.  
        value = w(1);     % detect time when w(1) is zero
        isterminal =1 ;   % stop the integration
        direction = -1;   % picks up only decreasing functions
    end
    function [wdot] = bagel(t,w)
        wdot(1) = w(2);
        wdot(2) = -g;
        wdot = wdot';
    end
y
range=max(y);
mh=max(y);
time=t(end);

plot(t,y(:,2),'r--')

end    