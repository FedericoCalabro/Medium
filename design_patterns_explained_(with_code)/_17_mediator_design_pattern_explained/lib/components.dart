// Colleague: User
import 'package:mediator_design_pattern/mediator.dart';

abstract class User {
  String name;
  ChatRoom? chatRoom;

  User(this.name, this.chatRoom);

  void sendMessage(String message) {
    chatRoom?.sendMessage(message, this);
  }

  void receiveMessage(String message) {
    print("$name received: $message");
  }
}

// Concrete Colleague: ChatUser
class ChatUser extends User {
  ChatUser(String name, ChatRoom chatRoom) : super(name, chatRoom);

  void send(String message) {
    print("$name sends: $message");
    sendMessage(message);
  }
}
