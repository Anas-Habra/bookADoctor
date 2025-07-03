// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpecializationsLoading implements HomeState {
  const SpecializationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationsLoading()';
}


}




/// @nodoc


class SpecializationsSuccess implements HomeState {
  const SpecializationsSuccess(final  List<SpecializationsData?>? specializationDataList): _specializationDataList = specializationDataList;
  

 final  List<SpecializationsData?>? _specializationDataList;
 List<SpecializationsData?>? get specializationDataList {
  final value = _specializationDataList;
  if (value == null) return null;
  if (_specializationDataList is EqualUnmodifiableListView) return _specializationDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsSuccessCopyWith<SpecializationsSuccess> get copyWith => _$SpecializationsSuccessCopyWithImpl<SpecializationsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsSuccess&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeState.specializationsSuccess(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsSuccessCopyWith(SpecializationsSuccess value, $Res Function(SpecializationsSuccess) _then) = _$SpecializationsSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsData?>? specializationDataList
});




}
/// @nodoc
class _$SpecializationsSuccessCopyWithImpl<$Res>
    implements $SpecializationsSuccessCopyWith<$Res> {
  _$SpecializationsSuccessCopyWithImpl(this._self, this._then);

  final SpecializationsSuccess _self;
  final $Res Function(SpecializationsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = freezed,}) {
  return _then(SpecializationsSuccess(
freezed == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsData?>?,
  ));
}


}

/// @nodoc


class SpecializationsError implements HomeState {
  const SpecializationsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsErrorCopyWith<SpecializationsError> get copyWith => _$SpecializationsErrorCopyWithImpl<SpecializationsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.specializationsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $SpecializationsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsErrorCopyWith(SpecializationsError value, $Res Function(SpecializationsError) _then) = _$SpecializationsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$SpecializationsErrorCopyWithImpl<$Res>
    implements $SpecializationsErrorCopyWith<$Res> {
  _$SpecializationsErrorCopyWithImpl(this._self, this._then);

  final SpecializationsError _self;
  final $Res Function(SpecializationsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(SpecializationsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class DoctorsSuccess implements HomeState {
  const DoctorsSuccess(final  List<Doctors?>? doctorsList): _doctorsList = doctorsList;
  

 final  List<Doctors?>? _doctorsList;
 List<Doctors?>? get doctorsList {
  final value = _doctorsList;
  if (value == null) return null;
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<DoctorsSuccess> get copyWith => _$DoctorsSuccessCopyWithImpl<DoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'HomeState.doctorsSuccess(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess value, $Res Function(DoctorsSuccess) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctors?>? doctorsList
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<$Res>
    implements $DoctorsSuccessCopyWith<$Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess _self;
  final $Res Function(DoctorsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsList = freezed,}) {
  return _then(DoctorsSuccess(
freezed == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<Doctors?>?,
  ));
}


}

/// @nodoc


class DoctorsError implements HomeState {
  const DoctorsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsErrorCopyWith<DoctorsError> get copyWith => _$DoctorsErrorCopyWithImpl<DoctorsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.doctorsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $DoctorsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsErrorCopyWith(DoctorsError value, $Res Function(DoctorsError) _then) = _$DoctorsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$DoctorsErrorCopyWithImpl<$Res>
    implements $DoctorsErrorCopyWith<$Res> {
  _$DoctorsErrorCopyWithImpl(this._self, this._then);

  final DoctorsError _self;
  final $Res Function(DoctorsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(DoctorsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
