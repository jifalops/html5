part of html5;

/// https://developer.mozilla.org/en-US/docs/Web/API/EventTarget
@JS()
class EventTarget extends Obj {
  external factory EventTarget();
  external void addEventListener(String type, listener, [options]);
  external void removeEventListener(String type, listener, [options]);
  external bool dispatchEvent(event, [target]);
}

typedef void EventHandler(Event event);

/// https://developer.mozilla.org/en-US/docs/Web/API/Event
///
/// Omits the non-standardized: `deepPath`, `explicitOriginalTarget`,
/// `originalTarget`, and `srcElement`.
@JS()
class Event {
  external factory Event(String type, [EventOptions options]);
  external bool get bubbles;
  external bool get cancelBubble;
  external void set cancelBubble(bool value);
  external bool get cancelable;
  external bool get composed;
  external Node get currentTarget;
  external bool get defaultPrevented;

  /// See [EventPhase] for values.
  external int get eventPhase;
  external EventTarget get target;
  external num get timeStamp;
  external String get type;
  external bool get isTrusted;

  external List/*<EventTarget>*/ composedPath();
  external void preventDefault();
  external void stopImmediatePropagation();
  external void stopPropagation();
}

@JS()
@anonymous
class EventOptions {
  external factory EventOptions({bool bubbles, bool cancelable, bool composed});
  external bool get bubbles;
  external bool get cancelable;
  external bool get composed;
}

class EventPhase {
  EventPhase._();
  static const none = 0;
  static const capturing = 1;
  static const atTarget = 2;
  static const bubbling = 3;
}
