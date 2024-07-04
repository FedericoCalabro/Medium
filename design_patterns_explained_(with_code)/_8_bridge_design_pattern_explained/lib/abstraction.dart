abstract class Device {
  void powerOn();
  void powerOff();
  void setVolume(int volume);
}

abstract class RemoteControl {
  Device device;

  RemoteControl(this.device);

  void turnOn();
  void turnOff();
  void setVolume(int volume);
}
