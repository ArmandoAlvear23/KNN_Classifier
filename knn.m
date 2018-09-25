function [label] = knn(A,L,P,K)

[~, iL] = closestDist(A,P,K);

%Make a vector container for K labels
kLabels = [1,K];

%Insert K nearest labels into labels vector
for n = 1:K
    kLabels(1,n) = L(iL(n),1);
end

labelCount = zeros(10,1);

for n = 1:K
    labelCount(kLabels(1,n),1) = labelCount(kLabels(1,n),1) + 1;
end
[~, I] = max(labelCount);
predictedLabel = I;

label = predictedLabel;

end







