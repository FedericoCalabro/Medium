// Caretaker: TextEditorHistory (manages multiple mementos)
import 'package:memento_design_pattern/memento.dart';

class TextEditorHistory {
  List<TextEditorMemento> _mementos = [];

  void addMemento(TextEditorMemento memento) {
    _mementos.add(memento);
  }

  TextEditorMemento getMemento(int index) {
    return _mementos[index];
  }
}
