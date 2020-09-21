class CallsModel {
  final String name;
  final String info;
  final String imageUrl;
  final String calltype;
  final String callStatus;
  final String direction;
  CallsModel(
      {this.name,
      this.info,
      this.imageUrl,
      this.calltype,
      this.callStatus,
      this.direction});
}

List<CallsModel> calls = [
  CallsModel(
      name: 'Mama',
      info: '(2) Today, 14:05',
      imageUrl: 'images/image1.jpg',
      calltype: 'voice',
      callStatus: 'received',
      direction: 'outgoing'),
  CallsModel(
      name: 'Baba',
      info: '(3) Yesterday, 13:51',
      imageUrl: 'images/image3.jpg',
      calltype: 'Video',
      callStatus: 'missed',
      direction: 'incoming'),
  CallsModel(
      name: 'Chingalo',
      info: '(2) 15 September, 14:31',
      imageUrl: 'images/image5.jpg',
      calltype: 'voice',
      callStatus: 'received',
      direction: 'incoming'),
];
