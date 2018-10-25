part of html5;

@JS()
class Document extends Node with ParentNode, DocumentOrShadowRoot {
  @nonstandard
  external factory Document();

  external /*HtmlBodyElement*/ HtmlElement get body;
  external void set body(HtmlElement value);
  external String get characterSet;

  /// See [CompatMode] for values.
  @experimental
  external String get compatMode;
  @experimental
  external String get contentType;
  external String get doctype;
  external /*HtmlHtmlElement*/ HtmlElement get documentElement;
  external String get documentURI;
  external HtmlCollection get embeds;
  external /*FontFaceSet*/ get fonts;
  external void set fonts(/*FontFaceSet*/ value);
  external HtmlCollection get forms;
  external /*HtmlHeadElement*/ HtmlElement get head;
  external bool get hidden;
  external HtmlCollection get images;
  external /*DomImplementation*/ get implementation;
  external /*StyleSheet*/ get lastStyleSheet;
  external HtmlCollection get links;
  external HtmlCollection get plugins;
  @experimental
  external /*Policy*/ get policy;
  external /*StyleSheetList*/ get preferredStyleSheetSet;
  external HtmlCollection get scripts;
  external Element get scrollingElement;
  external /*StyleSheetList*/ get selectedStyleSheetSet;
  external void set selectedStyleSheetSet(/*StyleSheetList*/ value);
  external /*StyleSheetList*/ get styleSheetSets;
  @experimental
  external /*DocumentTimeline*/ get timeline;

  /// See [VisibilityState] for values.
  external String get visibilityState;
  external String get cookie;
  external void set cookie(String value);
  external Window get defaultView;
  external String get designMode;
  external void set designMode(String value);

  /// "ltr" or "rtl".
  external String get dir;
  external String get domain;
  external void set domain(String value);
  external String get lastModified;
  external String get location;

  /// See [ReadyState] for values.
  external String get readyState;
  external String get referrer;
  external String get title;
  external void set title(String value);
  external String get URL;

  external Node adoptNode(Node node);
  @nonstandard
  external /*Range*/ caretRangeFromPoint(num x, num y);
  external Attr createAttribute(String name);
  external Attr createAttributeNS(String namespace, String name);
  external /*CDATASectionNode*/ createCDATASection(String data);
  external /*CommentNode*/ createComment(String data);
  external DocumentFragment createDocumentFragment();
  external Element createElement(String tag, [ElementCreationOptions options]);
  external Element createElementNS(String namespace, String qualifiedName,
      [ElementCreationOptions options]);

  /// TODO: implement `createNodeIterator()`.
  // external NodeIterator createNodeIterator(Node root, int whatToShow, NodeFilter filter);
  external /*ProcessingInstruction*/ Node createProcessingInstruction(
      String target, String data);
  external /*Range*/ createRange();
  external /*TextNode?*/ Node createTextNode(String data);

  /// TODO: implement `createTreeWalker()`.
  // external TreeWalker createTreeWalker(Node root, int whatToShow, NodeFilter filter);
  external void enableStyleSheetsForSet(String name);
  @experimental
  external void exitPointerLock();
  @experimental
  external List/*<Animation>*/ getAnimations();
  external HtmlCollection getElementsByClassName(String names);
  external HtmlCollection getElementsByTagName(String name);
  external HtmlCollection getElementsByTagNameNS(String namespace, String name);
  @experimental
  external Future/*<bool>*/ hasStorageAccess();
  external Node importNode(Node node, bool deep);
  @experimental
  external Future/*<bool>*/ requestStorageAccess();
  external Element getElementById(String id);
  // Omitting XPathEvaluator mixin functions

  external void close();

  /// See https://developer.mozilla.org/en-US/docs/Web/API/Document/execCommand#Commands
  /// for commands.
  external bool execCommand(String command, [bool showDefaultUI, String arg]);
  external NodeList getElementsByName(String name);
  external bool hasFocus();
  external void open();

  /// See https://developer.mozilla.org/en-US/docs/Web/API/Document/execCommand#Commands
  /// for commands.
  external bool queryCommandEnabled(String command);
  external void write(String html);
  external void writeln(String html);
}

class CompatMode {
  CompatMode._();
  static const backCompat = 'BackCompat';
  static const css1compat = 'CSS1Compat';
}

class VisibilityState {
  VisibilityState._();
  static const visible = 'visible';
  static const hidden = 'hidden';
  static const prerender = 'prerender';
}

class ReadyState {
  ReadyState._();
  static const loading = 'loading';
  static const interactive = 'interactive';
  static const complete = 'complete';
}

@jsMixin
abstract class DocumentOrShadowRoot {
  external Element get activeElement;
  external Element get fullscreenElement;
  @experimental
  external Element get pointerLockElement;
  @experimental
  external /*StyleSheetList*/ get styleSheets;

  @experimental
  external /*Selection*/ getSelection();
  external Element elementFromPoint(num x, num y);
  @experimental
  external List/*<Element>*/ elementsFromPoint(num x, num y);
  @experimental
  external /*CaretPosition*/ caretPositionFromPoint(num x, num y);
}

@JS()
@anonymous
class ElementCreationOptions {
  external factory ElementCreationOptions({String JS$is});
  external String get JS$is;
}

/// https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment
@JS()
class DocumentFragment extends Node with ParentNode {
  @experimental
  external factory DocumentFragment();

  external Element getElementById(String id);
}

// /// https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator
// @JS()
// abstract class NodeIterator {
//   external Node get root;
//   external int get whatToShow;

// }
