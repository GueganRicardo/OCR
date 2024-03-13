function y = myclassify(P1, FI)
y = zeros(1, length(FI)); 

%Opção1 - Net single layer sem filtro
%Opção2 - Net double layer sem filtro
%Opção3 - Net single layer com filtro
%Opção4 - Net double layer com filtro
opcao = 1;

if opcao == 1
    net = load("singler.mat");
elseif opcao == 2
    net = load();
elseif opcao == 3
    net = load();
elseif opcao == 4
    net = load();
end

%mudar o nome para a net que queremos testar
for i = 1:length(FI)
    a = sim(net.net, P1(:, FI(i))); 
    [~, maxIndex] = max(a);
    y(i) = maxIndex;
end
% Return the result
end