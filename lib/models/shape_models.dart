class ShapeModels {
  final String image;
  final int id;
  ShapeModels({
    required this.image,
    required this.id
  });
}

  ShapeModels a=ShapeModels(id:1, image: "img/shapes/circle.jpg");
  ShapeModels b=ShapeModels(id:2, image: "img/shapes/ellipse.jpg");
  ShapeModels c=ShapeModels(id:3, image: "img/shapes/heart.jpg");
  ShapeModels d=ShapeModels(id:4, image: "img/shapes/hexagon.jpg");
  ShapeModels e=ShapeModels(id:5, image: "img/shapes/rectangle.jpg");
  ShapeModels f=ShapeModels(id:6, image: "img/shapes/rhombus.jpg");
  ShapeModels g=ShapeModels(id:7, image: "img/shapes/square.jpg");
  ShapeModels h=ShapeModels(id:7, image: "img/shapes/Star.jpg");
  ShapeModels i=ShapeModels(id:8, image: "img/shapes/triangle.jpg");


List<ShapeModels> shapes=[
a,b,c,d,e,f,g,h,i
];