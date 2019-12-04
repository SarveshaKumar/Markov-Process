% Program: Problem2
% Author: Sarvesha Kumar Kombaiah Seetha
% Description: This script calculates state transition probabilities 
% from a given sequence of data from a Markov Chain process. 
a = input('Input transitions: ','s');
n=length(a);    
s=[]; 
j=0; 
b=[];
for i=1:n
    if (~strcmp(a(i), ' ')) % detects the ' ' character which separates two states
        s=[s,char(a(i))];   % stores the character in 's'
    elseif (~isempty(s))    
        j=j+1; 
        b{j}=s;             %stores the state in bs=[];
    end
    if (i==n && ~isempty(s))
        j=j+1;
        b{j}=s;
    end
end% This part of the code detects different states from the given sequence.
states(1)=b(1);
l=1;
for i=2:length(b)
    num=0;
    for j=1:i-1
        if (~strcmp(b(i),b(j))) 
            num=num+1;
        end
    end
    %       keyboard
    if(num==i-1) 
        l=l+1; 
        states(l)=b(i);
    end
end
num=zeros(length(states),length(states));
for i=1:length(states)
    for j=1:length(states)
        for k=1:length(b)-1
            if (strcmp(b(k),states(i)) && strcmp(b(k+1),states(j)))
                num(i,j)=num(i,j)+1;
            end
        end
    end
    num(i,:)=num(i,:)/sum(num(i,:));
end
P = num;    %% State Transition Matrix          
disp(P);