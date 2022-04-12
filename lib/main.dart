import 'package:provider/provider.dart';
import 'package:quiz_app/pages/Sign_in_up_page.dart';
import 'package:quiz_app/providers/colors.dart';
import 'package:quiz_app/providers/is_add_question_off.dart';
import 'package:quiz_app/providers/temporary_answers.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/services/auth.dart';
import 'package:quiz_app/services/authanticate.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => GradientColorPalette()),
          ChangeNotifierProvider(create: (_) => TemporaryAnswers()),
          ChangeNotifierProvider(create: (_) => IsAddQuestionOff()),
        ],
        child: const MaterialApp(
            home: Authenticate()
        ),
      )

  );
}
