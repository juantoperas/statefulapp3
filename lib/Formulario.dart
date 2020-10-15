/*palntilla stateful*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Formulario extends StatefulWidget{
  @override
  FormularioState createState() {
    print("CreateState Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>{
  bool _mostrar = true; //para que no se vea la contraseña

  doClick(){
    print("click");

    setState(() {
      _mostrar=!_mostrar;
    });
  }
  @override
   Widget build(BuildContext context){
    return
      Row(
      children:[
        Expanded(child:
        TextField (
          obscureText: _mostrar,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        )
        ),
        //**************
        IconButton(
          icon:Icon(Icons.visibility),
          onPressed:(){
            doClick();
          },
        ),
        ],
      );
  }
}


