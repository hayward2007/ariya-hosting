// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ariya/routes/routes.dart';

// class CustomNavigationBar extends StatefulWidget {
//   const CustomNavigationBar({super.key, required this.initialIndex});

//   final int initialIndex;

//   @override
//   _CustomNavigationBarState createState() => _CustomNavigationBarState();
// }

// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   late int currentIndex; // 상태로 currentIndex 관리

//   static Color defaultColor = const Color.fromRGBO(184, 184, 184, 1.0);
//   static Color selectedColor = const Color.fromRGBO(54, 54, 54, 1.0);

//   @override
//   void initState() {
//     super.initState();
//     currentIndex = widget.initialIndex; // 초기 상태 설정
//   }


  // void _onItemTapped(int index) {
  //   if (currentIndex != index) {
  //     setState(() {
  //       currentIndex = index;
  //     });
  //     switch (index) {
  //       case 0:
  //         Get.offAndToNamed(Routes.HOME);
  //         break;
  //       case 1:
  //         Get.offAndToNamed(Routes.INVEST);
  //         break;
  //       case 2:
  //         Get.offAndToNamed(Routes.VIDEO1);
  //         break;
  //       case 3:
  //         Get.offAndToNamed(Routes.RANK);
  //         break;
  //     }
  //   }
  // }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // ... 기존 데코레이션 코드
//       child: ClipRRect(
//         // ... 기존 borderRadius 코드
//         child: BottomNavigationBar(
//           backgroundColor: Colors.white,
//           currentIndex: currentIndex,
//           selectedItemColor: selectedColor,
//           unselectedItemColor: defaultColor,
//           selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.black),
//           unselectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.grey),
//           type: BottomNavigationBarType.fixed,
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.house_rounded, size: 28),
//               label: '홈',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.bar_chart_rounded, size: 28),
//               label: '투자',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.quiz_rounded, size: 28),
//               label: '퀴즈',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.star_rounded, size: 28),
//               label: '랭킹',
//             ),
//           ],
//           onTap: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }
