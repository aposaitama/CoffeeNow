import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class StripeService {
  final Dio _dio;

  StripeService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://api.stripe.com/v1',
            headers: {
              'Authorization': 'Bearer ${dotenv.env['STRIPE_SECRET_KEY']}',
              'Content-Type': 'application/x-www-form-urlencoded',
            },
          ),
        ) {
    _dio.interceptors.add(
      PrettyDioLogger(
        error: true,
        compact: true,
        responseBody: false,
      ),
    );
  }

  Future<void> processPayment() async {
    try {
      final _stripe = Stripe.instance;

      await _stripe.presentPaymentSheet();
    } catch (e) {
      throw Exception('Payment processing failed: $e');
    }
  }

  Future<String?> createPaymentIntent(String amount, String currency) async {
    try {
      final response = await _dio.post(
        '/payment_intents',
        data: {
          "amount": amount,
          "currency": currency,
        },
      );

      return response.data['client_secret'];
    } catch (e) {
      return null;
    }
  }
}
