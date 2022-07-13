import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: (){
              debugPrint('Action');
            } , 
            icon: const Icon(Icons.info_outline),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/view.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color.fromARGB(255, 20, 64, 85),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.brown,
              child: const Center(child:  Text('hi guy', style: TextStyle(color: Colors.pink))),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.lightBlue : Colors.amber,
              ),
              onPressed:(){
                debugPrint('Elevated Button');
              }, 
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed:(){
                debugPrint('Outlined Button');
              }, 
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed:(){
                debugPrint('Text Button');
              }, 
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                  Text('Do not touch it'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Switch(
                    value: isSwitch, 
                    onChanged: (bool newbool){
                      setState(() {
                        isSwitch = newbool;
                      });
                      
                    }
                  ),
                  Checkbox(value: isCheck, onChanged: (bool? newbool){
                    setState(() {
                      isCheck = newbool;
                    });
                  }),
                  Image.asset('images/river.jpg' )
          ],
        ),
      ),
    );
  }
}
