abstract class Device {
  void powerOn();
  void powerOff();
  void setVolume(int volume);
}

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
