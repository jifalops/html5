part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement
@JS('HTMLElement')
abstract class HtmlElement extends Element {
  @fakeConstructor
  external factory HtmlElement();
  external String get accessKey;
  external String get accessKeyLabel;
  external String get contentEditable;
  external void set contentEditable(String value);
  external bool get isContentEditable;
  @deprecated
  external /*HTMLMenuElement*/ get contextMenu;
  @deprecated
  external void set contextMenu(/*HTMLMenuElement*/ value);
  external /*DOMStringMap*/ get dataset;

  /// "ltr", "rtl", or "auto".
  external String get dir;
  external void set dir(String value);
  external bool get draggable;
  external void set draggable(bool value);
  external /*DOMSettableTokenList*/ get dropzone;
  external bool get hidden;
  external void set hidden(bool value);
  external bool get inert;
  external void set inert(bool value);
  @experimental
  external bool get itemScope;
  external void set itemScope(bool value);
  @experimental
  external /*DOMSettableTokenList*/ get itemType;
  @experimental
  external String get itemId;
  external void set itemId(String value);
  @experimental
  external /*DOMSettableTokenList*/ get itemRef;
  @experimental
  external /*DOMSettableTokenList*/ get itemProp;
  @experimental
  external /*Object*/ get itemValue;
  external void set itemValue(/*Object*/ value);
  external String get lang;
  external void set lang(String value);
  external bool get noModule;
  external void set noModule(bool value);
  external num get nonce;
  external void set nonce(num value);
  @experimental
  external double get offsetHeight;
  @experimental
  external double get offsetLeft;
  @experimental
  external Element get offsetParent;
  @experimental
  external double get offsetTop;
  @experimental
  external double get offsetWidth;
  @experimental
  external /*HTMLPropertiesCollection*/ get properties;
  external bool get spellcheck;
  external void set spellcheck(bool value);
  external /*CSSStyleDeclaration*/ get style;
  external void set style(/*CSSStyleDeclaration*/ value);
  external int get tabIndex;
  external void set tabIndex(int value);
  external String get title;
  external void set title(String value);
  @experimental
  external bool get translate;
  external void set translate(bool value);

  external void blur();
  external void click();
  external void focus([option]);
  @experimental
  external void forceSpellCheck();

  //
  // Custom element events
  //
  @protected
  external void connectedCallback();
  @protected
  external void disconnectedCallback();
  @protected
  external void adoptedCallback();
  @protected
  external void attributeChangedCallback(
      String name, String oldValue, String newValue);
}
