import 'package:flutter/material.dart';

class DeviceSize{
  BuildContext _context;
  var _width;
  var _height;


  DeviceSize(this._context){
    _width = MediaQuery.of(_context).size.width;
    _height = MediaQuery.of(_context).size.height;
  }

  get height => _height;

  get width => _width;


}