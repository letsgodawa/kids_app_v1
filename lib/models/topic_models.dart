class TopicModel{
  final String name;
  final String image;

  TopicModel({
    required this.name,
    required this.image
  });

}
TopicModel numbers=TopicModel(name: "Numbers", image: "https://media.istockphoto.com/vectors/numeric-cubes-vector-illustration-building-blocks-with-numbers-vector-id521531102?k=20&m=521531102&s=612x612&w=0&h=dXZG6BU-VzzETVpdRaZ7rt14DYSwNbxzgStnknHdtJA=");
TopicModel alphabets=TopicModel(name: "Alphabets", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiCSDF8c1e5uo-f9YHKB6fP7tDyh2MxVHjwu4gCrqeqDk6z53Wk-OsQQQxINSc0dDdhZ4&usqp=CAU");
TopicModel nepali=TopicModel(name: "Nepali", image: "https://cdn1.storehippo.com/s/58b6b898fe14ad9f7ef50fb8/5f2677578a3bca24381d666f/webp/nepali-alphabet-cube-640x640.jpg");
TopicModel shapes=TopicModel(name: "Shapes", image: "https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/shapes.png");
TopicModel play=TopicModel(name: "Games", image: "https://media.baamboozle.com/uploads/images/76563/1615277978_28734.jpeg");

final List<TopicModel> topics=[
  numbers,
  alphabets,
  nepali,
  shapes,
  play,
];