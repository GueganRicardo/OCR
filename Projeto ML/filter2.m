function [filter] = filter2(P,T)
filter = perceptron;
filter.inputs{1}.size = 256;
filter.layers{1}.size = 256;
%O filter não utiliza bias
filter.biasConnect(1) = 0;
%opções para a função de ativação: hardlim purelin logsig
filter.layers{1}.transferFcn = 'hardlim';
filter.trainParam.epochs = 500;
filter = train(filter,P,T);
end