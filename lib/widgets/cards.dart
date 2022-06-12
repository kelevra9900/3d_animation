class Card3D {
  const Card3D({this.author, this.title, this.image});
  final String? title;
  final String? author;
  final String? image;
}

final cardList = [
  const Card3D(
      author: 'Kate Bush',
      title: 'Running Up That Hill',
      image: 'assets/1.jpeg'),
  const Card3D(author: 'Dark Rooms', title: 'I Get overwhelmed', image: 'assets/2.webp'),
  const Card3D(author: 'Mac Miller', title: 'Come back to Earth', image: 'assets/3.jpg'),
  const Card3D(author: 'Lng Sht', title: 'La marcha de los tristes', image: 'assets/4.jpeg'),
  const Card3D(author: 'Beirut', title: 'Postcard from Italy', image: 'assets/5.jpeg'),
  const Card3D(author: 'Roy Woods', title: 'Drama (feat. Drake)', image: 'assets/6.jpeg'),
];
