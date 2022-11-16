import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
 State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;
  @override
  Widget build(BuildContext context) {
    if(_currentindex==0){player.play(AssetSource("1.mp3"));}

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.amber,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                   ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                   ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                   ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                   ),
          ],
          onTap: (index){setState(() =>_currentindex=index);
            if(index!=0)
              {
                player.stop();
              }
              },
        ),
      ),
    );
  }
}
class screen1 extends StatelessWidget
{
  final String s1='我來自一個溫馨的家庭，'
      '爸爸和媽媽自己開工廠在家工作，姊姊在高雄就讀大學，'
      '家人間互動融洽。爸媽管教方式為嚴厲與鼓勵並施，'
      '在國小時就讓我學習自己起床上學，使我養成獨立自主的性格。'
      '爸媽常常教導我們做事的態度：「不要愛惜勞力」，'
      '這句話成為我做任何事情的準則，做任何事都要用心去做，'
      '不要偷懶，才能體現自身的價值。我的個性活潑外向，'
      '喜歡追求新事物，樂於與人互動談話。在課餘時間會進行各種動態與靜態活動，'
      '在動態方面，我會與同學相約打球或健身，在靜態方面，我喜愛閱讀推理或冒險類型的小說，'
      '以及自學木吉他彈唱。休閒活動不僅使我在課後之餘有事可做，'
      '不荒廢時間，也能放鬆心情。國中時因著教育部補助經費，'
      '使學校購入了 Arduino 系列的教材，'
      ' IOT 物聯網的興趣。會考—面臨選擇會考後，將要面對選擇普通高中或高職兩條路，'
      '我認為自己不適合讀理論，而且現在社會需要的不只是學歷高的人，'
      '更是要有一技之長，所以我選擇就讀高職。'
      '升上高中後，我所面對的不再只是白紙黑字的理論，'
      '還有實際的操作：電路焊接、電子儀器操作、程式設計、電路設計、專題製作等，'
      '各樣的實習科目都增加了我實作的經驗，不僅沒有讀書的枯燥感，'
      '當實作成品完成時，還有非常大的成就感。而在課業上，並無太多的起伏，'
      '學業成績都保持在 80 分以上，養成均衡學習的讀書習慣；我們老師常常鼓勵我們，'
      '讀書要有鬥志，要定好自己的目標，目標確定後，就卯起來往目標努力衝刺。';
  @override
  Widget build(BuildContext context)
  {

    player.play(AssetSource("chosen.mp3"));

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style:TextStyle(fontSize: 24,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow:[ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6,6)),
              ],),
            child: Text(s1,
              style: TextStyle(fontSize: 20,),),
          ),
          Container(
            color: Colors.blue,
            child: Image.asset('images/s1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/s1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class screen2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(child:
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("學歷")],
        ),
        SizedBox(height:50),
      ],

    )
    );
  }
}
class screen3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一"),],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 300,
                child: ListView(
                  children: [
                    Text('1.學好英文'),
                    Text('2.考證照'),
                    Text('3.順利畢業'),
                    Text('4.考研究所'),

                  ],
                ),
              )
            ], //children
          ),
          Row(),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
class screen4 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(child: Text('School'),);
  }
}


