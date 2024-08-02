import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:therule_oflaw/core/widget/ai_message.dart';
import 'package:therule_oflaw/core/widget/textfield.dart';
import 'package:therule_oflaw/view_model/home_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "The Rule of Low",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) {
          return Stack(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount:
                      viewModel.messages.length + (viewModel.isLoading ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < viewModel.messages.length) {
                      final message = viewModel.messages[index];
                      if (message.isUser) {
                        return Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.all(8.0),
                            child: Text(
                              message.text,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      } else {
                        return AiMessage(message.text);
                      }
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              if (viewModel.errorOutput != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    viewModel.errorOutput!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: CustomTextField(
                    controller: viewModel.controller,
                    generateText: viewModel.generateText,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
