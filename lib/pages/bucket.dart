import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cdr_today/pages/post.dart';
import 'package:cdr_today/widgets/avatar.dart';
import 'package:cdr_today/widgets/cards.dart';
import 'package:cdr_today/widgets/refresh.dart';
import 'package:cdr_today/navigations/args.dart';

class Bucket extends StatelessWidget {
  final Widget leading;
  final Widget drawer;
  final Widget bottomSheet;
  Bucket({
      this.drawer,
      this.bottomSheet,
      this.leading,
  });
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Post(
        appBar: SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          snap: true,
          elevation: 0.0,
          forceElevated: true,
          leading: leading ?? CloseButton(),
          title: PostRefresher(),
        ),
        title: sliverProfile(context),
      ),
      drawer: drawer,
      backgroundColor: Colors.white,
    );
  }
}
