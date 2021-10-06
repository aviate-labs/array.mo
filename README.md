# Array

Contains some (complementing) functions in addition to `mo:base/Array`.

## Usage

### Contains

Checks whether an array contains a given value.

```
contains : (xs : [T], y : T, equal : (T, T) -> Bool) -> Bool
```

### Drop

Drops the first 'n' elements of an array, returns the remainder of that array.

```
drop<T> : (xs : [T], n : Nat) -> [T]
```

### Take

Returns the first 'n' elements of an array.

```
take<T> : (xs : [T], n : Nat) -> [T]
```
