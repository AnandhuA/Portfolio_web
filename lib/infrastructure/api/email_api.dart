import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:portfolio/infrastructure/failures/email_failure.dart';

import 'email_model.dart';

abstract class EmailApi {
  ///portfolio-api-chi.vercel.app/api/getintouch
  Future<Email> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  });
}

class EmailApiImpl implements EmailApi {
  final http.Client client;

  static const String _serviceId = 'service_h4368kk';
  static const String _templateId = 'template_grjnfkw';
  static const String _publicKey = 'QcChGflGzpNdS-Gck'; 

  EmailApiImpl({required this.client});

  Future<Email> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    log("work -----");
    try {
      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      final response = await client.post(
        url,
        headers: {
          'origin': 'http://localhost', // for local test
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'service_id': _serviceId,
          'template_id': _templateId,
          'user_id': _publicKey,
          'template_params': {
            'message':
                "Name : $name \n\n Email : $email \n\n Subject : $subject \n\n Message : $message",
          }
        }),
      );

      log('EmailJS Response: ${response.statusCode} ${response.body}');


      if (response.statusCode == 200) {
        return Email(status: "success");
      } else {
        throw EmailFailure.serverError();
      }
    } catch (e) {
      print("Errorss  ${e.toString()}");
      throw EmailFailure.serverError();
    }
  }
}
