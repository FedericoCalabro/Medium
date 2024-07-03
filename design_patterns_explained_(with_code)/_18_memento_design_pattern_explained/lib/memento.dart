// Memento: TextEditorMemento (stores the state of TextEditor)
class TextEditorMemento {
  String _savedText;

  TextEditorMemento(this._savedText);

  String getSavedText() {
    return _savedText;
  }
}
