import 'package:bridge_design_pattern/abstraction.dart';

class TV implements Device {
  @override
  void powerOn() {
    print("TV is now ON");
  }

  @override
  void powerOff() {
    print("TV is now OFF");
  }

  @override
  void setVolume(int volume) {
    print("TV volume set to $volume");
  }
}

class Radio implements Device {
  @override
  void powerOn() {
    print("Radio is now ON");
  }

  @override
  void powerOff() {
    print("Radio is now OFF");
  }

  @override
  void setVolume(int volume) {
    print("Radio volume set to $volume");
  }
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

class AdvancedRemoteControl extends BasicRemoteControl {
  AdvancedRemoteControl(super.device);
  void mute() {
    device.setVolume(0);
  }
}
