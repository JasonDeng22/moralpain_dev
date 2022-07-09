import 'package:admin/api_repository.dart';
import 'package:admin/screens/submissions/submissions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moralpainapi/moralpainapi.dart';

void main() {
  group('SubmissionsView', () {
    final String title = 'Survey Submissions';
    final String errorMsg = 'Error fetching submissions';

    late ApiRepository repository;
    late SubmissionsBloc bloc;

    setUp(() {
      repository = ApiRepository();
      bloc = SubmissionsBloc(repository: repository);
    });

    Future<void> pumpApp(WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: RepositoryProvider.value(
          value: repository,
          child: BlocProvider(
            create: (_) => bloc,
            child: SubmissionsView(),
          ),
        ),
      ));
    }

    group('renders', () {
      testWidgets('AppBar with correct title text', (tester) async {
        await pumpApp(tester);
        expect(find.byType(AppBar), findsOneWidget);
        expect(find.text(title), findsOneWidget);
      });
    });

    group('submissionsFromState', () {
      Future<void> pumpApp(WidgetTester tester, SubmissionsState state) async {
        await tester.pumpWidget(MaterialApp(
          home: Column(
            children: [SubmissionsView.submissionsFromState(state)],
          ),
        ));
      }

      testWidgets(
        'renders CircularProgressIndicator when status is SubmissionsInitial',
        (tester) async {
          await pumpApp(tester, SubmissionsInitial());
          expect(find.byType(CircularProgressIndicator), findsOneWidget);
        },
      );

      testWidgets(
        'renders CircularProgressIndicator when status is SubmissionsLoading',
        (tester) async {
          await pumpApp(tester, SubmissionsLoading());
          expect(find.byType(CircularProgressIndicator), findsOneWidget);
        },
      );

      testWidgets(
        'renders list of submissions when status is SubmissionsLoaded',
        (tester) async {
          SubmissionsLoaded state = SubmissionsLoaded(Submissions());
          await pumpApp(tester, state);
          expect(
            find.text(
              SubmissionsView.messageFromSubmissions(state.submissions),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets('renders error message when status is SubmissionsLoadFailed',
          (tester) async {
        await pumpApp(tester, SubmissionsLoadFailed());
        expect(find.text(errorMsg), findsOneWidget);
      });
    });
  });
}
