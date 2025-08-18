import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nora/components/AppButton.dart';
import 'package:nora/components/AppText.dart';
import 'package:nora/components/AppTextField.dart';
import 'package:nora/constants/ColorConstants.dart';
import 'package:nora/application/utils/extension/extensions.dart';

class MoreChangeNamePage extends StatefulWidget {
  const MoreChangeNamePage({super.key});

  @override
  State<MoreChangeNamePage> createState() => _MoreChangeNamePageState();
}

class _MoreChangeNamePageState extends State<MoreChangeNamePage> {
  final TextEditingController _nameController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isButtonEnabled = _nameController.text.trim().isNotEmpty;
    });
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                text: "이름 변경이 완료되었어요!",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              24.y,
              AppButton(
                text: "확인",
                onTap: () {
                  Get.back();
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ColorConstants.color96),
          onPressed: () => Navigator.pop(context),
        ),
        title: AppText(
          text: "이름 바꾸기",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            32.y,
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF00E5CC),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
            ),
            32.y,
            AppText(
              text: "새로운 이름을 입력해주세요!",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            16.y,
            AppTextField(
              textController: _nameController,
              hintText: "이름을 입력해주세요",
              textColorHint: ColorConstants.color96,
              fontSize: 16,
              onChanged: (value) => _onTextChanged(),
            ),
            Spacer(),
            AppButton(
              text: "완료",
              disabled: !_isButtonEnabled,
              disableColor: ColorConstants.back9aColor,
              onTap: _isButtonEnabled ? _showSuccessDialog : () {},
            ),
            32.y,
          ],
        ),
      ),
    );
  }
}
