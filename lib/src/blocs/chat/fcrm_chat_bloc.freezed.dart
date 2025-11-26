// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcrm_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FcrmChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcrmChatEventCopyWith<$Res> {
  factory $FcrmChatEventCopyWith(
    FcrmChatEvent value,
    $Res Function(FcrmChatEvent) then,
  ) = _$FcrmChatEventCopyWithImpl<$Res, FcrmChatEvent>;
}

/// @nodoc
class _$FcrmChatEventCopyWithImpl<$Res, $Val extends FcrmChatEvent>
    implements $FcrmChatEventCopyWith<$Res> {
  _$FcrmChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
    _$InitializeImpl value,
    $Res Function(_$InitializeImpl) then,
  ) = __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String baseUrl,
    String companyToken,
    String appKey,
    String appSecret,
    String socketUrl,
    bool enableLogging,
  });
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$FcrmChatEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
    _$InitializeImpl _value,
    $Res Function(_$InitializeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? companyToken = null,
    Object? appKey = null,
    Object? appSecret = null,
    Object? socketUrl = null,
    Object? enableLogging = null,
  }) {
    return _then(
      _$InitializeImpl(
        baseUrl: null == baseUrl
            ? _value.baseUrl
            : baseUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        companyToken: null == companyToken
            ? _value.companyToken
            : companyToken // ignore: cast_nullable_to_non_nullable
                  as String,
        appKey: null == appKey
            ? _value.appKey
            : appKey // ignore: cast_nullable_to_non_nullable
                  as String,
        appSecret: null == appSecret
            ? _value.appSecret
            : appSecret // ignore: cast_nullable_to_non_nullable
                  as String,
        socketUrl: null == socketUrl
            ? _value.socketUrl
            : socketUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        enableLogging: null == enableLogging
            ? _value.enableLogging
            : enableLogging // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl({
    required this.baseUrl,
    required this.companyToken,
    required this.appKey,
    required this.appSecret,
    required this.socketUrl,
    this.enableLogging = true,
  });

  @override
  final String baseUrl;
  @override
  final String companyToken;
  @override
  final String appKey;
  @override
  final String appSecret;
  @override
  final String socketUrl;
  @override
  @JsonKey()
  final bool enableLogging;

  @override
  String toString() {
    return 'FcrmChatEvent.initialize(baseUrl: $baseUrl, companyToken: $companyToken, appKey: $appKey, appSecret: $appSecret, socketUrl: $socketUrl, enableLogging: $enableLogging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.companyToken, companyToken) ||
                other.companyToken == companyToken) &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.appSecret, appSecret) ||
                other.appSecret == appSecret) &&
            (identical(other.socketUrl, socketUrl) ||
                other.socketUrl == socketUrl) &&
            (identical(other.enableLogging, enableLogging) ||
                other.enableLogging == enableLogging));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    baseUrl,
    companyToken,
    appKey,
    appSecret,
    socketUrl,
    enableLogging,
  );

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
  }) {
    return initialize(
      baseUrl,
      companyToken,
      appKey,
      appSecret,
      socketUrl,
      enableLogging,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
  }) {
    return initialize?.call(
      baseUrl,
      companyToken,
      appKey,
      appSecret,
      socketUrl,
      enableLogging,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(
        baseUrl,
        companyToken,
        appKey,
        appSecret,
        socketUrl,
        enableLogging,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements FcrmChatEvent {
  const factory _Initialize({
    required final String baseUrl,
    required final String companyToken,
    required final String appKey,
    required final String appSecret,
    required final String socketUrl,
    final bool enableLogging,
  }) = _$InitializeImpl;

  String get baseUrl;
  String get companyToken;
  String get appKey;
  String get appSecret;
  String get socketUrl;
  bool get enableLogging;

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
    _$GetMessagesImpl value,
    $Res Function(_$GetMessagesImpl) then,
  ) = __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$FcrmChatEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
    _$GetMessagesImpl _value,
    $Res Function(_$GetMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null}) {
    return _then(
      _$GetMessagesImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'FcrmChatEvent.getMessages(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
  }) {
    return getMessages(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
  }) {
    return getMessages?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements FcrmChatEvent {
  const factory _GetMessages({final int page}) = _$GetMessagesImpl;

  int get page;

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
    _$RegisterImpl value,
    $Res Function(_$RegisterImpl) then,
  ) = __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    Map<String, dynamic> userData,
    void Function()? onSuccess,
    void Function(String)? onError,
  });
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$FcrmChatEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
    _$RegisterImpl _value,
    $Res Function(_$RegisterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(
      _$RegisterImpl(
        userData: null == userData
            ? _value._userData
            : userData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        onSuccess: freezed == onSuccess
            ? _value.onSuccess
            : onSuccess // ignore: cast_nullable_to_non_nullable
                  as void Function()?,
        onError: freezed == onError
            ? _value.onError
            : onError // ignore: cast_nullable_to_non_nullable
                  as void Function(String)?,
      ),
    );
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl({
    required final Map<String, dynamic> userData,
    this.onSuccess,
    this.onError,
  }) : _userData = userData;

  final Map<String, dynamic> _userData;
  @override
  Map<String, dynamic> get userData {
    if (_userData is EqualUnmodifiableMapView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userData);
  }

  @override
  final void Function()? onSuccess;
  @override
  final void Function(String)? onError;

  @override
  String toString() {
    return 'FcrmChatEvent.register(userData: $userData, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_userData),
    onSuccess,
    onError,
  );

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
  }) {
    return register(userData, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
  }) {
    return register?.call(userData, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String baseUrl,
      String companyToken,
      String appKey,
      String appSecret,
      String socketUrl,
      bool enableLogging,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(userData, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements FcrmChatEvent {
  const factory _Register({
    required final Map<String, dynamic> userData,
    final void Function()? onSuccess,
    final void Function(String)? onError,
  }) = _$RegisterImpl;

  Map<String, dynamic> get userData;
  void Function()? get onSuccess;
  void Function(String)? get onError;

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FcrmChatState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  FcrmChat? get chat => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
    )
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
    )?
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
    )?
    initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of FcrmChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FcrmChatStateCopyWith<FcrmChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcrmChatStateCopyWith<$Res> {
  factory $FcrmChatStateCopyWith(
    FcrmChatState value,
    $Res Function(FcrmChatState) then,
  ) = _$FcrmChatStateCopyWithImpl<$Res, FcrmChatState>;
  @useResult
  $Res call({
    FormzSubmissionStatus status,
    List<ChatMessage> messages,
    FcrmChat? chat,
  });
}

/// @nodoc
class _$FcrmChatStateCopyWithImpl<$Res, $Val extends FcrmChatState>
    implements $FcrmChatStateCopyWith<$Res> {
  _$FcrmChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FcrmChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? chat = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as FormzSubmissionStatus,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessage>,
            chat: freezed == chat
                ? _value.chat
                : chat // ignore: cast_nullable_to_non_nullable
                      as FcrmChat?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FcrmChatStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FormzSubmissionStatus status,
    List<ChatMessage> messages,
    FcrmChat? chat,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FcrmChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FcrmChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? chat = freezed,
  }) {
    return _then(
      _$InitialImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as FormzSubmissionStatus,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
        chat: freezed == chat
            ? _value.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as FcrmChat?,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.status = FormzSubmissionStatus.initial,
    final List<ChatMessage> messages = const [],
    this.chat,
  }) : _messages = messages;

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final FcrmChat? chat;

  @override
  String toString() {
    return 'FcrmChatState.initial(status: $status, messages: $messages, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_messages),
    chat,
  );

  /// Create a copy of FcrmChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
    )
    initial,
  }) {
    return initial(status, messages, chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
    )?
    initial,
  }) {
    return initial?.call(status, messages, chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
    )?
    initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, messages, chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FcrmChatState {
  const factory _Initial({
    final FormzSubmissionStatus status,
    final List<ChatMessage> messages,
    final FcrmChat? chat,
  }) = _$InitialImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  List<ChatMessage> get messages;
  @override
  FcrmChat? get chat;

  /// Create a copy of FcrmChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
