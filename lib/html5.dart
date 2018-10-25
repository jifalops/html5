/// Support for doing something awesome.
///
/// More dartdocs go here.
@JS()
library html5;

import 'package:meta/meta.dart';
import 'package:js/js.dart';
import 'src/annotations.dart';
import 'src/typedefs.dart';

export 'package:js/js.dart';
export 'src/annotations.dart';
export 'src/typedefs.dart';

part 'src/core/object.dart';
part 'src/core/function.dart';

part 'src/html/document.dart';
part 'src/html/element.dart';
part 'src/html/events.dart';
part 'src/html/html_element.dart';
part 'src/html/nodes.dart';
part 'src/html/types.dart';
part 'src/html/window.dart';

@JS()
external Window get window;

@JS()
external Document get document;

@JS()
abstract class CustomElementRegistry {
  external void define(String name, Function constructor, [options]);
  external Function get(String name);
  external Future whenDefined(String name);
}

@JS()
external CustomElementRegistry get customElements;
