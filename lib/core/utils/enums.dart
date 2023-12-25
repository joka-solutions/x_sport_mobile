// ignore_for_file: constant_identifier_names

enum RequestState {
  loading,
  loaded,
  error,
}

enum UserAuthState {
  logging,
  loggedIn,
  guest,
  error,
}

enum SuggestionsState {
  loading,
  hidden,
  valid,
  notValid,
}

enum EmailAuthState {
  Authenticating,
  authEmail,
  notAuthEmail,
}

enum VerifiedAccountState {
  verifing,
  isVerified,
  isNotVerified,
}
