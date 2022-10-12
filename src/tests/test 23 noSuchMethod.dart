import 'dart:developer';

@override
class MockList<T> implements List<T> {
  dynamic noSuchMethod(Invocation invocation) {
    print(invocation);
    print(invocation.isGetter);
    print(invocation.isMethod);
    log(invocation.toString());
    // super.noSuchMethod(invocation); // Will throw.
  }
}
void main() {
  MockList().add(42);
  // MockList()..number = 42; // error
  // dynamic mock = MockList();
  // mock.number = 42;

}