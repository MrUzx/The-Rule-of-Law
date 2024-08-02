import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:therule_oflaw/model/gemini_message.dart';

class HomeViewModel extends ChangeNotifier {
  final gemini = Gemini.instance;
  TextEditingController controller = TextEditingController();
  List<Message> _messages = [];
  String? _errorOutput;
  bool _isLoading = false;

  List<Message> get messages => _messages;
  String? get errorOutput => _errorOutput;
  bool get isLoading => _isLoading;

  void generateText() {
    final text = controller.text.trim();
    if (text.isNotEmpty) {
      _messages.add(Message(text: text, isUser: true));
      controller.clear();
      _isLoading = true;
      notifyListeners();

      gemini.text(text).then((value) {
        _messages.add(Message(text: value?.output ?? '', isUser: false));
        _isLoading = false;
        notifyListeners();
      }).catchError((e) {
        _errorOutput = e.toString();
        _isLoading = false;
        notifyListeners();
      });
    }
  }

  void clearError() {
    _errorOutput = null;
    notifyListeners();
  }
}
