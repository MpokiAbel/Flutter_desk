class StatusModel {
  final String name;
  final String info;

  final String imageUrl;

  StatusModel({this.name, this.info, this.imageUrl});
}

List<StatusModel> status = [
  StatusModel(
      name: 'Mama', info: '28 minutes ago', imageUrl: 'images/image1.jpg')
];

List<StatusModel> myStatus = [
  StatusModel(
      name: 'My status',
      info: 'Tap to add status update',
      imageUrl: "images/image7.jpg")
];
