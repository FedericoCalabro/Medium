import 'package:memento_design_pattern/caretaker.dart';
import 'package:memento_design_pattern/originator.dart';

void main() {
  // Create a text editor
  var editor = TextEditor();
  var history = TextEditorHistory();

  // Type some text and save states
  editor.setText('First draft');
  history.addMemento(editor.save());

  editor.setText('Second draft');
  history.addMemento(editor.save());

  editor.setText('Final draft');
  history.addMemento(editor.save());

  // Restore to previous state
  editor.restore(history.getMemento(1)); // Restore to "Second draft"
}
