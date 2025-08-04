// import 'package:supabase_flutter/supabase_flutter.dart';


// class WalletService {
//   final SupabaseClient _supabase = Supabase.instance.client;
  
//   Future<WalletModel> createWallet(String pin) async {
//     try {
//       final response = await _supabase.functions.invoke(
//         'create-wallet',
//         body: {
//           'pin': pin,
//           'user_id': _supabase.auth.currentUser!.id,
//         },
//       );
      
//       if (response.data['error'] != null) {
//         throw Exception(response.data['error']);
//       }
      
//       return WalletModel.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to create wallet: $e');
//     }
//   }
  
//   Future<WalletModel> importWallet({
//     String? seedPhrase,
//     String? privateKey,
//     required String pin,
//   }) async {
//     try {
//       final response = await _supabase.functions.invoke(
//         'import-wallet',
//         body: {
//           'seedPhrase': seedPhrase,
//           'privateKey': privateKey,
//           'pin': pin,
//           'user_id': _supabase.auth.currentUser!.id,
//         },
//       );
      
//       return WalletModel.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to import wallet: $e');
//     }
//   }
  
//   Future<String> sendTransaction({
//     required String walletId,
//     required String recipientAddress,
//     required double amount,
//     required String currency,
//     required String pin,
//   }) async {
//     try {
//       final response = await _supabase.functions.invoke(
//         'send-transaction',
//         body: {
//           'wallet_id': walletId,
//           'recipient_address': recipientAddress,
//           'amount': amount,
//           'currency': currency,
//           'pin': pin,
//           'user_id': _supabase.auth.currentUser!.id,
//         },
//       );
      
//       return response.data['transaction_hash'];
//     } catch (e) {
//       throw Exception('Failed to send transaction: $e');
//     }
//   }
  
//   Future<List<Balance>> getBalances(String walletAddress) async {
//     try {
//       final response = await _supabase.functions.invoke(
//         'get-balances',
//         body: {'wallet_address': walletAddress},
//       );
      
//       return (response.data['balances'] as List)
//           .map((balance) => Balance.fromJson(balance))
//           .toList();
//     } catch (e) {
//       throw Exception('Failed to get balances: $e');
//     }
//   }
// }