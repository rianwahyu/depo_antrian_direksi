// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_antrian_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatusAntrianEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cekStatusAntrian,
    required TResult Function(bool isSwitched, String changeBy)
        updateStatusAntrian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cekStatusAntrian,
    TResult? Function(bool isSwitched, String changeBy)? updateStatusAntrian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cekStatusAntrian,
    TResult Function(bool isSwitched, String changeBy)? updateStatusAntrian,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CekStatusAntrian value) cekStatusAntrian,
    required TResult Function(_UpdateStatusAntrian value) updateStatusAntrian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult? Function(_UpdateStatusAntrian value)? updateStatusAntrian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult Function(_UpdateStatusAntrian value)? updateStatusAntrian,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusAntrianEventCopyWith<$Res> {
  factory $StatusAntrianEventCopyWith(
          StatusAntrianEvent value, $Res Function(StatusAntrianEvent) then) =
      _$StatusAntrianEventCopyWithImpl<$Res, StatusAntrianEvent>;
}

/// @nodoc
class _$StatusAntrianEventCopyWithImpl<$Res, $Val extends StatusAntrianEvent>
    implements $StatusAntrianEventCopyWith<$Res> {
  _$StatusAntrianEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$StatusAntrianEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StatusAntrianEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cekStatusAntrian,
    required TResult Function(bool isSwitched, String changeBy)
        updateStatusAntrian,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cekStatusAntrian,
    TResult? Function(bool isSwitched, String changeBy)? updateStatusAntrian,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cekStatusAntrian,
    TResult Function(bool isSwitched, String changeBy)? updateStatusAntrian,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CekStatusAntrian value) cekStatusAntrian,
    required TResult Function(_UpdateStatusAntrian value) updateStatusAntrian,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult? Function(_UpdateStatusAntrian value)? updateStatusAntrian,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult Function(_UpdateStatusAntrian value)? updateStatusAntrian,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StatusAntrianEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CekStatusAntrianImplCopyWith<$Res> {
  factory _$$CekStatusAntrianImplCopyWith(_$CekStatusAntrianImpl value,
          $Res Function(_$CekStatusAntrianImpl) then) =
      __$$CekStatusAntrianImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CekStatusAntrianImplCopyWithImpl<$Res>
    extends _$StatusAntrianEventCopyWithImpl<$Res, _$CekStatusAntrianImpl>
    implements _$$CekStatusAntrianImplCopyWith<$Res> {
  __$$CekStatusAntrianImplCopyWithImpl(_$CekStatusAntrianImpl _value,
      $Res Function(_$CekStatusAntrianImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CekStatusAntrianImpl implements _CekStatusAntrian {
  const _$CekStatusAntrianImpl();

  @override
  String toString() {
    return 'StatusAntrianEvent.cekStatusAntrian()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CekStatusAntrianImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cekStatusAntrian,
    required TResult Function(bool isSwitched, String changeBy)
        updateStatusAntrian,
  }) {
    return cekStatusAntrian();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cekStatusAntrian,
    TResult? Function(bool isSwitched, String changeBy)? updateStatusAntrian,
  }) {
    return cekStatusAntrian?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cekStatusAntrian,
    TResult Function(bool isSwitched, String changeBy)? updateStatusAntrian,
    required TResult orElse(),
  }) {
    if (cekStatusAntrian != null) {
      return cekStatusAntrian();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CekStatusAntrian value) cekStatusAntrian,
    required TResult Function(_UpdateStatusAntrian value) updateStatusAntrian,
  }) {
    return cekStatusAntrian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult? Function(_UpdateStatusAntrian value)? updateStatusAntrian,
  }) {
    return cekStatusAntrian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult Function(_UpdateStatusAntrian value)? updateStatusAntrian,
    required TResult orElse(),
  }) {
    if (cekStatusAntrian != null) {
      return cekStatusAntrian(this);
    }
    return orElse();
  }
}

abstract class _CekStatusAntrian implements StatusAntrianEvent {
  const factory _CekStatusAntrian() = _$CekStatusAntrianImpl;
}

/// @nodoc
abstract class _$$UpdateStatusAntrianImplCopyWith<$Res> {
  factory _$$UpdateStatusAntrianImplCopyWith(_$UpdateStatusAntrianImpl value,
          $Res Function(_$UpdateStatusAntrianImpl) then) =
      __$$UpdateStatusAntrianImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSwitched, String changeBy});
}

/// @nodoc
class __$$UpdateStatusAntrianImplCopyWithImpl<$Res>
    extends _$StatusAntrianEventCopyWithImpl<$Res, _$UpdateStatusAntrianImpl>
    implements _$$UpdateStatusAntrianImplCopyWith<$Res> {
  __$$UpdateStatusAntrianImplCopyWithImpl(_$UpdateStatusAntrianImpl _value,
      $Res Function(_$UpdateStatusAntrianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSwitched = null,
    Object? changeBy = null,
  }) {
    return _then(_$UpdateStatusAntrianImpl(
      null == isSwitched
          ? _value.isSwitched
          : isSwitched // ignore: cast_nullable_to_non_nullable
              as bool,
      null == changeBy
          ? _value.changeBy
          : changeBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStatusAntrianImpl implements _UpdateStatusAntrian {
  const _$UpdateStatusAntrianImpl(this.isSwitched, this.changeBy);

  @override
  final bool isSwitched;
  @override
  final String changeBy;

  @override
  String toString() {
    return 'StatusAntrianEvent.updateStatusAntrian(isSwitched: $isSwitched, changeBy: $changeBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusAntrianImpl &&
            (identical(other.isSwitched, isSwitched) ||
                other.isSwitched == isSwitched) &&
            (identical(other.changeBy, changeBy) ||
                other.changeBy == changeBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSwitched, changeBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusAntrianImplCopyWith<_$UpdateStatusAntrianImpl> get copyWith =>
      __$$UpdateStatusAntrianImplCopyWithImpl<_$UpdateStatusAntrianImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cekStatusAntrian,
    required TResult Function(bool isSwitched, String changeBy)
        updateStatusAntrian,
  }) {
    return updateStatusAntrian(isSwitched, changeBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cekStatusAntrian,
    TResult? Function(bool isSwitched, String changeBy)? updateStatusAntrian,
  }) {
    return updateStatusAntrian?.call(isSwitched, changeBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cekStatusAntrian,
    TResult Function(bool isSwitched, String changeBy)? updateStatusAntrian,
    required TResult orElse(),
  }) {
    if (updateStatusAntrian != null) {
      return updateStatusAntrian(isSwitched, changeBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CekStatusAntrian value) cekStatusAntrian,
    required TResult Function(_UpdateStatusAntrian value) updateStatusAntrian,
  }) {
    return updateStatusAntrian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult? Function(_UpdateStatusAntrian value)? updateStatusAntrian,
  }) {
    return updateStatusAntrian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CekStatusAntrian value)? cekStatusAntrian,
    TResult Function(_UpdateStatusAntrian value)? updateStatusAntrian,
    required TResult orElse(),
  }) {
    if (updateStatusAntrian != null) {
      return updateStatusAntrian(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatusAntrian implements StatusAntrianEvent {
  const factory _UpdateStatusAntrian(
      final bool isSwitched, final String changeBy) = _$UpdateStatusAntrianImpl;

  bool get isSwitched;
  String get changeBy;
  @JsonKey(ignore: true)
  _$$UpdateStatusAntrianImplCopyWith<_$UpdateStatusAntrianImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatusAntrianState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusAntrianStateCopyWith<$Res> {
  factory $StatusAntrianStateCopyWith(
          StatusAntrianState value, $Res Function(StatusAntrianState) then) =
      _$StatusAntrianStateCopyWithImpl<$Res, StatusAntrianState>;
}

/// @nodoc
class _$StatusAntrianStateCopyWithImpl<$Res, $Val extends StatusAntrianState>
    implements $StatusAntrianStateCopyWith<$Res> {
  _$StatusAntrianStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StatusAntrianState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StatusAntrianState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StatusAntrianState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StatusAntrianState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StatusAntrianState.loaded(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return loaded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return loaded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements StatusAntrianState {
  const factory Loaded(final String message) = _$LoadedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StatusAntrianState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements StatusAntrianState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpdateStatusAntrianImplCopyWith<$Res> {
  factory _$$SuccessUpdateStatusAntrianImplCopyWith(
          _$SuccessUpdateStatusAntrianImpl value,
          $Res Function(_$SuccessUpdateStatusAntrianImpl) then) =
      __$$SuccessUpdateStatusAntrianImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessUpdateStatusAntrianImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res,
        _$SuccessUpdateStatusAntrianImpl>
    implements _$$SuccessUpdateStatusAntrianImplCopyWith<$Res> {
  __$$SuccessUpdateStatusAntrianImplCopyWithImpl(
      _$SuccessUpdateStatusAntrianImpl _value,
      $Res Function(_$SuccessUpdateStatusAntrianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessUpdateStatusAntrianImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessUpdateStatusAntrianImpl implements SuccessUpdateStatusAntrian {
  const _$SuccessUpdateStatusAntrianImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StatusAntrianState.successUpdateStatusAntrian(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdateStatusAntrianImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdateStatusAntrianImplCopyWith<_$SuccessUpdateStatusAntrianImpl>
      get copyWith => __$$SuccessUpdateStatusAntrianImplCopyWithImpl<
          _$SuccessUpdateStatusAntrianImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return successUpdateStatusAntrian(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return successUpdateStatusAntrian?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (successUpdateStatusAntrian != null) {
      return successUpdateStatusAntrian(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return successUpdateStatusAntrian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return successUpdateStatusAntrian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (successUpdateStatusAntrian != null) {
      return successUpdateStatusAntrian(this);
    }
    return orElse();
  }
}

abstract class SuccessUpdateStatusAntrian implements StatusAntrianState {
  const factory SuccessUpdateStatusAntrian(final String message) =
      _$SuccessUpdateStatusAntrianImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessUpdateStatusAntrianImplCopyWith<_$SuccessUpdateStatusAntrianImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUpdateStatusAntrianImplCopyWith<$Res> {
  factory _$$ErrorUpdateStatusAntrianImplCopyWith(
          _$ErrorUpdateStatusAntrianImpl value,
          $Res Function(_$ErrorUpdateStatusAntrianImpl) then) =
      __$$ErrorUpdateStatusAntrianImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorUpdateStatusAntrianImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res,
        _$ErrorUpdateStatusAntrianImpl>
    implements _$$ErrorUpdateStatusAntrianImplCopyWith<$Res> {
  __$$ErrorUpdateStatusAntrianImplCopyWithImpl(
      _$ErrorUpdateStatusAntrianImpl _value,
      $Res Function(_$ErrorUpdateStatusAntrianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorUpdateStatusAntrianImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorUpdateStatusAntrianImpl implements ErrorUpdateStatusAntrian {
  const _$ErrorUpdateStatusAntrianImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StatusAntrianState.errorUpdateStatusAntrian(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUpdateStatusAntrianImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUpdateStatusAntrianImplCopyWith<_$ErrorUpdateStatusAntrianImpl>
      get copyWith => __$$ErrorUpdateStatusAntrianImplCopyWithImpl<
          _$ErrorUpdateStatusAntrianImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return errorUpdateStatusAntrian(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return errorUpdateStatusAntrian?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (errorUpdateStatusAntrian != null) {
      return errorUpdateStatusAntrian(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return errorUpdateStatusAntrian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return errorUpdateStatusAntrian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (errorUpdateStatusAntrian != null) {
      return errorUpdateStatusAntrian(this);
    }
    return orElse();
  }
}

abstract class ErrorUpdateStatusAntrian implements StatusAntrianState {
  const factory ErrorUpdateStatusAntrian(final String message) =
      _$ErrorUpdateStatusAntrianImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorUpdateStatusAntrianImplCopyWith<_$ErrorUpdateStatusAntrianImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchToggledImplCopyWith<$Res> {
  factory _$$SwitchToggledImplCopyWith(
          _$SwitchToggledImpl value, $Res Function(_$SwitchToggledImpl) then) =
      __$$SwitchToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSwitched});
}

/// @nodoc
class __$$SwitchToggledImplCopyWithImpl<$Res>
    extends _$StatusAntrianStateCopyWithImpl<$Res, _$SwitchToggledImpl>
    implements _$$SwitchToggledImplCopyWith<$Res> {
  __$$SwitchToggledImplCopyWithImpl(
      _$SwitchToggledImpl _value, $Res Function(_$SwitchToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSwitched = null,
  }) {
    return _then(_$SwitchToggledImpl(
      null == isSwitched
          ? _value.isSwitched
          : isSwitched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SwitchToggledImpl implements SwitchToggled {
  const _$SwitchToggledImpl(this.isSwitched);

  @override
  final bool isSwitched;

  @override
  String toString() {
    return 'StatusAntrianState.switchToggled(isSwitched: $isSwitched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchToggledImpl &&
            (identical(other.isSwitched, isSwitched) ||
                other.isSwitched == isSwitched));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSwitched);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchToggledImplCopyWith<_$SwitchToggledImpl> get copyWith =>
      __$$SwitchToggledImplCopyWithImpl<_$SwitchToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) loaded,
    required TResult Function(String message) error,
    required TResult Function(String message) successUpdateStatusAntrian,
    required TResult Function(String message) errorUpdateStatusAntrian,
    required TResult Function(bool isSwitched) switchToggled,
  }) {
    return switchToggled(isSwitched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message)? successUpdateStatusAntrian,
    TResult? Function(String message)? errorUpdateStatusAntrian,
    TResult? Function(bool isSwitched)? switchToggled,
  }) {
    return switchToggled?.call(isSwitched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? loaded,
    TResult Function(String message)? error,
    TResult Function(String message)? successUpdateStatusAntrian,
    TResult Function(String message)? errorUpdateStatusAntrian,
    TResult Function(bool isSwitched)? switchToggled,
    required TResult orElse(),
  }) {
    if (switchToggled != null) {
      return switchToggled(isSwitched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(SuccessUpdateStatusAntrian value)
        successUpdateStatusAntrian,
    required TResult Function(ErrorUpdateStatusAntrian value)
        errorUpdateStatusAntrian,
    required TResult Function(SwitchToggled value) switchToggled,
  }) {
    return switchToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult? Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult? Function(SwitchToggled value)? switchToggled,
  }) {
    return switchToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(SuccessUpdateStatusAntrian value)?
        successUpdateStatusAntrian,
    TResult Function(ErrorUpdateStatusAntrian value)? errorUpdateStatusAntrian,
    TResult Function(SwitchToggled value)? switchToggled,
    required TResult orElse(),
  }) {
    if (switchToggled != null) {
      return switchToggled(this);
    }
    return orElse();
  }
}

abstract class SwitchToggled implements StatusAntrianState {
  const factory SwitchToggled(final bool isSwitched) = _$SwitchToggledImpl;

  bool get isSwitched;
  @JsonKey(ignore: true)
  _$$SwitchToggledImplCopyWith<_$SwitchToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
