import 'package:bridge_design_pattern/device.dart';

abstract class RemoteControl {
  Device device;

  RemoteControl(this.device);

  void turnOn();
  void turnOff();
  void setVolume(int volume);
}

class BasicRemoteControl extends RemoteControl {
  BasicRemoteControl(Device device) : super(device);

  @override
  void turnOn() {
    device.powerOn();
  }

  @override
  void turnOff() {
    device.powerOff();
  }

  @override
  void setVolume(int volume) {
    device.setVolume(volume);
  }
}
