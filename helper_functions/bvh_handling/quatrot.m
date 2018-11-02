function w = quatrot(v, q)

% BY - Shashi Mohan Singh (edited)| 2018 | University of Washington | IITGN
% function w = quatrot(v, q)
% rotates vector V by quaternion Q
% v = v(:);

w = zeros(size(v));
    t2 = q(:,1).*q(:,2);
    t3 = q(:,1).*q(:,3);
    t4 = q(:,1).*q(:,4);
    t5 = -q(:,2).*q(:,2);
    t6 = q(:,2).*q(:,3);
    t7 = q(:,2).*q(:,4);
    t8 = -q(:,3).*q(:,3);
    t9 = q(:,3).*q(:,4);
    t10 = -q(:,4).*q(:,4);
    w(:,1) = 2*((t8 + t10).*v(:,1) + (t6 - t4).*v(:,2) + (t3 + t7).*v(:,3)) + v(:,1);
    w(:,2) = 2*((t4 + t6).*v(:,1) + (t5 + t10).*v(:,2) + (t9 - t2).*v(:,3)) + v(:,2);
    w(:,3) = 2*((t7 - t3).*v(:,1) + (t2 +  t9).*v(:,2) + (t5 + t8).*v(:,3)) + v(:,3);


