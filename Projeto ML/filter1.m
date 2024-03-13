function [filter] = filter1(P,T)
filter = T * pinv(P);
end