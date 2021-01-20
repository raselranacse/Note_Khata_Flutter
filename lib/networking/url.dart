class URL {
  //base url
  static var baseURL = 'http://api.edusea.net/';
  static var menuImageURL = 'http://edusea.net/media/images/menu/';
  static var settingImageURL = 'http://edusea.net/media/images/settings/';
  static var businessImageURL = 'http://edusea.net/media/images/business/';

  // image place holder
  static var imagePlaceHolder = 'http://edusea.net/media/images/misc/imageNotFound.png';

  //login url
  static var loginURL = "${baseURL}auth/business/login";

  // Sign up url
  static var signUpURL = "${baseURL}auth/business/signupVerify";

  // Reset url
  static var resetURL = "${baseURL}auth/business/resetVerify";

  // home url
  static var homeURL = "${baseURL}private/notice/getAllNotice";

  // update account settings
  static var updateAccountSettingUrl = "${baseURL}settings/account/";

  // Get account settings
  static var getAccountSettingUrl = "${baseURL}private/business/";

  // Get account settings
  static var getBusinessSettingUrl = "${baseURL}private/business/";

  // update business setting
  static var updateBusinessSettingUrl = "${baseURL}settings/business/";

  // update Web setting
  static var updateWebSettingUrl = "${baseURL}settings/web/";

  // Get business settings
  static var getWebSettingUrl = "${baseURL}settings/web/";
}
