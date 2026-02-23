function dx = Circuito(t, x)

    R1 = 1000;
    R2 = 1000;
    R3 = 10000;
    R4 = 15000;

    C1 = 0.0000001;
    C2 = 0.0000001;

    Vin = 1.0;

    Vo  = x(1);
    dVo = x(2);

    a = (R1*R2*R3*C1*C2)/(R3+R4);
    b = (R1*R3*C1 + R2*R3*C1 - R1*R4*C2)/(R3+R4);
    c =  R3/(R3+R4);

    dx = zeros(2,1);
    dx(1) = dVo;
    dx(2) = (Vin - b*dVo - c*Vo)/a;

end