var host = "https://122.166.179.60:18443/fineract-provider/api/v1/";

class Endpoints {
  static String login(user,pass) => "${host}self/authentication?username=$user&password=$pass&tenantIdentifier=default";
  static String client(client) => "${host}self/clients/$client?tenantIdentifier=default";
  static String transactions(accountid) => "${host}self/savingsaccounts/$accountid?tenantIdentifier=default&associations=transactions";
  static String particularTransactions(accountid, transactionid) => "${host}self/savingsaccounts/$accountid/transactions/$transactionid?tenantIdentifier=default&associations=transactions";
} 