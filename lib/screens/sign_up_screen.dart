import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';
import '../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.angleLeft, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        hintText: 'ahmedX',
                        lableText: "Name",
                        type: TextInputType.name,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      CustomTextField(
                        hintText: 'ahmed@gmail.com',
                        lableText: "Email",
                        type: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      CustomTextField(
                        isPassword: true,
                        type: TextInputType.visiblePassword,
                        hintText: 'at least 6 chars',
                        lableText: "Password",
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 90,
                            height: 50,
                            child: FlatButton(
                              color: primaryColor,
                              onPressed: () {},
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
