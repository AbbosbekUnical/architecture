import 'dart:developer';
import 'dart:io';

import 'package:architecture/src/config/route/routes.dart';
import 'package:architecture/src/core/constants/constants.dart';
import 'package:architecture/src/data/source/local/local_source.dart';
import 'package:architecture/src/presentation/bloc/main/main_bloc.dart';
import 'package:architecture/src/presentation/bloc/splash/splash_bloc.dart';
import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../src/config/route/app_route.dart';

part 'injection.dart';