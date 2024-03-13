function [P, T, TF] = prepData()
inputs = [];
T = [];
TF = [];
load('PerfectArial.mat');
for i=1:10
    inputTarget= zeros(10,1);
    inputTarget(i,1)=1;
    TargetFilter = Perfect(:,i);
    local_data = "P";
    local_data=local_data.append(int2str(mod(i,10)));
    local_daata=local_data.append(".mat");
    load(local_data)
    inputs = [inputs P];
    tamData = size(P);
    for f=1:tamData(2)
        T = [T inputTarget];
        TF = [TF TargetFilter ];
    end
end
P = inputs;
end