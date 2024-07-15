import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Audio_Player extends StatefulWidget {
  const Audio_Player({super.key});

  @override
  State<Audio_Player> createState() => _Audio_PlayerState();
}

class _Audio_PlayerState extends State<Audio_Player> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Audio Player",
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(31, 80, 79, 79),
        titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
      ),
      body: Center(
        child: Wrap(
          spacing: 6,
          runSpacing: 6,
          children: [
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '1.mp3'),
            Pad(Color(0xffff2525), Color(0xffc40050), '2.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '3.mp3'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '4.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '5.mp3'),
            Pad(Color(0xffff2525), Color(0xffc40050), '6.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '7.mp3'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '8.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '9.mp3'),
            Pad(Color(0xffff2525), Color(0xffc40050), '10.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '11.mp3'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '12.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '13.mp3'),
            Pad(Color(0xffff2525), Color(0xffc40050), '14.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '15.mp3'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '16.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '17.mp3'),
            Pad(Color(0xffff2525), Color(0xffc40050), '18.mp3'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '19.mp3'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '20.wav'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '21.mp3'),
            Pad(Color(0xffff2525), Color(0xffc40050), '22.wav'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '23.wav'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '24.wav'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '25.wav'),
            Pad(Color(0xffff2525), Color(0xffc40050), '26.wav'),
            Pad(Color(0xffADCBFC), Color(0xff067CCB), '27.wav'),
            Pad(Color(0xffE247FC), Color(0xffA23AB7), '28.wav'),
          ],
        ),
      ),
    ));
  }
}

class Pad extends StatefulWidget {
  final colorcenter;
  final coloroutline;
  final note;
  Pad(this.colorcenter, this.coloroutline, this.note, {Key? key})
      : super(key: key);

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorcenter;
  late Color _coloroutline;
  final player = AudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    _colorcenter = widget.colorcenter;
    _coloroutline = widget.coloroutline;
    super.initState();
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        setState(() {
          _colorcenter = Colors.white;
          _coloroutline = Colors.white;
          player.play(AssetSource(widget.note));
        });
        await Future.delayed(Duration(milliseconds: 200));
        setState(() {
          _colorcenter = widget.colorcenter;
          _coloroutline = widget.coloroutline;
        });
      },
      child: Container(
        height: height / 8.2,
        width: width / 4.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: RadialGradient(
              colors: [
                _colorcenter,
                _coloroutline,
              ],
              radius: 0.5,
            ),
            boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 5.0)]),
      ),
    );
  }
}
