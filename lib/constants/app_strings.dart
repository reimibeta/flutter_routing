// Copyright (c) 2020 Aniket Malik [aniketmalikwork@gmail.com]
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the
// property of Aniket Malik. The intellectual and technical concepts
// contained herein are proprietary to Aniket Malik and are protected
// by trade secret or copyright law.
//
// Dissemination of this information or reproduction of this material
// is strictly forbidden unless prior written permission is obtained from
// Aniket Malik.

abstract class AppStrings {
  // Generic strings
  static const String ok = 'OK';
  static const String cancel = 'Cancel';
  static const String and = 'and';
  static const String or = 'or';

  // Logout
  static const String logout = 'Logout';
  static const String logoutAreYouSure =
      'Are you sure that you want to logout?';
  static const String logoutFailed = 'Logout failed';

  // Login Page
  static const String login = 'Login';
  static const String loginTagLine = 'Login with email and password';
  static const String loginWithFacebook = 'Login with Facebook';
  static const String loginWithGoogle = 'Login with Google';
  static const String goAnonymous = 'Go anonymous';
  static const String loginQues = 'Don\'t have an account ?';

  // Sign up Page
  static const String signup = 'Sign Up';
  static const String signupButton = 'Sign up';
  static const String signUpTagLine =
      'Sign up to discover amazing things near you';
  static const String signupWithFacebook = 'Signup with Facebook';
  static const String signupWithGoogle = 'Signup with Google';
  static const String termsOfService = 'Terms of Service';
  static const String privacyPolicy = 'Privacy Policy';
  static const String tosPreText = 'By signing up you agree to our ';
  static const String signUpQues = 'Already have an account ?';

  // Email & Password page
  static const String register = 'Register';
  static const String forgotPassword = 'Forgot password';
  static const String forgotPasswordQuestion = 'Forgot password?';
  static const String createAnAccount = 'Create an account';
  static const String needAnAccount = 'Need an account? Register';
  static const String haveAnAccount = 'Have an account? Sign in';
  static const String signInFailed = 'Sign in failed';
  static const String registrationFailed = 'Registration failed';
  static const String passwordResetFailed = 'Password reset failed';
  static const String sendResetLink = 'Send Reset Link';
  static const String backToSignIn = 'Back to sign in';
  static const String resetLinkSentTitle = 'Reset link sent';
  static const String resetLinkSentMessage =
      'Check your email to reset your password';
  static const String emailLabel = 'Email';
  static const String emailHint = 'test@test.com';
  static const String password8CharactersLabel = 'Password (8+ characters)';
  static const String passwordLabel = 'Password';
  static const String confirmPasswordLabel = 'Confirm Password';
  static const String invalidEmailErrorText = 'Email is invalid';
  static const String invalidEmailEmpty = 'Email can\'t be empty';
  static const String invalidPasswordTooShort = 'Password is too short';
  static const String invalidPasswordNoMatch = 'Passwords do not match';
  static const String invalidPasswordEmpty = 'Password can\'t be empty';

  // Home page
  static const String homePage = 'Home Page';

  // Developer menu
  static const String developerMenu = 'Developer menu';
  static const String authenticationType = 'Authentication type';
  static const String firebase = 'Firebase';
  static const String mock = 'Mock';
  static const String favorites = 'Favorites';
  static const String cart = 'Cart';
  static const String search = 'Search';
  static const String seeAll = 'See all';
  static const String addToCart = 'Add to cart';
  static const String remove = 'Remove';
  static const String notAvailable = 'Not Available';
  static const String description = 'Description';
  static const String reviews = 'Reviews';
  static const String allReviews = 'All Reviews';
  static const String selectSize = 'Select Size';
  static const String quantity = 'Quantity';
  static const String color = 'Color';
  static const String itemAddedToCart = 'Item added to cart';
  static const String itemRemovedFromCart = 'Item removed from cart';
  static const String cartMessagePart1 = 'You have total';
  static const String cartMessagePart2 = 'items in the cart';
  static const String totalAmount = 'Total amount';
  static const String checkout = 'Checkout';
  static const String shippingAddress = 'Shipping Address';
  static const String shippingAddressSubheading =
      'Choose your desired address for delivery';
  static const String next = 'Next';
  static const String back = 'Back';
  static const String shippingOption = 'Shipping Option';
  static const String shippingOptionsSubheading = 'Choose your shipping option';
  static const String free = 'Free';
  static const String flatRate = 'Flat Rate';
  static const String localPickup = 'Local Pickup';
  static const String onDay = 'One Day';
  static const String review = 'Review';
  static const String reviewSubheading = 'Please review your order';
  static const String items = 'Items';
  static const String totalItems = 'Total Items:';
  static const String itemCost = 'Items Cost';
  static const String shipping = 'Shipping';
  static const String address = 'Address';
  static const String size = 'Size';
  static const String cartEmpty = 'Your cart is empty';
  static const String payment = 'Payment';
  static const String options = 'Options';
  static const String paymentOptionsSubheading =
      'Choose your payment option and proceed to pay.';
  static const String debitCreditCard = 'Credit/Debit Card';
  static const String paypal = 'PayPal';
  static const String razorPay = 'Razor Pay';
  static const String cod = 'Cash on delivery';
  static const String payNow = 'Pay Now';

  static const String my = 'My';
  static const String myOrdersSubtitle = 'Check out all your orders\' status';

  static const String track = 'Track';
  static const String orders = 'Orders';
  static const String trackOrdersSubtitle = 'Track your orders here';

  static const String profile = 'Profile';
  static const String information = 'Information';
  static const String profileInformationSubtitle =
      'Update and modify your profile';

  static const String account = 'Account';
  static const String settings = 'Settings';
  static const String accountSettingsSubtitle =
      'Update card, shipping address and much more';

  static const String notifications = 'Notifications';
  static const String manageNotifications = 'Manage notifications';

  static const String all = 'All';
  static const String delivered = 'Delivered';
  static const String pending = 'Pending';
  static const String shipped = 'Shipped';
  static const String cancelled = 'Cancelled';
  static const String noDataAvailable = 'No data available';
  static const String date = 'Date';
  static const String transactionId = 'Txn Id';
  static const String order = 'Order';
  static const String id = 'Id';
  static const String details = 'Details';
  static const String placed = 'Placed';
  static const String outForDelivery = 'Out for delivery';
  static const String arriving = 'Arriving';
  static const String editProfile = 'Edit Profile';
  static const String update = 'Update';
  static const String name = 'Name';
  static const String save = 'Save';
  static const String submit = 'Submit';
  static const String cards = 'Cards';
  static const String change = 'Change';
  static const String contactUs = 'Contact Us';
  static const String your = 'Your';
  static const String primary = 'Primary';
  static const String primaryAddressMessage =
      'This is your primary address to which products will be delivered if no address is selected at the time of check out';
  static const String others = 'Others';
  static const String street = 'Street';
  static const String city = 'City';
  static const String state = 'State';
  static const String country = 'Country';
  static const String zipCode = 'Zip Code';
  static const String phone = 'Phone';
  static const String actions = 'Actions';
  static const String addNewAddress = 'Add new address';
  static const String deleteAddressQuestion =
      'Are you sure you want to delete this address ?';
  static const String yes = 'Yes';
  static const String no = 'No';
  static const String oldPassword = 'Old Password';
  static const String newPassword = 'New Password';
  static const String somethingWentWrong = 'Something went wrong';
  static const String contactUsMessage =
      'We will call you soon after you press the button below. Kindly pick up the phone to get the help';
  static const String callMe = 'Call Me';
  static const String mainCardCaption =
      'This is your main card that you use to check out';
  static const String addNewCard = 'Add New Card';
  static const String cardNumber = 'Card Number';
  static const String cardExpMonth = 'Expiry Month';
  static const String cardExpYear = 'Expiry Year';
  static const String cardHolderName = 'Card Holder Name';
  static const String cardType = 'Card Type';
  static const String cardBankName = 'Bank Name';
  static const String creditCardExpMonthError =
      'The month number must be between 1 - 12';
  static const String creditCardExpYearError =
      'The year is invalid. It must be more than or equal to the present year.';
  static const String creditCardExpBigYearError =
      'The year is invalid. It is too futuristic!';
  static const String cardNumberPlaceholder = '4711471147114711';
  static const String cardBankNamePlaceholder = 'Axis Bank';
  static const String cardExpMonthPlaceholder = '02';
  static const String cardExpYearPlaceholder = '2025';
  static const String cardHolderNamePlaceholder = 'Aniket Malik';
  static const String categories = 'Categories';
  static const String chooseProductCategory = 'Choose Product Category';
  static const String products = 'Products';
  static const String apply = 'Apply';
  static const String priceRange = 'Price Range';
  static const String go = 'Go';
  static const String nothingToSearch = 'Nothing to search';
  static const String oops = 'Oops!';
  static const String reload = 'Reload';
  static const String filter = 'Filter';
  static const String popular = 'Popular';
  static const String featured = 'Featured';
  static const String recommended = 'Recommended';
  static const String related = 'Related';
  static const String weekPromotionsLabel = 'Week Promotions';
  static const String flashSaleLabel = 'Flash Sale';
  static const String seller = 'Seller';
  static const String paymentSuccessful = 'Payment Successful !!';
  static const String paymentSuccessfulMessage =
      'Thank you for shopping with us \n Have a great day';
  static const String paymentProcessing =
      'Processing the payment. Please wait.';
  static const String number = 'Number';
  static const String continueShopping = 'Continue Shopping';
  static const String paymentFailed = 'Payment Failed !!';
  static const String paymentFailedMessage =
      'Something went wrong while processing the payment \n Please try again';
  static const String tryAgain = 'Try Again';
  static const String theme = 'Theme';
  static const String dark = 'Dark';
  static const String mode = 'Mode';
  static const String availability = 'Availability';
}
