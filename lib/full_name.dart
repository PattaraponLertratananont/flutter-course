import 'package:flutter/material.dart';

class FullNameWidget extends StatefulWidget {
  String fullName;
  FullNameWidget({required this.fullName, super.key});

  @override
  State<FullNameWidget> createState() => _FullNameWidgetState();
}

class _FullNameWidgetState extends State<FullNameWidget> {
  @override
  void didUpdateWidget(covariant FullNameWidget oldWidget) {
    // TODO: implement didUpdateWidget
    print("didUpdateWidget on the FullName Widget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("deactivate on the FullName Widget");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("Dispose on the fullname");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          widget.fullName,
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
