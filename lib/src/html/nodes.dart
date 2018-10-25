part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/API/Node
@JS()
abstract class Node extends EventTarget {
  @fakeConstructor
  external factory Node();
  external String get baseURI;
  external NodeList get childNodes;
  external Node get firstChild;
  external bool get isConnected;
  external bool get lastChild;
  external Node get nextSibling;
  external String get nodeName;

  /// See [NodeType] for values.
  external int get nodeType;
  external String get nodeValue;
  external void set nodeValue(String value);
  external /*Document*/ get ownerDocument;
  external Node get parentNode;
  external Element get parentElement;
  external Node get previousSibling;
  external String get textContent;
  external void set textContent(String value);

  external /*Node|DocumentFragment*/ appendChild(Node child);
  external Node cloneNode([bool deep]);

  /// Returns one or more [DocumentPosition] values.
  external int compareDocumentPosition(Node other);
  external bool contains(Node other);
  external Node getRootNode([options]);
  external bool hasChildNodes();
  external /*Node|DocumentFragment*/ insertBefore(
      Node newNode, Node referenceNode);
  external bool isDefaultNamespace(String namespaceUri);
  external bool isEqualNode(Node other);
  external bool isSameNode(Node other);
  external String lookupPrefix();
  external String lookupNamespaceURI();
  external Node removeChild(Node child);
  external Node replaceChild(Node newChild, Node oldChild);
}

/// https://developer.mozilla.org/en-US/docs/Web/API/NodeList
@JS()
abstract class NodeList {
  external int get length;
  external Node item(int index);
  external Iterator entries();
  external void forEach(void Function(Node item, int index, NodeList list),
      [thisArg]);
  external Iterator keys();
  external Iterator values();
  external operator [](int index);
}

class NodeType {
  NodeType._();
  static const element = 1;
  @deprecated
  static const attribute = 2;
  static const text = 3;
  @deprecated
  static const cdataSection = 4;
  @deprecated
  static const entityReference = 5;
  @deprecated
  static const entity = 6;
  static const processingInstruction = 7;
  static const comment = 8;
  static const document = 9;
  static const documentType = 10;
  static const documentFragment = 11;
  @deprecated
  static const notation = 12;
}

class DocumentPosition {
  DocumentPosition._();
  static const disconnected = 1;
  static const preceding = 2;
  static const following = 4;
  static const contains = 8;
  static const containedBy = 16;
  static const implementationSpecific = 32;
}
