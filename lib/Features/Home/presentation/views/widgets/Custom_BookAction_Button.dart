import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_Button.dart';
import 'package:bookly/core/functions/Url_Launcher.dart';
import 'package:flutter/material.dart';

class CustomBookActionButton extends StatelessWidget {
  const CustomBookActionButton({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              title: 'Free',
              titleColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10.0),
                  bottomStart: Radius.circular(10.0)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onpressed: () {
                  launcherUrlFunction(url: bookModel.volumeInfo?.previewLink);
              },
              title: 'Preview',
              titleColor: Colors.white,
              backgroundColor: const Color(0xFFEf8262),
              borderRadius: const BorderRadiusDirectional.only(
                  topEnd: Radius.circular(10.0),
                  bottomEnd: Radius.circular(10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
