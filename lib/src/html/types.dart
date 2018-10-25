part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection
@JS('HTMLCollection')
abstract class HtmlCollection {
  external int get length;
  external Node item(int index);
  external Node namedItem(String idOrName);
  external operator [](int index);
}

/// https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList
@JS('DOMTokenList')
abstract class DomTokenList {
  external int get length;
  external String get value;

  external String item(int index);
  external bool contains(String token);

  /// [tokens] can be a String or collection of strings.
  external void add(tokens);

  /// [tokens] can be a String or collection of strings.
  external void remove(tokens);
  external bool replace(String oldToken, String newToken);
  external bool supports(String token);
  external bool toggle(String token, [bool force]);
  external Iterator entries();
  external void forEach(
      void Function(String token, int index, DomTokenList list),
      [thisArg]);
  external Iterator keys();
  external Iterator values();
}
