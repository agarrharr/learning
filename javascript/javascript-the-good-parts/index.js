// Problem 1
function identity(a) {
  return a;
}

// Problem 2
function add(a, b) {
  return a + b;
}

function mul(a, b) {
  return a * b;
}

// Problem 3
function identityf(a) {
  // return function() {
  //   return a;
  // };
  return function() {
    return identity(a);
  };
}

// Problem 4
function addf(a) {
  // return function(b) {
  //   return a + b;
  // };
  return function(b) {
    return add(a, b);
  };
}

// Problem 5
function applyf(binaryFunction) {
  return function(a) {
    return function(b) {
      return binaryFunction(a, b);
    };
  };
}

// Problem 6
function curry(binaryFunction, a) {
  // return function(b) {
  //   return binaryFunction(a, b);
  // };
  return applyf(binaryFunction)(a);
}

// Problem 7
inc = addf(1);
inc = applyf(add)(1);
inc = curry(add, 1);

// Problem 8
function methodize(binaryFunction) {
  return function(b) {
    return binaryFunction(this, b);
  };
}

// Problem 9
function demethodize(method) {
  return function(a, b) {
    return method.call(a, b);
  };
}

// Problem 10
function twice(binaryFunction) {
  return function(a) {
    return binaryFunction(a, a);
  };
}

var double = twice(add);
var square = twice(mul);

// Problem 11
function composeu(unaryFunction1, unaryFunction2) {
  return function(a) {
    return unaryFunction2(unaryFunction1(a));
  };
}

// Problem 12
function composeb(binaryFunction1, binaryFunction2) {
  return function(a, b, c) {
    return binaryFunction2(binaryFunction1(a, b), c);
  };
}

// Problem 13
function once(binaryFunction) {
  var calledOnce = false;
  return function() {
    if(calledOnce) {
      throw('throw!');
    } else {
      calledOnce = true;
      return binaryFunction.apply(this, arguments);
    }
  };
}

// Problem 14
function counterf(a) {
  return {
    inc: function() {
        return a += 1;
      },
    dec: function() {
        return a -= 1;
      }
  };
}

// Problem 15
function revocable(f) {
  var revoked = false;
  var that = this;
  return {
    invoke: function() {
        if(! revoked) {
          return f.apply(that, arguments);
        } else {
          throw('throw!');
        }
      },
    revoke: function() {
        revoked = true;
      }
  };
}
