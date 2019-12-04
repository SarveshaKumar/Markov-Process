Please read the PDF for the detailed problem statement and solution explanation.

Program1e.m - Finds (using MATLAB) 𝑝𝑛(𝑡)for all 𝑛 = 0,1, … , 𝑁for 𝑡 = 1,2, … ,50 and plots each 𝑝𝑛(𝑡) with time 𝑡. For this finds the one-step-ahead probabilities from the current probabilities for each time t.

Program1f.m - Finds the expected size of the population, 𝔼[𝑋𝑡], for times 𝑡 = 0,1,2,…, 100 and plots it. 

Program1g.m - Considers that a hostile situation has occurred that decreases the probability of growth with time and increases probability of death with time as given below:
                                      𝑃(𝑋𝑡+1 = 𝑛 + 1|𝑋𝑡 = 𝑛) = 0.9𝑒−2𝑡
                                      𝑃(𝑋𝑡+1 = 𝑛 − 1|𝑋𝑡 = 𝑛) = 0.9(1 − 𝑒−2𝑡)
                                      𝑃(𝑋𝑡+1 = 𝑛|𝑋𝑡 = 𝑛) = 0.1
                                      𝜆𝑁 = 𝜇0 = 0
Under this situation, it is expected that the population size will decrease. This prgram Takes 𝑁 = 100, initial
population is 90, and plots 𝔼[𝑋𝑡] for 𝑡 = 0,1, … ,1000. 

Program2.m - This script calculates state transition probabilities from a given sequence of data from a Markov Chain process.

Program3.m - This script generates simulates a Markov Chain process by generating random outputs in accordance with the process.