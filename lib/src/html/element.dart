part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/API/Element
///
/// Omits experimental: `undoManager`, `undoScope`.
@JS()
abstract class Element extends Node
    with ParentNode, ChildNode, NonDocumentTypeChildNode, Animatable, Slotable {
  @fakeConstructor
  external factory Element();
  external NamedNodeMap get attributes;
  external DomTokenList get classList;
  external String get className;
  external void set className(String value);
  external num get clientHeight;
  external num get clientLeft;
  external num get clientTop;
  external num get clientWidth;
  external String get computedName;
  external String get computedRole;
  external String get id;
  external void set id(String value);
  external String get innerHTML;
  external void set innerHTML(String value);
  external String get localName;
  external String get namespaceURI;
  external String get outerHTML;
  external void set outerHTML(String value);
  external String get prefix;
  external num get scrollHeight;
  external num get scrollLeft;
  external void set scrollLeft(num value);
  @nonstandard
  external num get scrollLeftMax;
  external num get scrollTop;
  external void set scrollTop(num value);
  @nonstandard
  external num get scrollTopMax;
  external num get scrollWidth;
  external /*ShadowRoot*/ get shadowRoot;
  @nonstandard
  external /*ShadowRoot*/ get openOrClosedShadowRoot;
  @experimental
  external String get slot;
  @nonstandard
  external bool get tabStop;
  external String get tagName;

  external /*ShadowRoot*/ attachShadow(options);
  @experimental
  external /*Animation*/ animate(keyframes, options);
  @experimental
  external Element closest(String selectors);
  @experimental
  external /*StylePropertyMapReadOnly*/ computedStyleMap();
  @experimental
  external getAnimations();
  external String getAttribute(String name);
  external List getAttributeNamed();
  external String getAttributeNS(String namespace, String name);
  external /*DOMRect*/ getBoundingClientRect();
  external List getClientRects();
  external HtmlCollection getElementsByClassName(String names);
  external HtmlCollection getElementsByTagName(String name);
  external HtmlCollection getElementsByTagNameNS(String namespace, String name);
  external bool hasAttribute(String attribute);
  external bool hasAttributeNS(String namespace, String attribute);
  external bool hasAttributes();

  /// See [InsertPosition] for [position] values.
  external Element insertAdjacentElement(String position, Element element);

  /// See [InsertPosition] for [position] values.
  external Element insertAdjacentHTML(String position, String text);

  /// See [InsertPosition] for [position] values.
  external void insertAdjacentText(String position, String element);
  @experimental
  external bool matches(String selectors);
  external void removeAttribute(String name);
  external void removeAttributeNS(String namespace, String name);
  @experimental
  external Future requestFullScreen();
  @experimental
  external Future requestPointerLock();
  @experimental
  external void scrollIntoView([/*bool|object*/ alignToTopOrOptions]);
  external void setAttribute(String name, String value);
  external void setAttributeNS(String namespace, String name, String value);
  external void setPointerCapture(num pointerId);
  external void toggleAttribute(String name, [bool force]);
}

/// https://developer.mozilla.org/en-US/docs/Web/API/ParentNode
@jsMixin
abstract class ParentNode {
  external int get childElementCount;
  external HtmlCollection get children;
  external Element get firstElementChild;
  external Element get lastElementChild;

  /// [nodes] can be a single Node or String, or a mixed list of them.
  @experimental
  external void append(nodes);

  /// [nodes] can be a single Node or String, or a mixed list of them.
  @experimental
  external void prepend(nodes);

  external Element querySelector(String selectors);
  external NodeList querySelectorAll(String selectors);
}


@jsMixin
abstract class ChildNode {
  @experimental
  external void remove();

  /// [nodes] can be a single Node or String, or a mixed list of them.
  @experimental
  external void before(nodes);

  /// [nodes] can be a single Node or String, or a mixed list of them.
  @experimental
  external void after(nodes);

  /// [nodes] can be a single Node or String, or a mixed list of them.
  @experimental
  external void replaceWith(nodes);
}

@jsMixin
abstract class NonDocumentTypeChildNode {
  external Element get previousElementSibling;
  external Element get nextElementSibling;
}

@undocumented
@jsMixin
abstract class Animatable {}

@JS()
abstract class NamedNodeMap {
  external int get length;
  external Attr getNamedItem(String name);
  external Attr setNamedItem(String name, Attr value);
  external Attr removeNamedItem(String name);
  external Attr item(int index);
  external Attr getNamedItemNS(String namespace, String name);
  external Attr setNamedItemNS(String namespace, String name, Attr value);
  external Attr removeNamedItemNS(String namespace, String name);

  external operator [](int index);
  external operator []=(int index, String value);
}

@JS()
abstract class Attr extends Node {
  @fakeConstructor
  external factory Attr();
  external String get name;
  external String get namespaceURI;
  external String get localName;
  external String get prefix;
  @deprecated
  external Element get ownerElement;
  external bool get specified;
  external String get value;
  external void set value(String value);
  //https://developer.mozilla.org/en-US/docs/Web/API/Attr#Deprecated_properties_and_methods
}

class InsertPosition {
  InsertPosition._();
  static const beforeBegin = 'beforebegin';
  static const afterBegin = 'afterbegin';
  static const beforeEnd = 'beforeend';
  static const afterEnd = 'afterend';
}

@jsMixin
class Slotable {
  external /*HTMLSlotElement*/ get assignedSlot;
}
