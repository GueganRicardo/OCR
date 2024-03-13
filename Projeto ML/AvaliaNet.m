function [MSRETrain,AcTrain, MSREVal, AcVal] = AvaliaNet(net,P, T, TR)
% Mede a performance no trainig set
resultadoTrain = net(P(:,TR.trainInd));
targetTrain = T(:,TR.trainInd);
MSRETrain = sqrt(mean(mean((resultadoTrain - targetTrain).^2)));
corretos = 0;
total = length(TR.trainInd);
for i = 1:length(TR.trainInd)
    [~, maxIndex] = max(resultadoTrain(:,i));
    if T(maxIndex, TR.trainInd(1,i))==1
        corretos = corretos + 1;
    end
end
AcTrain = (corretos/total) * 100;
% Mede a performance no validation set
resultadoVal = net(P(:,TR.valInd));
targetVal = T(:,TR.valInd);
MSREVal = sqrt(mean(mean((resultadoVal - targetVal).^2)));
corretos = 0;
total = length(TR.valInd);
for i = 1:length(TR.valInd)
    [~, maxIndex] = max(resultadoVal(:,i));
    if T(maxIndex, TR.valInd(1,i))==1
        corretos = corretos + 1;
    end
end
AcVal = (corretos/total) * 100;
end