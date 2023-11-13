import 'package:flutter/material.dart';

class AuthenticatedPage extends StatefulWidget {
  const AuthenticatedPage({super.key});

  @override
  State<AuthenticatedPage> createState() => _AuthenticatedPageState();
}

class _AuthenticatedPageState extends State<AuthenticatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Authenticated Page'),),
    );
  }
}