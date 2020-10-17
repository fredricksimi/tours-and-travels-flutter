class Event {
  final String title, place, imageSrc, price, rating, description;

  Event({
    this.price,
    this.title,
    this.place,
    this.imageSrc,
    this.rating,
    this.description
  });
}

List<Event> events = [
  Event(
      price: "5,000",
      title: "Mountain Climbing",
      imageSrc: "images/Mt-Kenya-Pt-Lenana-1024x768.jpg",
      place: "Mt. Kenya",
      rating: "4,101",
      description: "A wonderful place"
      ),
  Event(
    price: "8,000",
    title: "Wildlife & Tourism",
    imageSrc: "images/kenya-tourism.jpg",
    place: "Maasai Mara, Kenya",
    rating: "5,121",
    description: "A wonderful place"
  ),
  Event(
    price: "3,000",
    title: "Camping in Paradise",
    imageSrc: "images/brunch.jpg",
    place: "Kiambu, Kenya",
    rating: "3,631",
      description: "A wonderful place"
  ),
];
