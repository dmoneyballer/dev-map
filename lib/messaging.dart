import 'package:flutter/material.dart';

class MessagingWidget extends StatefulWidget {
  final int readerId;
  final int partnerId;

  MessagingWidget({
    this.readerId = mockReaderId,
    this.partnerId = mockPartnerId,
  });

  @override
  State createState() => MessagingWidgetState();
}

class MessagingWidgetState extends State<MessagingWidget> {

  void sendMessage() async {
    // Send message to firestore
  }

  @override
  Widget build(BuildContext cxt) {
    final sideSpacing = MediaQuery.of(cxt).size.width * 0.2;
    final messages = mockData;
    return Scaffold(
      backgroundColor: Theme.of(cxt).primaryColor,
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    if (messages == null)
                      Padding(
                        padding: EdgeInsets.all(44),
                        child: Container(
                          child: Text(
                            'There are no messages to show.',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    else for (var msg in messages)
                      MessageEntry(
                        userId: widget.readerId,
                        sideSpacing: sideSpacing,
                        message: msg,
                      )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(cxt).primaryColor,
                ),
                padding: EdgeInsets.only(left: 12, top: 4, bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Message',
                          contentPadding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: () => sendMessage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageEntry extends StatelessWidget {
  final int userId;
  final Message message;
  final double sideSpacing;

  MessageEntry({
    this.message,
    this.userId,
    this.sideSpacing,
  });

  bool get messageSentByUser => userId == message.authorId;

  @override
  Widget build(BuildContext cxt) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          if (!messageSentByUser)
            SizedBox(width: sideSpacing),
          Expanded(
            child: Align(
              alignment: messageSentByUser ? Alignment.centerLeft : Alignment.centerRight,
              child: Column(
                crossAxisAlignment: messageSentByUser ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: messageSentByUser ? Colors.green[200] : Colors.blue[200],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text(message.message),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Text(
                      'Sent ${message.timeString}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (messageSentByUser)
            SizedBox(width: sideSpacing),
        ],
      ),
    );
  }
}

class Message {
  final int authorId;
  final int timestamp;
  final String message;

  const Message(this.authorId, this.timestamp, this.message);

  String get timeString {
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return '${((dt.hour + 11) % 12) + 1}:${dt.minute.toString().padLeft(2, '0')} ${dt.hour >= 12 ? "PM" : "AM"}';
  }

  @override
  String toString() => '{authorId: $authorId, message: $message}';
}

const int mockReaderId = 1;
const int mockPartnerId = 2;
const List<Message> mockData = [
  Message(1, 1559411514, 'abc'),
  Message(2, 1559412524, 'abc'),
  Message(2, 1559412534, 'abc'),
  Message(2, 1559412544, 'abc'),
  Message(1, 1559412554, 'abc'),
  Message(1, 1559412564, 'sd sdv sdv sbdlibsdlkvj sgisdu visdhsaidugvisdvh siduvsdhiu vsd vasdiuv sadiu vasdv isdhvisduv sdv asdiv slkvksadg vsad vasb vksd vksdvsdv sadvsd sd dgsdfvdf'),
  Message(2, 1559412574, 'abc'),
  Message(1, 1559412584, 'abc'),
  Message(2, 1559412594, 'abc'),
  Message(2, 1559412604, 'sd sdv sdv sbdlibsdlkvj sgisdu visdhsaidugvisdvh siduvsdhiu vsd vasdiuv sadiu vasdv isdhvisduv sdv asdiv slkvksadg vsad vasb vksd vksdvsdv sadvsd sd dgsdfvdf'),
  Message(1, 1559412614, 'abc'),
  Message(1, 1559412624, 'abc'),
  Message(2, 1559412634, 'abc'),
];