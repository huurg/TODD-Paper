function [out, N_G, N_search] = RMExecTime(n, GHz)
    r = 1:(n-4);
    N_G = sum(factorial(n)./(factorial(n-r).*factorial(r)));
    N_search = 2^N_G;
    out = N_search/(GHz*10^9);
end