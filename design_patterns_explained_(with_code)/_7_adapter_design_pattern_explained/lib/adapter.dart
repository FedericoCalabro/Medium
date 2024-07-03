class OldPrinter {
  void printDocument(String text) {
    print("Old Printer: Printing document - $text");
  }
}

class NewPrinter {
  void newPrintMethod(String text) {
    print("New Printer: Printing document - $text");
  }
}

class PrinterAdapter implements OldPrinter {
  final NewPrinter newPrinter;

  PrinterAdapter(this.newPrinter);

  @override
  void printDocument(String text) {
    // Delegates the call to the newPrinter's print method
    newPrinter.newPrintMethod(text);
  }
}
