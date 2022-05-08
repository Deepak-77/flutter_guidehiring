class Travel{
  //model variables
  final String name;
  final String description;
  final int duration;
  final String location;
  final double rating;
  final int distance;
  final double cost;
  final List<String> imageUrl;

  //model constuctor
  Travel(this.name, this.duration, this.description, this.location, this.rating, this.distance, this.imageUrl, this.cost);

  //List of travel items
static List<Travel> getTravelItems(){
  final List<Travel> _travelList = [
    Travel('Swayambhunath Stupa',4, 'According to Swayambhu Purana, the entire valley was once filled with an enormous lake, out of which grew a lotus.', 'Swayambhu, Ktm', 4.6, 15, ['assets/images/imgg1.jpg', 'assets/images/imgg1.jpg'], 230),
    Travel('Pashupatinath Temple',5, 'Pashupatinath Temple is the oldest Hindu temple in Kathmandu. It is not known for certain when it was built.', 'Gausala, Kathmandu', 4.3, 6, ['assets/images/imgg2.jpg', 'assets/images/imgg2.jpg'], 432),
    Travel('Patan Durbar Square',3, 'Patan Durbar Square is situated at the centre of the city of Lalitpur in Nepal.', 'Patan, Lalitpur', 4.5, 3, ['assets/images/imgg3.jpg', 'assets/images/imgg3.jpg'], 283),
    Travel('Bhaktapur Durbar Square',3, 'The Bhaktapur Durbar Square is located in the current town of Bhaktapur, also known as Khwopa.', 'Khwopa, Bhaktapur', 4.2, 16, ['assets/images/imgg4.jpg', 'assets/images/imgg4.jpg'], 389),
    Travel('Kathmandu Durbar Square',2, 'The Kathmandu Durbar Square held the palaces of the Malla and Shah kings who ruled over the city.', 'Basantapur, Ktm', 4.8, 7, ['assets/images/imgg5.jpeg', 'assets/images/imgg5.jpeg'], 534),
  ];
  return _travelList;
}

//Get the nearest list items (Those whose distance is less than 10kms
static List<Travel> getNearestItems(){
  List<Travel> _travelList = Travel.getTravelItems();
  return _travelList.where((element) => element.distance < 10).toList();
}

}