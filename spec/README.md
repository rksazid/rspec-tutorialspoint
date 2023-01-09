# rspec tutorialspoint

## Matchers
**Equality/Identity Matchers**
- eq = expect(actual).to eq expected (==)
- eql = expect(actual).to eql expected (eql?)
- be = expect(actual).to be expected (equal?)
- equal = expect(actual).to equal expected (equal?)

**Comparison Matchers**
- > = expect(actual).to be > expected
- >= = expect(actual).to be >= expected
- < = expect(actual).to be < expected
- <= expect(actual).to be <= expected
- be_between inclusive = expect(actual).to be_between(min, max).inclusive
- be_between exclusive = expect(actual).to be_between(min, max).exclusive
- match = expect(actual).to match(/regex/)

**Class/Type Matchers**
- be_instance_of = expect(actual).to be_instance_of(Expected)
- be_kind_of = expect(actual).to be_kind_of(Expected)
- respond_to = expect(actual).to respond_to(expected)

**True/False/Nil Matchers**
- be true = expect(actual).to be true
- be false = expect(actual).to be false
- be_truthy = expect(actual).to be_truthy
- be_falsey = expect(actual).to be_falsey
- be_nil = expect(actual).to be nil

**Error Matchers**
- raise_error(ErrorClass) = expect {block}.to raise_error(ErrorClass)
- raise_error("error mesage") = expect {block}.to raise_error("error message")
- raise_error(ErrorClass, "error message") = expect {block}.to raise_error(ErrorClass, "error message")
