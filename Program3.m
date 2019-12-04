% Program: Problem3
% Author: Sarvesha Kumar Kombaiah Seetha
% Description: This script generates simulates a Markov Chain process
% by generating random outputs in accordance with the process' 
% Transition probability matrix.
P = input('Transition probability matrix: ');
s0 = input('Initial state: ');
N = input('Number of required transitions: ');
n=size(P,2);
nextstate=s0;
state(1)=s0;
for i=1:N
    if state(i)== 'a'&& rand > P(1,1)
        nextstate ='b';
    elseif state(i) =='b'&& rand < P(2,1)
        nextstate ='a';
    else
        nextstate=state(i);
    end
    state(i+1)=nextstate(1);
    endsequence=[];
    for i=1:N+1
        sequence =strcat(sequence, {' '},state(i));
    end
    sequence=char(sequence);
    disp(sequence);