import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
     home: MyApp())
    );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var name = ['김철수', '이영희', '홍길동'];
  var total = 3;

  plusOne() {
    setState(() {
      total++;
    });
  }
  addName(a) {
    setState(() {
      name.add(a);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('+', style: TextStyle(fontSize: 36),),
        onPressed: () {
          showDialog(context: context, builder: (context) {
            return DialogUI(plusOne : plusOne, addName : addName);
          });
          // setState(() {
          //   total++;
          // });
        },
      ),
      appBar: AppBar(title: Text(total.toString()),),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, i){
          return ListTile(
            leading: Icon(Icons.photo),
            title: Text(name[i]),
          );
        }
      ),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({super.key, this.plusOne, this.addName});
  final plusOne;
  final addName;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 160,
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Contact'),
            TextField(controller: inputData),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    if (inputData.text.length == 0) {
                      return;
                    } else {  
                      plusOne();
                      Navigator.of(context).pop();
                      addName(inputData.text);
                    }
                  },
                ),
                TextButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


// ----------------------------------------- 기본 -----------------------------------------------

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //Text('텍스트') / Icon(Iccons.아이콘이름) / Image.asset('경로') / Container(), SizedBox()
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('wl'),
//         ),
//         body: Align(
//           alignment: Alignment.topCenter,
//           child: Container(
//             width: double.infinity, height: 50,
//             margin: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.indigo,
//               border: Border.all(color: Colors.black)
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: SizedBox(
//             height: 60,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.call),
//                 Icon(Icons.message),
//                 Icon(Icons.contact_page),
//               ]
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }

// ----------------------------------------- Flexible & 당큰마켓 -----------------------------------------------

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             '금호동3가',
//             style: TextStyle(color: Colors.black),
//           ),
//           actions: [
//             IconButton(icon: Icon(Icons.search), color: Colors.black, onPressed: () {}),
//             IconButton(icon: Icon(Icons.menu), color: Colors.black, onPressed: () {}),
//             IconButton(icon: Icon(Icons.notifications_active_outlined), color: Colors.black, onPressed: () {}),
//           ],
//           backgroundColor: Colors.white,
//         ),
//         // body: Row(
//         //   children: [
//         //     Expanded(child: Container(color: Colors.red,)),
//         //     Container(width: 100, color: Colors.green,)

//         //     // Flexible(child: Container(color: Colors.red,), flex: 1),
//         //     // Flexible(child: Container(color: Colors.green,), flex: 1),
//         //     // Flexible(child: Container(color: Colors.blue,), flex: 1),
//         //   ],
//         // ),
//         body: Container(
//           width: double.infinity, height: 120,
//           color: Colors.white,
//           margin: EdgeInsets.all(10),
//           child: Row(
//             children: [
//               // Image.asset('assets/Icon-192.png'),
//               Container(
//                 width: 80, height: 80,
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//               ),
//               Flexible(child: Container(
//                 padding: EdgeInsets.all(10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('홀랜드&쉐리 챠콜 그레이 L (자켓, 바지)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
//                     Text('상동구 청담동 / 10분전', style: TextStyle(color: Colors.grey),),
//                     Text('210,000원', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(Icons.favorite_border_outlined, color: Colors.grey, size: 16),
//                         Text(' 4', style: TextStyle(fontSize: 14, color: Colors.grey)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var name = ['홍길동', '김철수', '신짱구'];
//   var like = [0, 0, 0];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('연락처'),
//         ),
//         body: ListView.builder(
//           itemCount: 3,
//           itemBuilder: (context, i) {
//             return ListTile(
//               leading: Text(like[i].toString()),
//               title: Text(name[i]),
//               trailing: ElevatedButton(
//                 child: Text('좋아요'),
//                 onPressed: () {
//                   setState(() {
//                     print(like[i]);
//                     like[i]++;
//                   });
//                 },
//               ),
//             );
//           },
//         ),
//         //  body: ListView(
//         //  children: [
//         //    ListTile(
//         //      leading: Icon(Icons.photo, size: 50),
//         //      title: Text('홍길동', style: TextStyle(fontSize: 18)),
//         //    )
//         //  ],
//         // children: [
//         //   Container(
//         //     width: double.infinity, height: 70,
//         //     padding: EdgeInsets.all(10),
//         //     child: Row(
//         //       children: [
//         //         Icon(Icons.photo, size: 50),
//         //         Text('홍길동', style: TextStyle(fontSize: 18))
//         //       ],
//         //     ),
//         //   ),
//         //   Container(
//         //     width: double.infinity, height: 70,
//         //     padding: EdgeInsets.all(10),
//         //     child: Row(
//         //       children: [
//         //         Icon(Icons.photo, size: 50),
//         //         Text('홍길동', style: TextStyle(fontSize: 18))
//         //       ],
//         //     ),
//         //   ),
//         //   Container(
//         //     width: double.infinity, height: 70,
//         //     padding: EdgeInsets.all(10),
//         //     child: Row(
//         //       children: [
//         //         Icon(Icons.photo, size: 50),
//         //         Text('홍길동', style: TextStyle(fontSize: 18))
//         //       ],
//         //     ),
//         //   )
//         // ],
//         //  ),
//         //bottomNavigationBar: BottomAppBar(),
//       ),
//     );
//   }
// }

// class BottomAppBar extends StatelessWidget {
//   const BottomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                   icon: Icon(Icons.call),
//                   color: Colors.black,
//                   onPressed: () {}),
//               IconButton(
//                   icon: Icon(Icons.message),
//                   color: Colors.black,
//                   onPressed: () {}),
//               IconButton(
//                   icon: Icon(Icons.contact_page),
//                   color: Colors.black,
//                   onPressed: () {}),
//             ],
//           ),
//           decoration: BoxDecoration(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
