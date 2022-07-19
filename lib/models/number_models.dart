class NumberModels{
  final String image;
  final int id;
  NumberModels({
    required this.image,
    required this.id
  });
}

NumberModels one=NumberModels(id:1,image:"img/numbers/1.jpg");
NumberModels two=NumberModels(id:2,image: "img/numbers/2.jpg");
NumberModels three=NumberModels(id:3,image: "img/numbers/3.jpg");
NumberModels four=NumberModels(id:4,image: "img/numbers/4.jpg");
NumberModels five=NumberModels(id:5,image: "img/numbers/5.jpg");
NumberModels six=NumberModels(id:6,image: "img/numbers/6.jpg");
NumberModels seven=NumberModels(id:7,image: "img/numbers/7.jpg");
NumberModels eight=NumberModels(id:8,image: "img/numbers/8.jpg");
NumberModels nine=NumberModels(id:9,image: "img/numbers/9.jpg");
NumberModels ten=NumberModels(id:10,image: "img/numbers/10.jpg");

List<NumberModels> number=[
  one, two, three, four, five, six, seven, eight, nine, ten
];