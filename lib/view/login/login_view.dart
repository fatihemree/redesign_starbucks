import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:redesign_starbucks/init/extension/context_extension.dart';
import './login_view_model.dart';

class LoginView extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          padding: context.paddingMediumHorizontal,
          width: context.width,
          decoration: backgroundDecoration(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                  flex: 2,
                  child: SvgPicture.asset('assets/svg/starbukcsGreenText.svg')),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome back!', style: context.textTheme.headline6),
                    Padding(
                      padding: EdgeInsets.only(top: context.width * 0.01),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
                          style: context.textTheme.bodyText1),
                    )
                  ],
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: TextFieldStyle(context, 'Email'),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: context.width * 0.05),
                      child: TextField(
                        obscureText: true,
                        decoration: TextFieldStyle(context, 'Password'),
                      ),
                    ),
                    Spacer(),
                    Text('Forgot your password?',
                        style: context.textTheme.bodyText1!
                            .copyWith(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                  width: context.width,
                  height: context.height * 0.075,
                  child: ElevatedButton(
                      onPressed: () => {}, child: Text('Login'))),
              Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration TextFieldStyle(BuildContext context, String label) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white70,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.colors.secondaryVariant,
          ),
        ),
        labelStyle: TextStyle(color: context.colors.secondaryVariant),
        labelText: label);
  }

  BoxDecoration backgroundDecoration(BuildContext context) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/image/splashBg.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
