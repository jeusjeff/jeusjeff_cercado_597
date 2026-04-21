import 'package:flutter/material.dart';
import 'package:modelhandler/screen/chat_screen%20(1).dart';
import 'package:modelhandler/screen/login_screen.dart';
import 'package:modelhandler/screen/product_screen.dart';
import 'package:modelhandler/screen/user_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://lbhnommabgcepymjcpbn.supabase.co',
     anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxiaG5vbW1hYmdjZXB5bWpjcGJuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE4ODMwMzUsImV4cCI6MjA4NzQ1OTAzNX0.-oSP_7p82wOa0ccbL9Ks5wJ4tuU4q0Tt7aC6v8H2hiY');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChatPage(username: 'testuser2'),
    );
  }
}
