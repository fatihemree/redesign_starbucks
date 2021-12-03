class ServiceURL {
  static const MAIN_URL = 'https://starbucks-mobile-backend-exp.herokuapp.com';
  //PUBLIC
  static const LOGIN_URL = MAIN_URL + '/account/v1/Login';
  //PRIVATE
  static const OFFER_URL = MAIN_URL + '/private/v1/Offer'; // Kampanya Bilgileri
  static const USER_URL = MAIN_URL + '/private/v1/User';
}
