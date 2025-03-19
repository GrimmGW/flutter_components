import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  void displayDialog( BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text('Aceptar')
            )
          ],
          title: Text('Advertencia'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta.'),
              SizedBox(height: 10),
              FlutterLogo(
                size: 50,
              )
            ],
          ),
        );
      }
    );

  }
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
         child: TextButton(
          onPressed: (){ 

            displayDialog(context);

          }, 
          child: Text('Mostrar una alerta')
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }
}