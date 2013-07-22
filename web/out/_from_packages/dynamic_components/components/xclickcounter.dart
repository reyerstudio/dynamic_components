library click_counter;

import 'package:web_ui/web_ui.dart';
import 'package:web_ui/observe/observable.dart' as __observe;


class CounterComponent extends WebComponent with Observable  {
  int __$count = 0;
  int get count {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'count');
    }
    return __$count;
  }
  set count(int value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'count',
          __$count, value);
    }
    __$count = value;
  }

  void increment() {
    count++;
  }
}

//# sourceMappingURL=xclickcounter.dart.map