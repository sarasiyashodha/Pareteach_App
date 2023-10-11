// // import 'package:flutter/material.dart';
// // import 'package:mini_project_mobile_app/constants.dart';
// // import 'package:mini_project_mobile_app/lists.dart';
// //
// // import 'package:mini_project_mobile_app/Components/nav_bar.dart';
// //
// // class Homework extends StatefulWidget {
// //   const Homework({super.key});
// //
// //   @override
// //   State<Homework> createState() => _HomeworkState();
// // }
// //
// // Lists list = Lists();
// //
// // class _HomeworkState extends State<Homework> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       drawer: NavBar(),
// //       appBar: AppBar(
// //         backgroundColor: Color(0xFF305D62),
// //         title: Text("Homework"),
// //         actions: [
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: CircleAvatar(
// //               backgroundImage: AssetImage("Images/parentProfile.jpg"),
// //             ),
// //           ),
// //         ],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(5.0),
// //         child: Column(
// //           children: [
// //
// //             const SizedBox(
// //               height: 40.0,
// //             ),
// //             const Row(
// //               children: [
// //                 Row(
// //                   children: [
// //                     Icon(Icons.check_circle_sharp, color: Color(0XFF2ECC71)),
// //                     Padding(
// //                       padding: EdgeInsets.all(4.0),
// //                       child: Text("Submitted", style: knormalTextStyle),
// //                     ),
// //                   ],
// //                 ),
// //                 SizedBox(
// //                   width: 10.0,
// //                 ),
// //                 Row(
// //                   children: [
// //                     Icon(Icons.cancel_sharp, color: Color(0XFFE74C3C)),
// //                     Padding(
// //                       padding: EdgeInsets.all(4.0),
// //                       child: Text("Not submitted", style: knormalTextStyle),
// //                     ),
// //                   ],
// //                 ),
// //                 SizedBox(
// //                   width: 10.0,
// //                 ),
// //                 Row(
// //                   children: [
// //                     Icon(Icons.error_sharp, color: Color(0XFFEABF29)),
// //                     Padding(
// //                       padding: EdgeInsets.all(4.0),
// //                       child: Text("Due today", style: knormalTextStyle),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             const SizedBox(
// //               height: 50.0,
// //             ),
// //             SizedBox(
// //               height: 450.0,
// //               child: ListView.builder(
// //                 itemCount: list.icons.length,
// //                 itemBuilder: (context, index) {
// //                   return Container(
// //                     margin: const EdgeInsets.only(bottom: 10.0),
// //                     padding: const EdgeInsets.all(10.0),
// //                     height: 80,
// //                     width: 400,
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: list.colors[index], width: 3.0),
// //                       borderRadius: const BorderRadius.all(Radius.circular(15.0)),
// //                     ),
// //                     child: Row(
// //                       children: [
// //                         Icon(list.icons[index], color: list.colors[index], size: 30.0),
// //                         const SizedBox(
// //                           width: 20.0,
// //                         ),
// //                         Text(list.text[index], style: knormalTextStyle),
// //                       ],
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         selectedItemColor: Colors.black,
// //         unselectedItemColor: Colors.grey,
// //         showSelectedLabels: true,
// //         showUnselectedLabels: true,
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
// //           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
// //           BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics"),
// //           BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../../providers/homework_provider.dart';
// import 'package:mini_project_mobile_app/models/homework_model.dart';
//
// class Homework extends StatelessWidget {
//   get title => null;
//
//   get description => null;
//
//   get dueDate => null;
//
//   get fileNames => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homework for Parents'),
//       ),
//       body: Consumer<HomeworkProvider>(
//         builder: (context, provider, child) {
//           if (provider.homeworks.isEmpty) {
//             return Center(child: Text('No homework available.'));
//           } else {
//             return ListView.builder(
//               itemCount: provider.homeworks.length,
//               itemBuilder: (context, index) {
//                 Homework homework = provider.homeworks[index] as Homework;
//                 return ListTile(
//                   title: Text('Title: ${homework.title}'),
//                   subtitle: Text('Description: ${homework.description}'),
//                   trailing: Text('Due Date: ${homework.dueDate}'),
//                   onTap: () {
//                     _showDownloadDialog(context, homework); // Show download dialog on tap
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   // Function to show a dialog with file download options
//   void _showDownloadDialog(BuildContext context, Homework homework) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Download Files'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               for (int i = 0; i < homework.fileNames.length; i++)
//                 ListTile(
//                   title: Text(homework.fileNames[i]), // Display file names
//                   onTap: () {
//                     // Implement file download logic using homework.fileUrls[i]
//                     // For example, you can use the url_launcher package to open the file URL
//                     // Make sure to handle file download according to your requirements
//                     // Example using url_launcher: launch(homework.fileUrls[i]);
//                     // Handle file download as per your project's file handling mechanism
//                   },
//                 ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../../providers/homework_provider.dart';// Import your HomeworkProvider class
// import 'package:mini_project_mobile_app/models/homework_model.dart';    // Import your Homework class
//
// class ParentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homework for Parents'),
//       ),
//       body: Consumer<HomeworkProvider>(
//         builder: (context, provider, child) {
//           if (provider.homeworks.isEmpty) {
//             return Center(child: Text('No homework available.'));
//           } else {
//             return ListView.builder(
//               itemCount: provider.homeworks.length,
//               itemBuilder: (context, index) {
//                 Homework homework = provider.homeworks[index];
//                 return ListTile(
//                   title: Text('Title: ${homework.title}'),
//                   subtitle: Text('Description: ${homework.description}'),
//                   trailing: Text('Due Date: ${homework.dueDate}'),
//                   onTap: () {
//                     _showDownloadDialog(context, homework); // Show download dialog on tap
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   // Function to show a dialog with file download options
//   void _showDownloadDialog(BuildContext context, Homework homework) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Download Files'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               for (int i = 0; i < homework.fileNames.length; i++)
//                 ListTile(
//                   title: Text(homework.fileNames[i]), // Display file names
//                   onTap: () {
//                     // Implement file download logic using homework.fileUrls[i]
//                     // For example, you can use the url_launcher package to open the file URL
//                     // Make sure to handle file download according to your requirements
//                     // Example using url_launcher: launch(homework.fileUrls[i]);
//                     // Handle file download as per your project's file handling mechanism
//                   },
//                 ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../../models/homework_model.dart';
// import '../../../providers/homework_provider.dart';
//
// class ParentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homework for Parents'),
//       ),
//       body: FutureBuilder<List<Homework>>(
//         future: Provider.of<HomeworkProvider>(context).getHomeworks(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator(); // Loading indicator while fetching data
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Text('No homework available.'); // Message when there is no homework
//           } else {
//             // Display the homeworks in a ListView
//             return ListView.builder(
//               itemCount: snapshot.data?.length,
//               itemBuilder: (context, index) {
//                 Homework? homework = snapshot.data?[index];
//                 return ListTile(
//                   title: Text('Title: ${homework?.title}'),
//                   subtitle: Text('Description: ${homework?.description}'),
//                   trailing: Text('Due Date: ${homework?.dueDate.toString()}'),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../../models/homework_model.dart';
// import '../../../providers/homework_provider.dart';
//
// class ParentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homework for Parents'),
//       ),
//       body: FutureBuilder<List<Homework>>(
//         future: Provider.of<HomeworkProvider>(context).getHomeworks(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator(); // Loading indicator while fetching data
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else if (snapshot.data == null || snapshot.data!.isEmpty) {
//             return Text('No homework available.'); // Message when there is no homework
//           } else {
//             // Display the homeworks in a ListView
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 Homework homework = snapshot.data![index];
//                 return ListTile(
//                   title: Text('Title: ${homework.title}'),
//                   subtitle: Text('Description: ${homework.description}'),
//                   trailing: Text('Due Date: ${homework.dueDate.toString()}'),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/homework_model.dart';
import '../../../providers/homework_provider.dart';

// class ParentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var homeworkProvider = Provider.of<HomeworkProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homework for Parents'),
//       ),
//       body: FutureBuilder<List<Homework>>(
//         future: homeworkProvider.getHomeworks(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator(); // Loading indicator while fetching data
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else if (snapshot.data == null || snapshot.data!.isEmpty) {
//             return Text('No homework available.'); // Message when there is no homework
//           } else {
//             // Display the homeworks in a ListView
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 Homework homework = snapshot.data![index];
//                 return ListTile(
//                   title: Text('Title: ${homework.title}'),
//                   subtitle: Text('Description: ${homework.description}'),
//                   trailing: Text('Due Date: ${homework.dueDate.toString()}'),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
class ParentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homework for Parents'),
      ),
      // body: FutureBuilder<List<Homework>>(
      //   future: Provider.of<HomeworkProvider>(context).getHomeworks(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return CircularProgressIndicator(); // Loading indicator while fetching data
      //     } else if (snapshot.hasError) {
      //       return Text('Error: ${snapshot.error}');
      //     } else {
      //       final homeworks = snapshot.data;
      //       if (homeworks == null || homeworks.isEmpty) {
      //         return Text('No homework available.'); // Message when there is no homework
      //       } else {
      //         // Display the homeworks in a ListView
      //         return ListView.builder(
      //           itemCount: homeworks.length,
      //           itemBuilder: (context, index) {
      //             Homework homework = homeworks[index];
      //             return ListTile(
      //               title: Text('Title: ${homework.title}'),
      //               subtitle: Text('Description: ${homework.description}'),
      //               trailing: Text('Due Date: ${homework.dueDate.toString()}'),
      //             );
      //           },
      //         );
      //       }
      //     }
      //   },
      // ),
      body: Consumer<HomeworkProvider>(
        builder: (context, provider, child) {
          if (provider.homeworks.isEmpty) {
            return Center(child: Text('No homework available.'));
          } else {
            return ListView.builder(
              itemCount: provider.homeworks.length,
              itemBuilder: (context, index) {
                Homework homework = provider.homeworks[index];
                return ListTile(
                  title: Text('Title: ${homework.title}'),
                  subtitle: Text('Description: ${homework.description}'),
                  trailing: Text('Due Date: ${homework.dueDate.toString()}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}


