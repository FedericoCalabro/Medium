// Originator: TextEditor (the object whose state we want to save/restore)
import 'package:memento_design_pattern/memento.dart';

class TextEditor {
  String _text = '';

  void setText(String text) {
    _text = text;
    print('Text set to: $_text');
  }

  String getText() {
    return _text;
  }

  // Save current state as a Memento
  TextEditorMemento save() {
    return TextEditorMemento(_text);
  }

  // Restore state from a Memento
  void restore(TextEditorMemento memento) {
    _text = memento.getSavedText();
    print('Restored text to: $_text');
  }
}
