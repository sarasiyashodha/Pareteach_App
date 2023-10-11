import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mini_project_mobile_app/Screens/account/create_account.dart';
import 'package:mini_project_mobile_app/providers/homework_provider.dart';
import 'package:mini_project_mobile_app/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:mini_project_mobile_app/Screens/HomePage/splash_screen.dart';
import 'package:mini_project_mobile_app/Screens/HomePage/user_selection_page.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/Homework&Assignments/homework_&_assignments.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/Homework&Assignments/parent_screen.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/Homework&Assignments/assignments.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/MarksOfQuizzes&Exams/marks_of_quizzes_&_exams.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/MarksOfQuizzes&Exams/marks_of_quizzes.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/MarksOfQuizzes&Exams/marks_of_exams.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Attendance/attendance_report2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/assignments2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/homework2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/homework_&_assignments2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/MarksOfQuizzes&Exams/marks_of_exams2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/MarksOfQuizzes&Exams/marks_of_quizzes2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/MarksOfQuizzes&Exams/marks_of_quizzes_&_exams2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/recommendations2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/notification2.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page1.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page10.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page2.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page3.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page4.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page5.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page6.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page7.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page8.dart';
import 'package:mini_project_mobile_app/Screens/setting pages/setting_page9.dart';
import 'package:mini_project_mobile_app/Screens/account/profile.dart';
import 'package:mini_project_mobile_app/Screens/Updates/updates.dart';
import 'package:mini_project_mobile_app/Screens/Updates/events.dart';
import 'package:mini_project_mobile_app/Screens/Updates/holidays.dart';
import 'package:mini_project_mobile_app/Screens/Updates/extra_classes.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/Attendance/attendance_report.dart';
import 'package:mini_project_mobile_app/Screens/account//forgot_password.dart';
import 'package:mini_project_mobile_app/Screens/account//verify_code.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/notifications.dart';
import 'package:mini_project_mobile_app/Screens/ParentsAccount/recommendations.dart';
import 'package:mini_project_mobile_app/Screens/Progress.dart';
import 'package:mini_project_mobile_app/Screens/account/OTP_verified.dart';
import 'package:mini_project_mobile_app/Screens/account/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => HomeworkProvider(),
      ),


    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/two': (context) => UserSelectionPage(),
        '/three': (context) => LoginPage(toggle: () {}),
        '/four': (context) => CreateAccount(toggle: (){}),
        '/five': (context) => ForgotPassword(),
        '/six': (context) => VerifyCode(),
        '/seven': (context) => VerifiedOTP(),
        '/eight': (context) => Profile(),
        '/nine': (context) => HomeworkAndAssignments(),
        '/ten': (context) => ParentScreen(),
        '/eleven': (context) => Assignments(),
        '/twelve': (context) => MarksOfQuizzesAndExams(),
        '/thirteen': (context) => MarksOfQuizzes(),
        '/fourteen': (context) => MarksOfExams(),
        '/fifteen': (context) => Updates(),
        '/sixteen': (context) => Events(),
        '/seventeen': (context) => Holidays(),
        '/eighteen': (context) => ExtraClasses(),
        '/nineteen': (context) => AttendanceReport(),
        '/twenty': (context) => Notifications(),
        '/twenty_one': (context) => Recommendations(),
        '/twenty_two': (context) => Progress(),
        '/twenty_three': (context) => Notifications2(),
        '/twenty_four': (context) => HomeworkAndAssignments2(),
        '/twenty_five': (context) => Homework2(),
        '/twenty_six': (context) => Assignments2(),
        '/twenty_seven': (context) => MarksOfQuizzesAndExams2(),
        '/twenty_eight': (context) => MarksOfQuizzes2(),
        '/twenty_nine': (context) => MarksOfExams2(),
        '/thirty': (context) => AttendanceReport(),
        '/thirty_one': (context) => AttendanceReport2(),
        '/thirty_two': (context) => Recommendations2(),
        '/thirty_three': (context) => SettingPage1(),
        '/thirty_four': (context) => SettingPage2(),
        '/thirty_five': (context) => SettingPage3(),
        '/thirty_six': (context) => SettingPage4(),
        '/thirty_seven': (context) => SettingPage5(),
        '/thirty_eight': (context) => SettingPage6(),
        '/thirty_nine': (context) => SettingPage7(),
        '/forty': (context) => SettingPage8(),
        '/forty_one': (context) => SettingPage9(),
        '/forty_two': (context) => SettingPage10(),

      

      },
    );
  }
}

