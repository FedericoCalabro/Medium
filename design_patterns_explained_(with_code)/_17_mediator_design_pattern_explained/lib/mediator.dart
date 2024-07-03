// Mediator: ChatRoom
import 'package:mediator_design_pattern/components.dart';

abstract class ChatRoom {
  void sendMessage(String message, User user);
}

// Concrete Mediator: ConcreteChatRoom
class ConcreteChatRoom implements ChatRoom {
  List<User> _users = [];

  void addUser(User user) {
    _users.add(user);
  }

  @override
  void sendMessage(String message, User sender) {
    for (var user in _users) {
      if (user != sender) {
        user.receiveMessage(message);
      }
    }
  }
}
