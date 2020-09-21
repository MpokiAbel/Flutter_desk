class ChatModel {
  final String name;
  final String messages;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.messages, this.time, this.imageUrl});
}

List<ChatModel> chatData = [
  ChatModel(
      name: 'Mama',
      messages: 'Uko wapi',
      time: '08:41',
      imageUrl: 'images/image1.jpg'),
  ChatModel(
      name: 'Baba',
      messages: 'shikamoo',
      time: '09:20',
      imageUrl: 'images/image3.jpg'),
  ChatModel(
      name: 'Chingalo',
      messages: 'sawa',
      time: '07:21',
      imageUrl: 'images/image5.jpg'),
  ChatModel(
      name: 'Bro',
      messages: 'kijana unazingua',
      time: '21:57',
      imageUrl: 'images/image7.jpg'),
  ChatModel(
      name: 'Peter',
      messages: 'Mambo vipi',
      time: '08:41',
      imageUrl: 'images/image9.jpg'),
  ChatModel(
      name: 'James',
      messages: 'fresh',
      time: '06:22',
      imageUrl: 'images/image1.jpg'),
  ChatModel(
      name: 'Bosi',
      messages: 'Usijali',
      time: '07:21',
      imageUrl: 'images/image3.jpg'),
  ChatModel(
      name: 'Kamanda',
      messages: 'yap',
      time: '09:21',
      imageUrl: 'images/image6.jpg'),
  ChatModel(
      name: 'Mawese',
      messages: 'usiwaze',
      time: '00:21',
      imageUrl: 'images/image7.jpg')
];
