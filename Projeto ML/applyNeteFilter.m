function [A] = applyNeteFilter(net,filter,P)
    tipoFilter = size(filter);
    if tipoFilter(1) == 1
        Pfiltrado = filter(P);
    else
        Pfiltrado = filter * P;
    end
    A = net(P);
end