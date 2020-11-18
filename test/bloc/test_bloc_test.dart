import 'package:test/test.dart';

import '../../bin/bloc/test_bloc.dart';

void main() {
  test('unawaited close() emits done', () {
    final testBloc = TestBloc();
    testBloc.close();
    expect(testBloc, emitsDone);
  });

  test('awaited close() emits done', () async {
    final testBloc = TestBloc();
    await testBloc.close();
    expect(testBloc, emitsDone);
  });
}
