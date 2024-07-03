import 'package:mediator_design_pattern/components.dart';
import 'package:mediator_design_pattern/mediator.dart';

void main() {
  // Create a chat room (mediator)
  var chatRoom = ConcreteChatRoom();

  // Create users (colleagues)
  var user1 = ChatUser("User 1", chatRoom);
  var user2 = ChatUser("User 2", chatRoom);
  var user3 = ChatUser("User 3", chatRoom);

  // Add users to the chat room
  chatRoom.addUser(user1);
  chatRoom.addUser(user2);
  chatRoom.addUser(user3);

  // Simulate communication
  user1.send("Hello, everyone!");
  user2.send("Hi there!");
}
