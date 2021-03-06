part of 'qr_cubit.dart';

@immutable
abstract class QrState with EquatableMixin {
  final bool autoGenerate;

  QrState(this.autoGenerate);

  @override
  List<Object> get props => [autoGenerate];
}

class QrInitial extends QrState {
  QrInitial(bool autoGenerate) : super(autoGenerate);
}

class QrLoading extends QrState {
  QrLoading({bool autoGenerate}) : super(autoGenerate);
}

class QrGenerated extends QrState {
  final QrCode qrCode;

  QrGenerated({@required this.qrCode, @required bool autoGenerate})
      : super(autoGenerate);

  QrGenerated copyWith({bool autoGenerate}) =>
      QrGenerated(qrCode: qrCode, autoGenerate: autoGenerate);

  @override
  List<Object> get props => [...super.props, qrCode];
}
