import 'dart:async';
import 'package:portfolio/infrastructure/api/email_repository.dart';
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_event.dart';

part 'email_state.dart';

part 'email_bloc.freezed.dart';

// class EmailBloc extends Bloc<EmailEvent, EmailState> {
//   final EmailRepository _emailRepository;

//   EmailState get initialState => EmailState.initial();

//   EmailBloc(this._emailRepository) : super(EmailState.initial());

//   @override

//   @override
//   Stream<EmailState> mapEventToState(
//     EmailEvent event,
//   ) async* {
//     if (event is EmailEvent) {
//       yield EmailState.sendingEmail();
      
//       final response = await _emailRepository.sendEmail(
//         name: event.name,
//         email: event.email,
//         subject: event.subject,
//         message: event.message,
//       );

//       yield* response.fold(
//         (failure) async* {
//           yield EmailState.failure();
//         },
//         (data) async* {
//           yield EmailState.emailSentSuccessFully();
//         },
//       );
//     }
//   }
// }


class EmailBloc extends Bloc<EmailEvent, EmailState> {
  final EmailRepository _emailRepository;

  EmailBloc(this._emailRepository) : super(EmailState.initial()) {
    on<SendEmail>((event, emit) async {
      emit(EmailState.sendingEmail());

      final response = await _emailRepository.sendEmail(
        name: event.name,
        email: event.email,
        subject: event.subject,
        message: event.message,
      );

      response.fold(
        (failure) => emit(EmailState.failure()),
        (data) => emit(EmailState.emailSentSuccessFully()),
      );
    });
  }
}
