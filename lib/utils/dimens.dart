import 'package:flutter/material.dart';

 appScreenWidth(context)
{
return MediaQuery.of(context).size.width;
}

 appScreenHeight(context)
{
return MediaQuery.of(context).size.height;
}

appHorizontalSpace()
{
  return EdgeInsets.all(20);
}

addVerticalSpace({double h = 20})
{
  return SizedBox(height: h,);
}
