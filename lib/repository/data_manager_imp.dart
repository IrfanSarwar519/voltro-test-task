import '../dataProvider/model/response/covid_summary_model.dart';

abstract class DataManagerImp {
  Future<CovidSummaryModel> getCovidSummary();
}
