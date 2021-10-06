import Prim "mo:⛔";

module {
    // Checks whether an array contains a given value.
    public func contains<T>(xs : [T], y : T, equal : (T, T) -> Bool) : Bool {
        for (x in xs.vals()) {
            if (equal(x, y)) return true;
        }; false;
    };

    // Drops the first 'n' elements of an array, returns the remainder of that array.
    public func drop<T>(xs : [T], n : Nat) : [T] {
        let xS = xs.size();
        if (xS <= n) return [];
        let s = xS - n : Nat;
        Prim.Array_tabulate<T>(s, func (i : Nat) : T { xs[n + i]; });
    };

    // Returns the first 'n' elements of an array.
    public func take<T>(xs : [T], n : Nat) : [T] {
        let xS = xs.size();
        if (xS <= n) return xs;
        Prim.Array_tabulate<T>(n, func (i : Nat) : T { xs[i]; });
    };
};
