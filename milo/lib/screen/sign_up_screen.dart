import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movielog/theme/app_colors.dart';
import 'package:movielog/theme/app_text_styles.dart';
import 'package:movielog/widgets/sign/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        toolbarHeight: 64,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                AppColors.onSurfaceVariant,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () {}, // 아직 기능 없음
            style: IconButton.styleFrom(
              minimumSize: const Size(40, 40),
              shape: const CircleBorder(),
            ),
          ),
        ),
        title: Text(
          '회원가입',
          style: AppTextStyles.titleLarge.copyWith(
            color: AppColors.primary,
            fontSize: 24,
          ),
        ),
      ),
      body: const SafeArea(child: SignBody()),
    );
  }
}

class SignBody extends StatelessWidget {
  const SignBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxFormWidth = constraints.maxWidth >= 700
            ? 560.0
            : double.infinity;

        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxFormWidth),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: const SignUpForm(),
            ),
          ),
        );
      },
    );
  }
}
