import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MySchemesScreen extends StatefulWidget {
  const MySchemesScreen({super.key});
  @override
  State<MySchemesScreen> createState() => _MySchemesScreenState();
}
class _MySchemesScreenState extends State<MySchemesScreen> {
  final Map<String, String> headers = {
    'X-APISETU-CLIENTID': clientId,
    'X-APISETU-APIKEY': apiKey,
  };
  String stringResponse="";
  Future apicall() async{
    http.Response response;
    response=await http.get(Uri.parse("https://apisetu.gov.in/dic/myscheme/srv/v3/search/autocomplete?suggest=Search%20schemes%20based%20on%20scheme%20name%2C%20scheme%20short%20title%20and%20scheme%20tags&size=20&lang=Get%20schemes%20data%20language%20wise%20-%20en%20%7C%20hi"));
    if(response.statusCode==200){
      setState(() {
        stringResponse=response.body;
      });
    }
    else
      stringResponse="Failded";
  }
  @override
  void initState() {
    apicall();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(stringResponse.toString(), style: TextStyle(color: Colors.black, fontSize: 28),),
      ),
    );
  }
}
