import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:sas/app/modules/signup/signup_bloc.dart';
import 'package:sas/app/modules/signup/signup_module.dart';

void main() {
  initModule(SignupModule());
  SignupBloc bloc;

  // setUp(() {
  //     bloc = SignupModule.to.bloc<SignupBloc>();
  // });

  // group('SignupBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<SignupBloc>());
  //   });
  // });
}
