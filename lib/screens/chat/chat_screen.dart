import 'package:flutter/material.dart';
import 'package:fluttersocial/models/data.dart';
import 'package:fluttersocial/screens/chat/chat_room_list_item.dart';
import 'package:fluttersocial/utils/constants.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xff1e2d51),
        centerTitle: false,
        elevation: 0.0,
        title: Text(
          'U up?',
          style: Constants.titleStyle,
          
        ),
        actions: <Widget>[
           IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
          //color for main part of the screen
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/chatRoom',
                              arguments: Data.chatRooms[index]);
                        },
                        child: ChatRoomListItem(
                          chatRoom: Data.chatRooms[index],
                        )
                      );
                  },
                  itemCount: Data.chatRooms.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
