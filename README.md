# html5

A `package:js` version of `dart:html`.

The current focus is on enabling web components for DDC and Dart2JS.

## Compatibility

Since this is essentially a Javascript access library, deprecated methods and properties are usually not included. Similarly, unconventional ways of achieving something may not be included. For example, all of the `on*` global event handlers on JS `HTMLElement`s are omitted and instead you should use the now conventional `addEventListener()`. This won't affect JS code that uses those functions under the hood, just that Dart code can't call them directly.

### Non-standard features

Most experimental or non-standard features are included, but are marked with an `@nonstandard` annotation. If a non-standard API is omitted it will be noted in the class's documentation.

### Symbols

Many places where strings are commonly used can also use `Symbol`s. For now at least, this library opts to require strings as object keys, etc. to keep the interface clean. Symbols are not explicitly supported.

### Prototypes and constructors

`prototype` and `constructor` are only defined on the root JS object class. To get them on any descendant class use `Obj.getPrototypeOf(obj)`. The returned object will have a `constructor` property.

The name `Obj` may change in the future.

## Methodology

The source of truth for this project is the MDN Javascript reference at https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference. While it isn't the actual spec, it does provide an easily consumable reference, albeit a live one.