# run over all primes p
# mark p mod q
# stop when all units mod q are marked

def L(q):
    if q.mod(100)==0:
        print 'Now at q=', q
    R = IntegerModRing(q)
    G = R.list_of_elements_of_multiplicative_group()
    for p in prime_range(2,q^2):
        x = p.mod(q)
        if x in G and p<>x:
            G.remove(x)
        if G == []:
            break
    if G <> []:
        print 'Error at q=', q
    L = log(p)/log(q)  
    return L.n()

def mod_L(q):
    if q.mod(100)==0:
        print 'Now at q=', q
    R = IntegerModRing(q)
    G = R.list_of_elements_of_multiplicative_group()
    for p in prime_range(2,q^2):
        x = p.mod(q)
        if x in G:
            G.remove(x)
        if G == []:
            break
    if G <> []:
        print 'Error at q=', q
    L = log(p)/log(q)  
    return L.n()


def P(q):
    return q^L(q)

def iterated_plot_L(q_max):
    X = srange(2,q_max+1)
    A = [L(q) for q in X]
    return list_plot(zip(X, A), plotjoined=1)

def sieve_plot_L(q_max):
    Q_range = srange(2,q_max+1)
    length = q_max-1
    Q_units = [IntegerModRing(q).list_of_elements_of_multiplicative_group() for q in Q_range]
    num_targets = sum([len(Q_units[k]) for k in range(length)])
    p = 1
    L_value_table = []
    while num_targets > 0:
        p = p.next_prime()
        for i in srange(length):
            q = Q_range[i]
            x = p.mod(q)
            if x in Q_units[i]:
                Q_units[i].remove(x)
                if Q_units[i]==[]:
                    L_value_table.append([q, (log(p)/log(q)).n()])
                num_targets = num_targets-1
    L_value_table.sort()
    return list_plot(L_value_table, plotjoined=1)

def L_vs_mod(q_max):
    X = srange(2,q_max+1)
    A = [L(q) for q in X]
    B = [mod_L(q) for q in X]
    F = list_plot(zip(X, A), plotjoined=1, color='red')
    F += list_plot(zip(X, B), plotjoined=1, color='blue')
    return F.show()
