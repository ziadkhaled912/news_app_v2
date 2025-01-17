import 'package:mocktail/mocktail.dart';
import 'package:news_app/data/api_manager/api_manager.dart';
import 'package:news_app/home/data/home_repository.dart';
import 'package:news_app/home/data/model/contact_us/contact_us_request_model.dart';
import 'package:news_app/home/data/model/news/news_request_model.dart';

class MockAPIsManager extends Mock implements APIsManager {}

class MockHomeRepository extends Mock implements HomeRepository {}

class RequestFake extends Fake implements Request {}

class NewsRequestModelFake extends Fake implements NewsRequestModel {}

class ContactUsRequestModelFake extends Fake implements ContactUsRequestModel {}

void setupFaker() {
  registerFallbackValue(RequestFake());
  registerFallbackValue(NewsRequestModelFake());
  registerFallbackValue(ContactUsRequestModelFake());
}
