class DivisionByZeroException implements Exception {
  // return methord error message
  String errorMessage() => "Error: Division by zero is not allowed.";
}

int divideNumbers(int a, int b) {
  try {
    if (b == 0) {
      // if the divisor is zero
      throw DivisionByZeroException();
    }
    // division and return the result
    return a ~/ b;
  }

  // Catch any exceptions
  catch (e) {
    // division by zero exception, throw its error message
    if (e is DivisionByZeroException) {
      print(e.errorMessage());
    } else {
      print("Error: ${e.toString()}");
    }
    throw e;
  }
}

void main() {
  // Test cases
  try {
    print(divideNumbers(20, 2));
    print(divideNumbers(20, 0));
    print(divideNumbers(20, int.parse("abc")));
  } catch (e) {
    print("An error occurred: $e");
  }
}
//    ______________________________________________________________    //
