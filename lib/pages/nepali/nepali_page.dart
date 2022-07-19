import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_app/models/nepali_models.dart';
import 'package:kids_app/utils/dawa_dialog.dart';

class NepaliPage extends StatefulWidget {
  const NepaliPage({Key? key}) : super(key: key);

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  @override
  Widget build(BuildContext context) {
    AudioCache audioCache = AudioCache();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.orangeAccent,
              )),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'नेपाली',
                style: TextStyle(
                    color: Colors.orangeAccent, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.child_care,
                color: Colors.orangeAccent,
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.orangeAccent))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemCount: nepali.length,
              itemBuilder: (BuildContext ctx, index) {
                onNepaliButtonTap() {
                  setState(() {
                    audioCache.play('00${index + 1}.mp3');
                  });
                  dawaDialog(context, "img/nepali/${index + 1}.jpg",
                      setState(() {
                    audioCache.load('00${index + 1}.mp3');
                    audioCache.play('00${index + 1}.mp3');
                  }), index);
                }

                return InkWell(
                  onTap: () => onNepaliButtonTap(),
                  child: NepaliButton(
                    image: nepali[index].image,
                  ),
                );
              }),
        ));
  }
}

class NepaliButton extends StatelessWidget {
  const NepaliButton({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(color: Color.fromARGB(255, 255, 179, 64), width: 2),
            borderRadius: BorderRadius.circular(80),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)));
  }
}
