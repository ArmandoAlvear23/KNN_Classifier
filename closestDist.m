%%%Given a matrix A and vector P, return the closest point in A.
%%%Assume each column in A is a point.
function [minK, iD] = closestDist(A,P,K)

g = size(A,2); %# of columns in A

%Vector container for distances between A points and test point
D = ones(1, g); %Create a vector D with g # of columns

%Vector container for points in A closest to test point
kmat = ones(size(A,1),K); %Create a vector  with same rows as A and K columns

%Loop to get the distances between all A points and the test point
for n = 1:g %loop over number of columns in A
    pointA = A(:,n); %get single point of A (column)
    dist = edistance(pointA,P); %get distance between A point and test point
    D(n) = dist; %store the distance inside vector D
end

%Sort vector D with distances from smallest to largest and get the index
[s,i] = sort(D, 'ascend'); %sort vector D and get indexes

%disp(s);
%disp(i);

%Get k number of nearest A points around test point
for n = 1:K %cycle through K lowest points
    kmat(:,n) = A(:,i(n));
end

%return the vector with the k nearest points
minK = kmat;
iD = i;
end
