import 'package:flutter/material.dart';
import 'package:vpp/widgets/app_color.dart';

class OtpPinWidget extends StatefulWidget {
  const OtpPinWidget({super.key, this.length = 6, required this.onCompleted});
  final int length;
  final ValueChanged<String> onCompleted;

  @override
  State<OtpPinWidget> createState() => _OtpPinWidgetState();
}

class _OtpPinWidgetState extends State<OtpPinWidget> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(widget.length, (_) => TextEditingController());
    focusNodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in controllers) {
      c.dispose();
    }
    for (final f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _submitCode() {
    final code = controllers.map((e) => e.text).join();
    if (code.length == widget.length) {
      widget.onCompleted(code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.length, (index) {
        return SizedBox(
          width: 56,
          height: 56,
          child: TextField(
            controller: controllers[index],
            focusNode: focusNodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColor.border, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColor.buttonColor,
                  width: 1,
                ),
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty && index < widget.length - 1) {
                FocusScope.of(context).requestFocus(focusNodes[index + 1]);
              }
              if (value.isEmpty && index > 0) {
                FocusScope.of(context).requestFocus(focusNodes[index - 1]);
              }
              _submitCode();
            },
          ),
        );
      }),
    );
  }
}
