import 'dart:convert';

class District {
  String _province, _district;

  int _year,
      _povertyRate,
      _nationalPovertyRank,
      _provincialPovertyRank,
      _numberofPoor,
      _accessToImprovedDrinkingWater,
      _accessToPipedWater,
      _accessToImprovedDrinkingWaterExcludingPipedWater,
      _accesstoImprovedWaterWithin30MinsRoundTrip,
      _accesstoImprovedToiletFacilitiies,
      _accesstoFlushConnectedToSewer,
      _accesstoFlushConnectedtoSepticTank,
      _openDefecation,
      _accesstoElectricity,
      _relianceonCleanFuels,
      _mobileOwnership,
      _accessibilityofHealthin15Mins,
      _accessibilityofTransportationin15Mins,
      _householdSize,
      _householdDependencyRatio,
      _householdChildDependencyRatio,
      _householdSeniorDependencyRatio,
      _occupancyStatus_Owner,
      _occupancyStatus_Rented,
      _occupancyStatus_Other,
      _improvedRoofMaterial,
      _improvedWallMaterial,
      _improvedRoofAndWallMaterial,
      _householdMemberperRoom,
      _overcrowding,
      _laborForceParticipationRate,
      _employmentinAgriculture,
      _employmentinIndustry,
      _employmentServices,
      _wageandSalariedEmployment,
      _selfEmployment,
      _selfEmploymentAgriculture,
      _unpaidEmployment,
      _childLabor,
      _laborForePartcipationRate,
      _employmentinAgriculture_Male,
      _employmentinIndutry_Male,
      _employmentServices_Male,
      _wageAndSalariedEmployment_Male;

//constructors
  District(
      this._province,
      this._district,
      this._year,
      this._povertyRate,
      this._nationalPovertyRank,
      this._provincialPovertyRank,
      this._numberofPoor,
      this._accessToImprovedDrinkingWater,
      this._accessToPipedWater,
      this._accessToImprovedDrinkingWaterExcludingPipedWater,
      this._accesstoImprovedWaterWithin30MinsRoundTrip,
      this._accesstoImprovedToiletFacilitiies,
      this._accesstoFlushConnectedToSewer,
      this._accesstoFlushConnectedtoSepticTank,
      this._openDefecation,
      this._accesstoElectricity,
      this._relianceonCleanFuels,
      this._mobileOwnership,
      this._accessibilityofHealthin15Mins,
      this._accessibilityofTransportationin15Mins,
      this._householdSize,
      this._householdDependencyRatio,
      this._householdChildDependencyRatio,
      this._householdSeniorDependencyRatio,
      this._occupancyStatus_Owner,
      this._occupancyStatus_Rented,
      this._occupancyStatus_Other,
      this._improvedRoofMaterial,
      this._improvedWallMaterial,
      this._improvedRoofAndWallMaterial,
      this._householdMemberperRoom,
      this._overcrowding,
      this._laborForceParticipationRate,
      this._employmentinAgriculture,
      this._employmentinIndustry,
      this._employmentServices,
      this._wageandSalariedEmployment,
      this._selfEmployment,
      this._selfEmploymentAgriculture,
      this._unpaidEmployment,
      this._childLabor,
      this._laborForePartcipationRate,
      this._employmentinAgriculture_Male,
      this._employmentinIndutry_Male,
      this._employmentServices_Male,
      this._wageAndSalariedEmployment_Male);

  factory District.fromJSON(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    } else {
      return District(
        json['Province'],
        json['District'],
        json['Year'],
        json['Poverty Rate (%)'],
        json['National poverty rank (N)'],
        json['Provincial poverty rank (N)'],
        json['Number of poor (1,000s)'],
        json['Access to improved drinking water (% of population)'],
        json['Access to piped water (% of population)'],
        json[
            'Access to improved drinking water, excl. piped water (% of population)'],
        json['Access to improved water within 30 minutes round trip'],
        json['Access to improved toilet facilities (% of population)'],
        json['Access to flush toilet connected to sewer (% of population)'],
        json[
            'Access to flush toilet connected to septic tank (% of population)'],
        json['Open defecation (% of population)'],
        json['Access to electricity (% of population)'],
        json['Reliance on clean fuels for cooking (% of population)'],
        json['Households\' mobile phone ownership (% of population)'],
        json[
            'Accessibility, health (% of population within 15 minutes to clinic/hospital)'],
        json[
            'Accessibility, transportation (% of population within 15 minutes to public transportation'],
        json['Household size'],
        json['Household dependency ratio'],
        json['Household child dependency ratio'],
        json['Household senior dependency ratio'],
        json['Occupancy, present occupancy status-owner (% of population)'],
        json['Occupancy, present occupancy status-owner (% of population)'],
        json['Occupancy, present occupancy status-other (% of population)'],
        json['Improved roof material (% of population)'],
        json['Improved wall material (% of population)'],
        json['Improved roof and wall material (% of population)'],
        json['Household members per room'],
        json['Overcrowding (% of population)'],
        json[
            'Labor force participation rate (% of working age population, 15-64 years old)'],
        json['Employment in agriculture (% of total employment)'],
        json['Employment in industry (% of total employment)'],
        json['Employment services (% of total employment)'],
        json['Wage and salaried employment (% of total employment)'],
        json['Self-employment, non-agriculture (% of total employment)'],
        json['Self-employment, agriculture (% of total employment)'],
        json['Unpaid employment (% of total employment)'],
        json['Child labor (% of children aged 10-17)'],
        json[
            'Labor force participation rate, male (% of male working age population, 15-64 years old)'],
        json['Employment in agriculture, male (% of male employment)'],
        json['Employment in industry, male (% of male employment)'],
        json['Employment services, male (% of male employment)'],
        json['Wage and salaried employment, male (% of male employment'],
      );
    }
  }

//getters
  get province => this._province;
  get district => this._district;
  get year => this._year;
  get povertyRatePercent => this._povertyRate;
  get povertyRankNational => this._nationalPovertyRank;
  get povertyRankProvincal => this._provincialPovertyRank;
  get numberofPoor => this._numberofPoor;
  get acessToImprovedDrinkingWater => this._accessToImprovedDrinkingWater;
  get acessToPipedWater => this._accessToPipedWater;
  get accessToImprovedDrinkingWaterExcludingPipedWater =>
      this._accessToImprovedDrinkingWaterExcludingPipedWater;
  get accesstoImprovedDrinkingWaterWithin30minsRoundTrip =>
      this._accesstoImprovedWaterWithin30MinsRoundTrip;
  get accesstoImprovedToiletFacilities =>
      this._accesstoImprovedToiletFacilitiies;
  get accesstoFlushConnectedToSewer => this._accesstoFlushConnectedToSewer;
  get accesstoFlushConnectedtoSepticTank =>
      this._accesstoFlushConnectedtoSepticTank;
  get openDefecation => this._openDefecation;
  get accesstoElectricity => this._accesstoElectricity;
  get relianceOnCleanCookingFuels => this._relianceonCleanFuels;
  get mobileOwnership => this._mobileOwnership;
  get accessibilityofHealthin15Mins => this._accessibilityofHealthin15Mins;
  get accessibilityofTransportationin15Mins =>
      this._accessibilityofTransportationin15Mins;
  get householdSize => this._householdSize;
  get householdDependencyRation => this._householdDependencyRatio;
  get householdChildDependencyRatio => this._householdChildDependencyRatio;
  get householdSeniorDependencyRatio => this._householdSeniorDependencyRatio;
  get occupancyStatus_Owner => this._occupancyStatus_Owner;
  get occupancyStatus_Rented => this._occupancyStatus_Rented;
  get occupancyStatus_Other => this._occupancyStatus_Other;
  get improvedRoofMaterial => this._improvedRoofMaterial;
  get improvedWallMaerial => this._improvedWallMaterial;
  get improvedRoofAndWallMaterial => this._improvedRoofAndWallMaterial;
  get householdMemberperRoom => this._householdMemberperRoom;
  get overcrowding => this._overcrowding;
  get laborForceParticipationRate => this._laborForceParticipationRate;
  get employmentinAgriculture => this._employmentinAgriculture;
  get employmentinIndustry => this.employmentinIndustry;
  get employmentServices => this._employmentServices;
  get wageandSalariedEmployment => this._wageandSalariedEmployment;
  get selfEmployment => this._selfEmployment;
  get selfEmploymentAgriculture => this._selfEmploymentAgriculture;
  get unpaidEmployment => this._unpaidEmployment;
  get childLabor => this._childLabor;
  get employmentinAgricultreMale => this._employmentinAgriculture_Male;
  get employmentinIndustry_Male => this._employmentinIndutry_Male;
  get wageAndSalariedEmployment_Male => this._wageAndSalariedEmployment_Male;
}
