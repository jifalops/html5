part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object
@JS('Object')
class Obj {
  external factory Obj([value]);

  external static int get length;
  external static Obj get prototype;
  @Destructured('sources', Obj)
  external static Obj assign(Obj target, sources);
  external static Obj create(Obj proto, [Obj properties]);
  external static Obj defineProperty(
      Obj obj, /*Symbol|*/ String prop, Descriptor descriptor);

  /// [props] is an object containing one or more property -> [Descriptor]
  /// mappings.
  external static Obj defineProperties(Obj obj, Obj props);
  external static List/*<List<String>>*/ entries(Obj obj);
  external static Obj freeze(Obj obj);
  external static Obj fromEntries(Iterable entries);
  external static Descriptor getOwnPropertyDescriptor(
      Obj obj, /*Symbol|*/ String prop);
  external static Obj getOwnPropertyDescriptors(Obj obj);
  external static List/*<String>*/ getOwnPropertyNames(Obj obj);
  external static List/*<Symbol>*/ getOwnPropertySymbols(Obj obj);
  external static Obj getPrototypeOf(Obj obj);
  external static bool JS$is(value1, value2);
  external static bool isExtensible(Obj obj);
  external static bool isFrozen(Obj obj);
  external static bool isSealed(Obj obj);
  external static List/*<String>*/ keys(Obj obj);
  external static Obj preventExtensions(Obj obj);
  external static Obj seal(Obj obj);
  external static Obj setPrototypeOf(Obj obj, Obj proto);
  external static List<dynamic> values(Obj obj);

  // TODO: this may need a more specific signature.
  external Function get constructor;
  external void set constructor(Function value);
  @nonstandard
  external Obj get JS$__proto__;
  external void set JS$__proto__(Obj value);
  @nonstandard
  external NoSuchMethodHandler get JS$__noSuchMethod__;
  external void set JS$__noSuchMethod__(NoSuchMethodHandler value);

  external bool hasOwnProperty(/*Symbol|*/ String prop);
  external bool isPrototypeOf(Obj obj);
  external bool propertyIsEnumerable(/*Symbol|*/ String prop);
  @nonstandard
  external String toSource();
  external String toLocaleString();
  external String JS$toString();
  @nonstandard
  external void unwatch(/*Symbol|*/ String prop);
  external valueOf();
  @nonstandard
  external void watch(/*Symbol|*/ String prop, ChangeHandler handler);

  external operator [](/*Symbol|*/ String prop);
  external operator []=(/*Symbol|*/ String prop, value);
}

/// [value] and [writable] are for data descriptors only.
/// [get] and [set] are for accessor descriptors only.
@JS()
@anonymous
class Descriptor {
  external factory Descriptor({
    bool configurable,
    bool enumerable,
    value,
    bool writable,
    Getter get,
    Setter set,
  });
  external bool get configurable;
  external bool get enumerable;
  external get value;
  external bool get writable;
  external Getter get get;
  external Setter get set;
}
