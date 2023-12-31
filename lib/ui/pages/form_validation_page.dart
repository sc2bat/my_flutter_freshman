import 'package:flutter/material.dart';
import 'package:my_flutter_freshman/logger/logger.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({
    super.key,
  });

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _formGlobalKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('qwerasdf'),
      ),
      body: Form(
        key: _formGlobalKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    // 간단한 이메일 유효성 검사
                    if (!RegExp(
                            r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text('SnackBar~~'),
                      action: SnackBarAction(
                          label: 'cancel',
                          onPressed: () {
                            logger.info('qwerasdf snackbar cancel');
                          }),
                    );
                    if (_formGlobalKey.currentState != null &&
                        _formGlobalKey.currentState!.validate()) {
                      logger.info('qwerasdf validation done');
                      if (_formGlobalKey.currentContext != null) {
                        ScaffoldMessenger.of(_formGlobalKey.currentContext!)
                            .showSnackBar(snackBar);
                      }
                    }
                  },
                  child: const Icon(
                    Icons.done,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
