import 'package:design_shop_app/models/chat_msg_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

   List<ChatMessage> mockMessage = [
     ChatMessage(message: "Hi", messageType: "sender"),
     ChatMessage(message: "Hello", messageType: "receiver"),
     ChatMessage(message: "How Are You?", messageType: "sender"),
     ChatMessage(message: "I Am Fine.. How's youuu?", messageType: "receiver"),
     ChatMessage(message: "I Am good too", messageType: "sender"),
     ChatMessage(message: "That's good.. Nice to meet you", messageType: "receiver"),

   ];

   TextEditingController _inputController = TextEditingController();
   ScrollController _scrollController = ScrollController(keepScrollOffset: true);
  @override
  Widget build(BuildContext context) {
    _scrollToBottom();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/image/sn.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Snehal Prajapati',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        body: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [_messageSpace(), _inputSpace()],
          ),
        ),
      ),
    );
  }

  Widget _messageSpace() {
    return Flexible(
      child: SingleChildScrollView(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: ListView.builder(
              itemCount: mockMessage.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
            return Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top:10, bottom: 10 ),

              child: Align(
                alignment: (mockMessage[index].messageType == "receiver") ? Alignment.topLeft : Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (mockMessage[index].messageType == "receiver") ? Colors.orange : Colors.green,
                  ),
                  child: Text(mockMessage[index].message!, style: TextStyle(fontSize: 15),),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _inputSpace() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
        ),
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _inputController,
                  onSubmitted: (String str) {
                    addMessage(_inputController.text);
                  },
                  decoration: InputDecoration(
                    hintText: 'Write message...',
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none,
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  addMessage(_inputController.text);
                  _inputController.clear();
                },
                backgroundColor: Colors.green,
                child: Icon(Icons.send, color: Colors.white, size: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
  addMessage(String input){
    setState(() {
      mockMessage.add(ChatMessage(message: input, messageType: "sender"),);
    });
  }

  _scrollToBottom(){
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      if(_scrollController.hasClients){
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        }
      },
    );
  }
}
