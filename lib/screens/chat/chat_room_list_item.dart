import 'package:flutter/material.dart';
import 'package:fluttersocial/models/chat_room_model.dart';

class ChatRoomListItem extends StatelessWidget {
  final ChatRoom chatRoom;

  ChatRoomListItem({this.chatRoom});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         border: Border(
           top:BorderSide(
           color: Color(0xff909090),
           width: 0.5,
           ),
           bottom:BorderSide(
           color: Color(0xff909090),
           width: 0.5,
           ),
         ),
       /* boxShadow: [
        /*  BoxShadow (
            color: const Color(0xcc000000),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),*/
         BoxShadow (
            color: const Color(0x30000000),
            offset: Offset(0, 6),
            blurRadius: 30,
          ),
        ],*/ 
       ),
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
      child: Row(
        
        children: <Widget>[
          
          CircleAvatar(
            backgroundImage: NetworkImage(chatRoom.sender.imageUrl),
            radius: 30.0,
          ),
          SizedBox(
            
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  chatRoom.sender.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  chatRoom.messages.last.text,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Text(
            chatRoom.messages.last.time,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
