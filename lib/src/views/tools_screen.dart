import 'package:dribbly/src/components/OwnAppBar.dart';
import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwnAppBar(),
      body: ToolsScreenBody(),
    );
  }
}

class ToolsScreenBody extends StatelessWidget {
  const ToolsScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
      ),
    );
  }
}