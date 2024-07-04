import 'package:bridge_design_pattern/abstraction.dart';
import 'package:bridge_design_pattern/implementation.dart';

void main() {
  Device tv = TV();
  BasicRemoteControl tvRemote = BasicRemoteControl(tv);
  tvRemote.turnOn(); // Output: TV is now ON
  tvRemote.setVolume(10); // Output: TV volume set to 10
  tvRemote.turnOff(); // Output: TV is now OFF

  Device radio = Radio();
  AdvancedRemoteControl radioRemote = AdvancedRemoteControl(radio);
  radioRemote.turnOn(); // Output: Radio is now ON
  radioRemote.mute(); // Output: Radio volume set to 10
}
