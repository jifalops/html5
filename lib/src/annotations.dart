/// Denotes a non-standard feature, as marked by MDN.
const nonstandard = _Nonstandard();

class _Nonstandard {
  const _Nonstandard();
}

/// Denotes an experimental feature, as marked by MDN.
// const experimental = _Experimental();

// class _Experimental {
//   const _Experimental();
// }

/// Marks a function arg as being destructured in Javascript. The parameter can
/// take a single value or a list of values.
class Destructured {
  const Destructured(this.name, [this.type = dynamic]);
  final String name;
  final Type type;
}

/// Marks a function arg as being repeatable in Javascript, but not destructured.
/// There is no equivalent to this in Dart.
class RepeatsArg {
  const RepeatsArg(this.name);
  final String name;
}

/// A constructor definition that is required by Dart but does not exist in
/// Javascript. This is typically for abstract JS classes.
const fakeConstructor = _FakeConstructor();

class _FakeConstructor {
  const _FakeConstructor();
}

/// Denotes the class is defined in Javascript as a mixin, and cannot be used
/// with the `@JS()` annotation.
const jsMixin = _JsMixin();

class _JsMixin {
  const _JsMixin();
}

/// Marks a class or member as lacking reference documentation.
const undocumented = _Undocumented();

class _Undocumented {
  const _Undocumented();
}