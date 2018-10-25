part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function
@JS('Function')
class Func extends Obj {
  /// Creates a function in the global context (not a closure).
  ///
  /// [args] is a comma-separated list of identifiers, such as "a,b,c".
  ///
  /// Example: `Func('a,b','return a+b;')`
  @RepeatsArg('arg1')
  external factory Func(String arg1, String body);

  @deprecated
  external List get arguments;
  @nonstandard
  external Function get caller;
  external int get length;
  external String get name;
  @nonstandard
  external String get displayName;
  external void set displayName(String value);

  external apply(thisArg, [List args]);
  @RepeatsArg('arg1')
  external Function bind(thisArg, [arg1]);
  @RepeatsArg('arg1')
  external JS$call(thisArg, [arg1]);
  @nonstandard
  external bool isGenerator();
  @nonstandard
  @override
  external String toSource();
  @override
  external String JS$toString();
}
