
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var ret: [T.Element] = []
    for lhsItem in lhs {
        for rhsItem in rhs {
            if (lhsItem == rhsItem) {
                ret.append(lhsItem)
            }
        }
    }
    return ret
}

var x = anyCommonElements([1, 2, 3], [2])
print("\(x)")

