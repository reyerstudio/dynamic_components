library controler;

import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'package:dynamic_components/components/xclickcounter.dart';

void appendComponentToElement(Element element, WebComponent component) {
  component.host = new DivElement();
  var lifecycleCaller = new ComponentItem(component)..create();
  element.append(component.host);
  lifecycleCaller.insert();
}

void addClickCounter(String selector) {
  appendComponentToElement(query(selector), new CounterComponent());
}
