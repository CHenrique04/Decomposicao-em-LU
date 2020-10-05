//UNIVERIDADE FEDERAL DO AMAZONAS - UFAM
//FACULDADE DE TECNOLOGIA - FT
//ENGENHARIA DE MATERIAIS
//CALCULO NUMÉRICO - IEC082
//CARLOS HENRIQUE ANDRADE DE OLIVEIRA

n = input("Digite o numero de ordem: ")
matA = input("Digite a matriz: ")
S = matA
for i = 1:n,
    pivot(i) = i;
end, deter = 1,
for j = 1:n - 1,
    p = j, Smax = abs(S(j,j)),
    for k = j + 1:n,
        if abs(S(k,j)) > Smax then
            Smax = abs(S(k,j)), p = k;
        end,
     end,
end
if p <> j  then
    for k = 1:n,
        t = pivot(j),pivot(j) = pivot(p),pivot(p) = t,
        deter = -deter;
    end
end
deter = deter * S(j,j),
if abs(S(j,j)) <> 0 then
    for i = j + 1:n,
        m = S(i,j)/S(j,j),S(i,j) = m;
        for k = j + 1:n,
            S(i,k) = S(i,k) - m*S(j,k);
        end,
    end,
end
deter = deter * S(n,n);
