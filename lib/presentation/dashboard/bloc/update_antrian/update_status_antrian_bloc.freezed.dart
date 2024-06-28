// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_status_antrian_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateStatusAntrianEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrian,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrianCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_updateAntrian value) updateAntrian,
    required TResult Function(_updateAntrianCancel value) updateAntrianCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_updateAntrian value)? updateAntrian,
    TResult? Function(_updateAntrianCancel value)? updateAntrianCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_updateAntrian value)? updateAntrian,
    TResult Function(_updateAntrianCancel value)? updateAntrianCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusAntrianEventCopyWith<$Res> {
  factory $UpdateStatusAntrianEventCopyWith(UpdateStatusAntrianEvent value,
          $Res Function(UpdateStatusAntrianEvent) then) =
      _$UpdateStatusAntrianEventCopyWithImpl<$Res, UpdateStatusAntrianEvent>;
}

/// @nodoc
class _$UpdateStatusAntrianEventCopyWithImpl<$Res,
        $Val extends UpdateStatusAntrianEvent>
    implements $UpdateStatusAntrianEventCopyWith<$Res> {
  _$UpdateStatusAntrianEventCopyWithImpl(this._value, this._then);

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
    extends _$UpdateStatusAntrianEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'UpdateStatusAntrianEvent.started()';
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
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrian,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrianCancel,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
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
    required TResult Function(_updateAntrian value) updateAntrian,
    required TResult Function(_updateAntrianCancel value) updateAntrianCancel,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_updateAntrian value)? updateAntrian,
    TResult? Function(_updateAntrianCancel value)? updateAntrianCancel,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_updateAntrian value)? updateAntrian,
    TResult Function(_updateAntrianCancel value)? updateAntrianCancel,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UpdateStatusAntrianEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$updateAntrianImplCopyWith<$Res> {
  factory _$$updateAntrianImplCopyWith(
          _$updateAntrianImpl value, $Res Function(_$updateAntrianImpl) then) =
      __$$updateAntrianImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String changeBy, String statusAntrian});
}

/// @nodoc
class __$$updateAntrianImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianEventCopyWithImpl<$Res, _$updateAntrianImpl>
    implements _$$updateAntrianImplCopyWith<$Res> {
  __$$updateAntrianImplCopyWithImpl(
      _$updateAntrianImpl _value, $Res Function(_$updateAntrianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? changeBy = null,
    Object? statusAntrian = null,
  }) {
    return _then(_$updateAntrianImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == changeBy
          ? _value.changeBy
          : changeBy // ignore: cast_nullable_to_non_nullable
              as String,
      null == statusAntrian
          ? _value.statusAntrian
          : statusAntrian // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateAntrianImpl implements _updateAntrian {
  const _$updateAntrianImpl(this.id, this.changeBy, this.statusAntrian);

  @override
  final String id;
  @override
  final String changeBy;
  @override
  final String statusAntrian;

  @override
  String toString() {
    return 'UpdateStatusAntrianEvent.updateAntrian(id: $id, changeBy: $changeBy, statusAntrian: $statusAntrian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateAntrianImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.changeBy, changeBy) ||
                other.changeBy == changeBy) &&
            (identical(other.statusAntrian, statusAntrian) ||
                other.statusAntrian == statusAntrian));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, changeBy, statusAntrian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateAntrianImplCopyWith<_$updateAntrianImpl> get copyWith =>
      __$$updateAntrianImplCopyWithImpl<_$updateAntrianImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrian,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrianCancel,
  }) {
    return updateAntrian(id, changeBy, statusAntrian);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
  }) {
    return updateAntrian?.call(id, changeBy, statusAntrian);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
    required TResult orElse(),
  }) {
    if (updateAntrian != null) {
      return updateAntrian(id, changeBy, statusAntrian);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_updateAntrian value) updateAntrian,
    required TResult Function(_updateAntrianCancel value) updateAntrianCancel,
  }) {
    return updateAntrian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_updateAntrian value)? updateAntrian,
    TResult? Function(_updateAntrianCancel value)? updateAntrianCancel,
  }) {
    return updateAntrian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_updateAntrian value)? updateAntrian,
    TResult Function(_updateAntrianCancel value)? updateAntrianCancel,
    required TResult orElse(),
  }) {
    if (updateAntrian != null) {
      return updateAntrian(this);
    }
    return orElse();
  }
}

abstract class _updateAntrian implements UpdateStatusAntrianEvent {
  const factory _updateAntrian(
          final String id, final String changeBy, final String statusAntrian) =
      _$updateAntrianImpl;

  String get id;
  String get changeBy;
  String get statusAntrian;
  @JsonKey(ignore: true)
  _$$updateAntrianImplCopyWith<_$updateAntrianImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateAntrianCancelImplCopyWith<$Res> {
  factory _$$updateAntrianCancelImplCopyWith(_$updateAntrianCancelImpl value,
          $Res Function(_$updateAntrianCancelImpl) then) =
      __$$updateAntrianCancelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String changeBy, String statusAntrian});
}

/// @nodoc
class __$$updateAntrianCancelImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianEventCopyWithImpl<$Res,
        _$updateAntrianCancelImpl>
    implements _$$updateAntrianCancelImplCopyWith<$Res> {
  __$$updateAntrianCancelImplCopyWithImpl(_$updateAntrianCancelImpl _value,
      $Res Function(_$updateAntrianCancelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? changeBy = null,
    Object? statusAntrian = null,
  }) {
    return _then(_$updateAntrianCancelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == changeBy
          ? _value.changeBy
          : changeBy // ignore: cast_nullable_to_non_nullable
              as String,
      null == statusAntrian
          ? _value.statusAntrian
          : statusAntrian // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateAntrianCancelImpl implements _updateAntrianCancel {
  const _$updateAntrianCancelImpl(this.id, this.changeBy, this.statusAntrian);

  @override
  final String id;
  @override
  final String changeBy;
  @override
  final String statusAntrian;

  @override
  String toString() {
    return 'UpdateStatusAntrianEvent.updateAntrianCancel(id: $id, changeBy: $changeBy, statusAntrian: $statusAntrian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateAntrianCancelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.changeBy, changeBy) ||
                other.changeBy == changeBy) &&
            (identical(other.statusAntrian, statusAntrian) ||
                other.statusAntrian == statusAntrian));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, changeBy, statusAntrian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateAntrianCancelImplCopyWith<_$updateAntrianCancelImpl> get copyWith =>
      __$$updateAntrianCancelImplCopyWithImpl<_$updateAntrianCancelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrian,
    required TResult Function(String id, String changeBy, String statusAntrian)
        updateAntrianCancel,
  }) {
    return updateAntrianCancel(id, changeBy, statusAntrian);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult? Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
  }) {
    return updateAntrianCancel?.call(id, changeBy, statusAntrian);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrian,
    TResult Function(String id, String changeBy, String statusAntrian)?
        updateAntrianCancel,
    required TResult orElse(),
  }) {
    if (updateAntrianCancel != null) {
      return updateAntrianCancel(id, changeBy, statusAntrian);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_updateAntrian value) updateAntrian,
    required TResult Function(_updateAntrianCancel value) updateAntrianCancel,
  }) {
    return updateAntrianCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_updateAntrian value)? updateAntrian,
    TResult? Function(_updateAntrianCancel value)? updateAntrianCancel,
  }) {
    return updateAntrianCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_updateAntrian value)? updateAntrian,
    TResult Function(_updateAntrianCancel value)? updateAntrianCancel,
    required TResult orElse(),
  }) {
    if (updateAntrianCancel != null) {
      return updateAntrianCancel(this);
    }
    return orElse();
  }
}

abstract class _updateAntrianCancel implements UpdateStatusAntrianEvent {
  const factory _updateAntrianCancel(
          final String id, final String changeBy, final String statusAntrian) =
      _$updateAntrianCancelImpl;

  String get id;
  String get changeBy;
  String get statusAntrian;
  @JsonKey(ignore: true)
  _$$updateAntrianCancelImplCopyWith<_$updateAntrianCancelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateStatusAntrianState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusAntrianStateCopyWith<$Res> {
  factory $UpdateStatusAntrianStateCopyWith(UpdateStatusAntrianState value,
          $Res Function(UpdateStatusAntrianState) then) =
      _$UpdateStatusAntrianStateCopyWithImpl<$Res, UpdateStatusAntrianState>;
}

/// @nodoc
class _$UpdateStatusAntrianStateCopyWithImpl<$Res,
        $Val extends UpdateStatusAntrianState>
    implements $UpdateStatusAntrianStateCopyWith<$Res> {
  _$UpdateStatusAntrianStateCopyWithImpl(this._value, this._then);

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
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.initial()';
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
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateStatusAntrianState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingDilayaniImplCopyWith<$Res> {
  factory _$$LoadingDilayaniImplCopyWith(_$LoadingDilayaniImpl value,
          $Res Function(_$LoadingDilayaniImpl) then) =
      __$$LoadingDilayaniImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDilayaniImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$LoadingDilayaniImpl>
    implements _$$LoadingDilayaniImplCopyWith<$Res> {
  __$$LoadingDilayaniImplCopyWithImpl(
      _$LoadingDilayaniImpl _value, $Res Function(_$LoadingDilayaniImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingDilayaniImpl implements _LoadingDilayani {
  const _$LoadingDilayaniImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.loadingDilayani()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingDilayaniImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return loadingDilayani();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return loadingDilayani?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (loadingDilayani != null) {
      return loadingDilayani();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return loadingDilayani(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return loadingDilayani?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (loadingDilayani != null) {
      return loadingDilayani(this);
    }
    return orElse();
  }
}

abstract class _LoadingDilayani implements UpdateStatusAntrianState {
  const factory _LoadingDilayani() = _$LoadingDilayaniImpl;
}

/// @nodoc
abstract class _$$LoadedDilayaniImplCopyWith<$Res> {
  factory _$$LoadedDilayaniImplCopyWith(_$LoadedDilayaniImpl value,
          $Res Function(_$LoadedDilayaniImpl) then) =
      __$$LoadedDilayaniImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedDilayaniImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$LoadedDilayaniImpl>
    implements _$$LoadedDilayaniImplCopyWith<$Res> {
  __$$LoadedDilayaniImplCopyWithImpl(
      _$LoadedDilayaniImpl _value, $Res Function(_$LoadedDilayaniImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedDilayaniImpl implements _LoadedDilayani {
  const _$LoadedDilayaniImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.loadedDilayani()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedDilayaniImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return loadedDilayani();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return loadedDilayani?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (loadedDilayani != null) {
      return loadedDilayani();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return loadedDilayani(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return loadedDilayani?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (loadedDilayani != null) {
      return loadedDilayani(this);
    }
    return orElse();
  }
}

abstract class _LoadedDilayani implements UpdateStatusAntrianState {
  const factory _LoadedDilayani() = _$LoadedDilayaniImpl;
}

/// @nodoc
abstract class _$$ErrorDilayaniImplCopyWith<$Res> {
  factory _$$ErrorDilayaniImplCopyWith(
          _$ErrorDilayaniImpl value, $Res Function(_$ErrorDilayaniImpl) then) =
      __$$ErrorDilayaniImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorDilayaniImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$ErrorDilayaniImpl>
    implements _$$ErrorDilayaniImplCopyWith<$Res> {
  __$$ErrorDilayaniImplCopyWithImpl(
      _$ErrorDilayaniImpl _value, $Res Function(_$ErrorDilayaniImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorDilayaniImpl implements _ErrorDilayani {
  const _$ErrorDilayaniImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.errorDilayani()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorDilayaniImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return errorDilayani();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return errorDilayani?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (errorDilayani != null) {
      return errorDilayani();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return errorDilayani(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return errorDilayani?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (errorDilayani != null) {
      return errorDilayani(this);
    }
    return orElse();
  }
}

abstract class _ErrorDilayani implements UpdateStatusAntrianState {
  const factory _ErrorDilayani() = _$ErrorDilayaniImpl;
}

/// @nodoc
abstract class _$$LoadingSelesaiImplCopyWith<$Res> {
  factory _$$LoadingSelesaiImplCopyWith(_$LoadingSelesaiImpl value,
          $Res Function(_$LoadingSelesaiImpl) then) =
      __$$LoadingSelesaiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSelesaiImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$LoadingSelesaiImpl>
    implements _$$LoadingSelesaiImplCopyWith<$Res> {
  __$$LoadingSelesaiImplCopyWithImpl(
      _$LoadingSelesaiImpl _value, $Res Function(_$LoadingSelesaiImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSelesaiImpl implements _LoadingSelesai {
  const _$LoadingSelesaiImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.loadingSelesai()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSelesaiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return loadingSelesai();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return loadingSelesai?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (loadingSelesai != null) {
      return loadingSelesai();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return loadingSelesai(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return loadingSelesai?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (loadingSelesai != null) {
      return loadingSelesai(this);
    }
    return orElse();
  }
}

abstract class _LoadingSelesai implements UpdateStatusAntrianState {
  const factory _LoadingSelesai() = _$LoadingSelesaiImpl;
}

/// @nodoc
abstract class _$$LoadedSelesaiImplCopyWith<$Res> {
  factory _$$LoadedSelesaiImplCopyWith(
          _$LoadedSelesaiImpl value, $Res Function(_$LoadedSelesaiImpl) then) =
      __$$LoadedSelesaiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedSelesaiImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$LoadedSelesaiImpl>
    implements _$$LoadedSelesaiImplCopyWith<$Res> {
  __$$LoadedSelesaiImplCopyWithImpl(
      _$LoadedSelesaiImpl _value, $Res Function(_$LoadedSelesaiImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedSelesaiImpl implements _LoadedSelesai {
  const _$LoadedSelesaiImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.loadedSelesai()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedSelesaiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return loadedSelesai();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return loadedSelesai?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (loadedSelesai != null) {
      return loadedSelesai();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return loadedSelesai(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return loadedSelesai?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (loadedSelesai != null) {
      return loadedSelesai(this);
    }
    return orElse();
  }
}

abstract class _LoadedSelesai implements UpdateStatusAntrianState {
  const factory _LoadedSelesai() = _$LoadedSelesaiImpl;
}

/// @nodoc
abstract class _$$ErrorSelesaiImplCopyWith<$Res> {
  factory _$$ErrorSelesaiImplCopyWith(
          _$ErrorSelesaiImpl value, $Res Function(_$ErrorSelesaiImpl) then) =
      __$$ErrorSelesaiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorSelesaiImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$ErrorSelesaiImpl>
    implements _$$ErrorSelesaiImplCopyWith<$Res> {
  __$$ErrorSelesaiImplCopyWithImpl(
      _$ErrorSelesaiImpl _value, $Res Function(_$ErrorSelesaiImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorSelesaiImpl implements _ErrorSelesai {
  const _$ErrorSelesaiImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.errorSelesai()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorSelesaiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return errorSelesai();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return errorSelesai?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (errorSelesai != null) {
      return errorSelesai();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return errorSelesai(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return errorSelesai?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (errorSelesai != null) {
      return errorSelesai(this);
    }
    return orElse();
  }
}

abstract class _ErrorSelesai implements UpdateStatusAntrianState {
  const factory _ErrorSelesai() = _$ErrorSelesaiImpl;
}

/// @nodoc
abstract class _$$LoadingCancelImplCopyWith<$Res> {
  factory _$$LoadingCancelImplCopyWith(
          _$LoadingCancelImpl value, $Res Function(_$LoadingCancelImpl) then) =
      __$$LoadingCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCancelImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$LoadingCancelImpl>
    implements _$$LoadingCancelImplCopyWith<$Res> {
  __$$LoadingCancelImplCopyWithImpl(
      _$LoadingCancelImpl _value, $Res Function(_$LoadingCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCancelImpl implements _LoadingCancel {
  const _$LoadingCancelImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.loadingCancel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return loadingCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return loadingCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (loadingCancel != null) {
      return loadingCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return loadingCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return loadingCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (loadingCancel != null) {
      return loadingCancel(this);
    }
    return orElse();
  }
}

abstract class _LoadingCancel implements UpdateStatusAntrianState {
  const factory _LoadingCancel() = _$LoadingCancelImpl;
}

/// @nodoc
abstract class _$$LoadedCancelImplCopyWith<$Res> {
  factory _$$LoadedCancelImplCopyWith(
          _$LoadedCancelImpl value, $Res Function(_$LoadedCancelImpl) then) =
      __$$LoadedCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedCancelImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$LoadedCancelImpl>
    implements _$$LoadedCancelImplCopyWith<$Res> {
  __$$LoadedCancelImplCopyWithImpl(
      _$LoadedCancelImpl _value, $Res Function(_$LoadedCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedCancelImpl implements _LoadedCancel {
  const _$LoadedCancelImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.loadedCancel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return loadedCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return loadedCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (loadedCancel != null) {
      return loadedCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return loadedCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return loadedCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (loadedCancel != null) {
      return loadedCancel(this);
    }
    return orElse();
  }
}

abstract class _LoadedCancel implements UpdateStatusAntrianState {
  const factory _LoadedCancel() = _$LoadedCancelImpl;
}

/// @nodoc
abstract class _$$ErrorCancelImplCopyWith<$Res> {
  factory _$$ErrorCancelImplCopyWith(
          _$ErrorCancelImpl value, $Res Function(_$ErrorCancelImpl) then) =
      __$$ErrorCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCancelImplCopyWithImpl<$Res>
    extends _$UpdateStatusAntrianStateCopyWithImpl<$Res, _$ErrorCancelImpl>
    implements _$$ErrorCancelImplCopyWith<$Res> {
  __$$ErrorCancelImplCopyWithImpl(
      _$ErrorCancelImpl _value, $Res Function(_$ErrorCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorCancelImpl implements _ErrorCancel {
  const _$ErrorCancelImpl();

  @override
  String toString() {
    return 'UpdateStatusAntrianState.errorCancel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDilayani,
    required TResult Function() loadedDilayani,
    required TResult Function() errorDilayani,
    required TResult Function() loadingSelesai,
    required TResult Function() loadedSelesai,
    required TResult Function() errorSelesai,
    required TResult Function() loadingCancel,
    required TResult Function() loadedCancel,
    required TResult Function() errorCancel,
  }) {
    return errorCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDilayani,
    TResult? Function()? loadedDilayani,
    TResult? Function()? errorDilayani,
    TResult? Function()? loadingSelesai,
    TResult? Function()? loadedSelesai,
    TResult? Function()? errorSelesai,
    TResult? Function()? loadingCancel,
    TResult? Function()? loadedCancel,
    TResult? Function()? errorCancel,
  }) {
    return errorCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDilayani,
    TResult Function()? loadedDilayani,
    TResult Function()? errorDilayani,
    TResult Function()? loadingSelesai,
    TResult Function()? loadedSelesai,
    TResult Function()? errorSelesai,
    TResult Function()? loadingCancel,
    TResult Function()? loadedCancel,
    TResult Function()? errorCancel,
    required TResult orElse(),
  }) {
    if (errorCancel != null) {
      return errorCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingDilayani value) loadingDilayani,
    required TResult Function(_LoadedDilayani value) loadedDilayani,
    required TResult Function(_ErrorDilayani value) errorDilayani,
    required TResult Function(_LoadingSelesai value) loadingSelesai,
    required TResult Function(_LoadedSelesai value) loadedSelesai,
    required TResult Function(_ErrorSelesai value) errorSelesai,
    required TResult Function(_LoadingCancel value) loadingCancel,
    required TResult Function(_LoadedCancel value) loadedCancel,
    required TResult Function(_ErrorCancel value) errorCancel,
  }) {
    return errorCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingDilayani value)? loadingDilayani,
    TResult? Function(_LoadedDilayani value)? loadedDilayani,
    TResult? Function(_ErrorDilayani value)? errorDilayani,
    TResult? Function(_LoadingSelesai value)? loadingSelesai,
    TResult? Function(_LoadedSelesai value)? loadedSelesai,
    TResult? Function(_ErrorSelesai value)? errorSelesai,
    TResult? Function(_LoadingCancel value)? loadingCancel,
    TResult? Function(_LoadedCancel value)? loadedCancel,
    TResult? Function(_ErrorCancel value)? errorCancel,
  }) {
    return errorCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingDilayani value)? loadingDilayani,
    TResult Function(_LoadedDilayani value)? loadedDilayani,
    TResult Function(_ErrorDilayani value)? errorDilayani,
    TResult Function(_LoadingSelesai value)? loadingSelesai,
    TResult Function(_LoadedSelesai value)? loadedSelesai,
    TResult Function(_ErrorSelesai value)? errorSelesai,
    TResult Function(_LoadingCancel value)? loadingCancel,
    TResult Function(_LoadedCancel value)? loadedCancel,
    TResult Function(_ErrorCancel value)? errorCancel,
    required TResult orElse(),
  }) {
    if (errorCancel != null) {
      return errorCancel(this);
    }
    return orElse();
  }
}

abstract class _ErrorCancel implements UpdateStatusAntrianState {
  const factory _ErrorCancel() = _$ErrorCancelImpl;
}
