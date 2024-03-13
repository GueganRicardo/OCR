function [net, TR] = twoLayers(P,T)
%testar diferentes quantidades de neurónios
hiddenLayerSize = 8;
net = patternnet(hiddenLayerSize);
net.divideParam.trainRatio = 90/100;
net.divideParam.valRatio = 10/100;
net.divideParam.testRatio = 0/100;
%opções para a função de ativação: hardlim purelin logsig
%comentar a linha 10 e 11 para a patternnet
net.layers{1}.transferFcn='purelin';
net.layers{2}.transferFcn= 'purelin';
net.trainParam.max_fail = 500;
net.performFcn = 'mse';
net.trainParam.epochs = 1000;
[net, TR] = train(net,P,T);
end