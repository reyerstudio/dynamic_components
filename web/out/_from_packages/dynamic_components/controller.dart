library controler;

import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'components/xclickcounter.dart';
import 'package:web_ui/observe/observable.dart' as __observe;


void appendComponentToElement(Element element, WebComponent component) {
  component.host = new DivElement();
  var lifecycleCaller = new ComponentItem(component)..create();
  element.append(component.host);
  lifecycleCaller.insert();
}

void addClickCounter(String selector) {
  appendComponentToElement(query(selector), new CounterComponent());
}

//# sourceMappingURL=controller.dart.map