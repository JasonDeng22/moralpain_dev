# moralpainapi (EXPERIMENTAL)
MoralDistress API.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.12.0 or later OR Flutter 1.26.0 or later
* Dio 4.0.0+

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  moralpainapi: 1.0.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  moralpainapi:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  moralpainapi:
    path: /path/to/moralpainapi
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:moralpainapi/moralpainapi.dart';


final api = Moralpainapi().getAdminApi();
final int starttime = 1640995200; // int | Minimum possible timestamp of a record in UTC seconds since Unix epoch.
final int endtime = 1647907200; // int | Maximum possible timestamp of a record in UTC seconds since Unix epoch.
final int minscore = 1; // int | Minimum possible score of a record.
final int maxscore = 5; // int | Maximum possible score of a record.
final String uuid = f2f2011c8d2547849dfce99ae4b75797; // String | If this parameter is specified, all other parameters are ignored and only the submission with the given UUID is fetched. If no such submission exists, an empty list is fetched. 

try {
    final response = await api.getAdminSubmissions(starttime, endtime, minscore, maxscore, uuid);
    print(response);
} catch on DioError (e) {
    print("Exception when calling AdminApi->getAdminSubmissions: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*AdminApi*](doc/AdminApi.md) | [**getAdminSubmissions**](doc/AdminApi.md#getadminsubmissions) | **GET** /admin/submissions | Get survey results
[*AdminApi*](doc/AdminApi.md) | [**getAnalytics**](doc/AdminApi.md#getanalytics) | **GET** /admin/analytics | Get data analysis
[*CORSApi*](doc/CORSApi.md) | [**optionsAdminAnalytics**](doc/CORSApi.md#optionsadminanalytics) | **OPTIONS** /admin/analytics | CORS admin analytics support
[*CORSApi*](doc/CORSApi.md) | [**optionsAdminSubmissions**](doc/CORSApi.md#optionsadminsubmissions) | **OPTIONS** /admin/submissions | CORS admin submissions support
[*CORSApi*](doc/CORSApi.md) | [**optionsSubmission**](doc/CORSApi.md#optionssubmission) | **OPTIONS** /submission | CORS submission support
[*CORSApi*](doc/CORSApi.md) | [**optionsSubmissionTypeDB**](doc/CORSApi.md#optionssubmissiontypedb) | **OPTIONS** /submissions | CORS submission support
[*CORSApi*](doc/CORSApi.md) | [**optionsSurvey**](doc/CORSApi.md#optionssurvey) | **OPTIONS** /survey | CORS survey support
[*CORSApi*](doc/CORSApi.md) | [**optionsVisitedResiliencyResources**](doc/CORSApi.md#optionsvisitedresiliencyresources) | **OPTIONS** /resiliency | CORS resiliency resources support
[*SubmissionApi*](doc/SubmissionApi.md) | [**getSubmission**](doc/SubmissionApi.md#getsubmission) | **GET** /submission | get the submission
[*SubmissionApi*](doc/SubmissionApi.md) | [**submitSubmission**](doc/SubmissionApi.md#submitsubmission) | **POST** /submission | Submit a submission
[*UserApi*](doc/UserApi.md) | [**getResiliencyResources**](doc/UserApi.md#getresiliencyresources) | **GET** /resiliency | Get resiliency resources
[*UserApi*](doc/UserApi.md) | [**getSubmissions**](doc/UserApi.md#getsubmissions) | **GET** /submissions | get the submissions
[*UserApi*](doc/UserApi.md) | [**getSurvey**](doc/UserApi.md#getsurvey) | **GET** /survey | Get the MDQ
[*UserApi*](doc/UserApi.md) | [**submitSubmissionTypeDB**](doc/UserApi.md#submitsubmissiontypedb) | **POST** /submissions | Submit a submission
[*UserApi*](doc/UserApi.md) | [**submitSurvey**](doc/UserApi.md#submitsurvey) | **POST** /survey | Submit a completed MDQ
[*UserApi*](doc/UserApi.md) | [**submitVisitedResiliencyResources**](doc/UserApi.md#submitvisitedresiliencyresources) | **POST** /resiliency | Submit visited resiliency resources


## Documentation For Models

 - [AnalyticsResult](doc/AnalyticsResult.md)
 - [Icon](doc/Icon.md)
 - [ResiliencyResource](doc/ResiliencyResource.md)
 - [ResiliencyResources](doc/ResiliencyResources.md)
 - [Submission](doc/Submission.md)
 - [Submissions](doc/Submissions.md)
 - [Survey](doc/Survey.md)
 - [SurveyOption](doc/SurveyOption.md)
 - [SurveySection](doc/SurveySection.md)
 - [VisitedResiliencyResources](doc/VisitedResiliencyResources.md)


## Documentation For Authorization


## sigv4Reference

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author



