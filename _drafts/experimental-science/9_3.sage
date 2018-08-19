F = GF(2)
V = VectorSpace(F,3)
R = MatrixSpace(F,3,3)

unit = V((1,1,1))

def count_lines_with_ones(A):
    col = A.columns()
    row = A.rows()
    return ZZ(col.count(unit) + row.count(unit))

# for i in srange(20):
#     A = R.random_element()
#     print A, count_lines_with_ones(A)

def count_lines_with_ones_mod_2(A):
    return count_lines_with_ones(A).mod(2)

total_counter = 0
counter = list()
matrices = list()
for i in srange(2*3+1):
    counter.append(0)
    matrices.append([])

for A in R:
    total_counter += 1
    i = count_lines_with_ones(A)
    counter[i] += 1
    matrices[i].append(A)

if total_counter != 2^9:
    print 'Warning: Loop did not touch every matrix exactly once.'
else:
    print 'Confirmation: Loop seems complete. '
