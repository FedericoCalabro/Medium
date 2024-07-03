import 'package:bridge_design_pattern/control.dart';
import 'package:bridge_design_pattern/device.dart';

void main() {
  Device tv = TV();
  RemoteControl tvRemote = BasicRemoteControl(tv);
  tvRemote.turnOn(); // Output: TV is now ON
  tvRemote.setVolume(10); // Output: TV volume set to 10
  tvRemote.turnOff(); // Output: TV is now OFF
}
