function [net, TR] = singleLayer(P,T)
net = linearlayer;
net.adaptFcn = "adaptwb";
net.trainFcn = "trainscg";
%opções para a função de ativação: hardlim purelin logsig
net.layers{1}.transferFcn='logsig';
[net, TR] = train(net,P, T);
end