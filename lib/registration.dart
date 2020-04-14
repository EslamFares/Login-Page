import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/img/waves_bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ..._titles(context),
                SizedBox(
                  height: 24,
                ),
                Form(
                  child: Column(children: _form(context)),
                ),
                SizedBox(height: 48,),
                _notes(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _titles(BuildContext context) {
    return [
      Text(
        'Welcome back to',
        style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2),
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Eslam',
              style: TextStyle(
                  color: Color(0xffeb4137),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: 1.1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Text(
              'Fares',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
          )
        ],
      )
    ];
  }

  List<Widget> _form(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Material(
          color: Colors.black87.withOpacity(.4),
          elevation: 0,
          borderRadius: BorderRadius.circular(25.0),
          child: TextFormField(
            style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 25.0,
                ),
                contentPadding: EdgeInsets.only(left: 24, top: 16, bottom: 16),
                hintText: 'email@adress.com',
                hintStyle: TextStyle(
                    color: Colors.grey.shade700, fontFamily: 'Quicksand')),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Material(
          color: Colors.black87.withOpacity(.4),
          elevation: 0,
          borderRadius: BorderRadius.circular(25.0),
          child: TextFormField(
            obscureText: _obscureText,
            style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed:  (){
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    _obscureText? Icons.visibility_off: Icons.visibility,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.white,
                  size: 25.0,
                ),
                contentPadding: EdgeInsets.only(left: 24, top: 16, bottom: 16),
                hintText: ' * * * * * * * ',
                hintStyle: TextStyle(
                  color: Colors.grey.shade700,
                  fontFamily: 'Quicksand',
                )),
          ),
        ),
      ),
      SizedBox(height: 16,),
      GestureDetector(
        onTap: (){print(1);},
        child: Container(
          alignment: Alignment.center,
          width: 320,
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xffeb4137),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          child: Text('SIGN IN',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
      )
    ];
  }

  _notes(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Don't have an account?",style: TextStyle(
          color: Colors.white,
          fontSize: 14
        ),),
        FlatButton(
          child: Text('Create One',style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
            decoration: TextDecoration.underline
          ),),
          onPressed: () {},
        )
      ],
    );
  }
}
