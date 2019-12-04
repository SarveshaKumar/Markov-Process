% Program1g
clear all;
p(1,:)=zeros(1,101); 
p(1,91)=1;
X=0:100;
e(1)=p(1,:)*X';
T=1000;
for t=1:T
    % calculating the time varying P matrix
    P=zeros(101);P(1,1)=1-0.9*exp(-2*t);
    P(1,2)=0.9*exp(-2*t);
    P(101,100)=0.9*(1-exp(-2*t));
    P(101,101)=1-0.9*(1-exp(-2*t));
    for i=2:100
        for j=i-1:i+1
            if (j==i-1) 
                P(i,j)=0.9*(1-exp(-2*t));
            elseif (j==i+1) 
                P(i,j)=0.9*exp(-2*t);
            elseif (j==i) 
                P(i,j)=0.1;
            end
        end
    end
    % Caluculating the probability density vector 
    pp(t+1,:)=p(t,:)*P;
    % calculating the expectation
    e(t+1)=p(t+1,:)*X';
end
plot(1:T+1, e);
axis([0 T -10 100])
% plot(1:T+1, p(:,:), 'LineWidth', 2);