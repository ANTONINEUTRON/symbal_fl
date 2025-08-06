import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/wallet/domain/entity/transaction.dart';
import 'package:symbal_fl/features/wallet/ui/cubits/wallet_cubit.dart';

/// Helper class for adding wallet transactions from other parts of the app
class WalletTransactionHelper {
  static void addGameRewardTransaction(
    BuildContext context, {
    required double amount,
    required String currency,
    required String gameId,
    String? customDescription,
  }) {
    context.read<WalletCubit>().addGameReward(
          amount: amount,
          currency: currency,
          gameId: gameId,
          description: customDescription,
        );
  }

  static void addTournamentWinTransaction(
    BuildContext context, {
    required double amount,
    required String currency,
    required String gameId,
    String? customDescription,
  }) {
    context.read<WalletCubit>().addTournamentWin(
          amount: amount,
          currency: currency,
          gameId: gameId,
          description: customDescription,
        );
  }

  static void addDepositTransaction(
    BuildContext context, {
    required double amount,
    required String currency,
    String? txHash,
    String? customDescription,
  }) {
    context.read<WalletCubit>().addDeposit(
          amount: amount,
          currency: currency,
          txHash: txHash,
          description: customDescription,
        );
  }

  static void addWithdrawTransaction(
    BuildContext context, {
    required double amount,
    required String currency,
    String? txHash,
    String? customDescription,
  }) {
    context.read<WalletCubit>().addWithdraw(
          amount: amount,
          currency: currency,
          txHash: txHash,
          description: customDescription,
        );
  }

  static void addCustomTransaction(
    BuildContext context, {
    required TransactionType type,
    required double amount,
    required String currency,
    required String description,
    String? txHash,
    String? gameId,
  }) {
    context.read<WalletCubit>().addTransaction(
          type: type,
          amount: amount,
          currency: currency,
          description: description,
          txHash: txHash,
          gameId: gameId,
        );
  }
}
