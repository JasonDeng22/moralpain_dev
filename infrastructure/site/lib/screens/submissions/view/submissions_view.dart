import 'package:built_collection/built_collection.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moralpainapi/moralpainapi.dart';

import '../submissions.dart';

class SubmissionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmissionsBloc, SubmissionsState>(
      builder: (context, state) => handleLoadEvents(context, state),
    );
  }

  Widget handleLoadEvents(BuildContext context, SubmissionsState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Survey Submissions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [submissionsFromState(state)],
        ),
      ),
    );
  }

  static Widget submissionsFromState(SubmissionsState state) {
    if (state is SubmissionsInitial || state is SubmissionsLoading) {
      return Expanded(child: Center(child: CircularProgressIndicator()));
    } else if (state is SubmissionsLoaded) {
      return Expanded(
        child: Center(
          child: messageFromSubmissions(state.submissions),
        ),
      );
    } else if (state is SubmissionsLoadFailed) {
      return Expanded(
        child: Center(
          child: Text('Error fetching submissions'),
        ),
      );
    } else {
      assert(false);
      return ErrorWidget('Error State');
    }
  }

  static Widget messageFromSubmissions(Submissions submissions) {
    BuiltList<Submission>? list = submissions.list;
    if (list == null) {
      return Text('No list of submissions.');
    }
    if (list.isEmpty) {
      return Text('List of submissions is empty.');
    }
    return DataTable2(
      columns: [
        DataColumn(
          label: Text('Submission Time'),
        ),
        DataColumn(
          label: Text('Score'),
        ),
        DataColumn(label: Text('User Id')),
      ],
      rows: List.generate(
        submissions.list!.length,
        (index) => submissionDataRow(submissions.list![index]),
      ),
    );
  }

  static DataRow submissionDataRow(Submission submission) {
    return DataRow(
      cells: [
        DataCell(
          submission.timestamp != null
              ? Text(
                  '${DateTime.fromMillisecondsSinceEpoch(
                    submission.timestamp! * 1000,
                  )}'
                  ' (GMT)',
                )
              : Text('No date'),
        ),
        DataCell(
          submission.score != null
              ? Text('${submission.score}')
              : Text('No score'),
        ),
        DataCell(
          submission.id != null ? Text('${submission.id}') : Text('No user ID'),
        ),
      ],
    );
  }
}
