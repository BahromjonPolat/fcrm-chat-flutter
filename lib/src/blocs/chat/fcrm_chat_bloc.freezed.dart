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
      String? defaultEndpoint,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
    required TResult Function(String message, String? endpoint) sendMessage,
    required TResult Function(String imagePath, String? endpoint) sendImage,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult? Function(String message, String? endpoint)? sendMessage,
    TResult? Function(String imagePath, String? endpoint)? sendImage,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult Function(String message, String? endpoint)? sendMessage,
    TResult Function(String imagePath, String? endpoint)? sendImage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
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
    String? defaultEndpoint,
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
    Object? defaultEndpoint = freezed,
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
        defaultEndpoint: freezed == defaultEndpoint
            ? _value.defaultEndpoint
            : defaultEndpoint // ignore: cast_nullable_to_non_nullable
                  as String?,
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
    this.defaultEndpoint,
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
  final String? defaultEndpoint;

  @override
  String toString() {
    return 'FcrmChatEvent.initialize(baseUrl: $baseUrl, companyToken: $companyToken, appKey: $appKey, appSecret: $appSecret, socketUrl: $socketUrl, enableLogging: $enableLogging, defaultEndpoint: $defaultEndpoint)';
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
                other.enableLogging == enableLogging) &&
            (identical(other.defaultEndpoint, defaultEndpoint) ||
                other.defaultEndpoint == defaultEndpoint));
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
    defaultEndpoint,
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
      String? defaultEndpoint,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
    required TResult Function(String message, String? endpoint) sendMessage,
    required TResult Function(String imagePath, String? endpoint) sendImage,
  }) {
    return initialize(
      baseUrl,
      companyToken,
      appKey,
      appSecret,
      socketUrl,
      enableLogging,
      defaultEndpoint,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult? Function(String message, String? endpoint)? sendMessage,
    TResult? Function(String imagePath, String? endpoint)? sendImage,
  }) {
    return initialize?.call(
      baseUrl,
      companyToken,
      appKey,
      appSecret,
      socketUrl,
      enableLogging,
      defaultEndpoint,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult Function(String message, String? endpoint)? sendMessage,
    TResult Function(String imagePath, String? endpoint)? sendImage,
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
        defaultEndpoint,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
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
    final String? defaultEndpoint,
  }) = _$InitializeImpl;

  String get baseUrl;
  String get companyToken;
  String get appKey;
  String get appSecret;
  String get socketUrl;
  bool get enableLogging;
  String? get defaultEndpoint;

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
      String? defaultEndpoint,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
    required TResult Function(String message, String? endpoint) sendMessage,
    required TResult Function(String imagePath, String? endpoint) sendImage,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult? Function(String message, String? endpoint)? sendMessage,
    TResult? Function(String imagePath, String? endpoint)? sendImage,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult Function(String message, String? endpoint)? sendMessage,
    TResult Function(String imagePath, String? endpoint)? sendImage,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
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
      String? defaultEndpoint,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
    required TResult Function(String message, String? endpoint) sendMessage,
    required TResult Function(String imagePath, String? endpoint) sendImage,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult? Function(String message, String? endpoint)? sendMessage,
    TResult? Function(String imagePath, String? endpoint)? sendImage,
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult Function(String message, String? endpoint)? sendMessage,
    TResult Function(String imagePath, String? endpoint)? sendImage,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
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
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
    _$SendMessageImpl value,
    $Res Function(_$SendMessageImpl) then,
  ) = __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? endpoint});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$FcrmChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
    _$SendMessageImpl _value,
    $Res Function(_$SendMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? endpoint = freezed}) {
    return _then(
      _$SendMessageImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        endpoint: freezed == endpoint
            ? _value.endpoint
            : endpoint // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.message, {this.endpoint});

  @override
  final String message;
  @override
  final String? endpoint;

  @override
  String toString() {
    return 'FcrmChatEvent.sendMessage(message: $message, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, endpoint);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

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
      String? defaultEndpoint,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
    required TResult Function(String message, String? endpoint) sendMessage,
    required TResult Function(String imagePath, String? endpoint) sendImage,
  }) {
    return sendMessage(message, endpoint);
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult? Function(String message, String? endpoint)? sendMessage,
    TResult? Function(String imagePath, String? endpoint)? sendImage,
  }) {
    return sendMessage?.call(message, endpoint);
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult Function(String message, String? endpoint)? sendMessage,
    TResult Function(String imagePath, String? endpoint)? sendImage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, endpoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements FcrmChatEvent {
  const factory _SendMessage(final String message, {final String? endpoint}) =
      _$SendMessageImpl;

  String get message;
  String? get endpoint;

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImageImplCopyWith<$Res> {
  factory _$$SendImageImplCopyWith(
    _$SendImageImpl value,
    $Res Function(_$SendImageImpl) then,
  ) = __$$SendImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath, String? endpoint});
}

/// @nodoc
class __$$SendImageImplCopyWithImpl<$Res>
    extends _$FcrmChatEventCopyWithImpl<$Res, _$SendImageImpl>
    implements _$$SendImageImplCopyWith<$Res> {
  __$$SendImageImplCopyWithImpl(
    _$SendImageImpl _value,
    $Res Function(_$SendImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imagePath = null, Object? endpoint = freezed}) {
    return _then(
      _$SendImageImpl(
        null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        endpoint: freezed == endpoint
            ? _value.endpoint
            : endpoint // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendImageImpl implements _SendImage {
  const _$SendImageImpl(this.imagePath, {this.endpoint});

  @override
  final String imagePath;
  @override
  final String? endpoint;

  @override
  String toString() {
    return 'FcrmChatEvent.sendImage(imagePath: $imagePath, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, endpoint);

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      __$$SendImageImplCopyWithImpl<_$SendImageImpl>(this, _$identity);

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
      String? defaultEndpoint,
    )
    initialize,
    required TResult Function(int page) getMessages,
    required TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )
    register,
    required TResult Function(String message, String? endpoint) sendMessage,
    required TResult Function(String imagePath, String? endpoint) sendImage,
  }) {
    return sendImage(imagePath, endpoint);
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult? Function(int page)? getMessages,
    TResult? Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult? Function(String message, String? endpoint)? sendMessage,
    TResult? Function(String imagePath, String? endpoint)? sendImage,
  }) {
    return sendImage?.call(imagePath, endpoint);
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
      String? defaultEndpoint,
    )?
    initialize,
    TResult Function(int page)? getMessages,
    TResult Function(
      Map<String, dynamic> userData,
      void Function()? onSuccess,
      void Function(String)? onError,
    )?
    register,
    TResult Function(String message, String? endpoint)? sendMessage,
    TResult Function(String imagePath, String? endpoint)? sendImage,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(imagePath, endpoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_Register value) register,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
  }) {
    return sendImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_Register value)? register,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
  }) {
    return sendImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_Register value)? register,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(this);
    }
    return orElse();
  }
}

abstract class _SendImage implements FcrmChatEvent {
  const factory _SendImage(final String imagePath, {final String? endpoint}) =
      _$SendImageImpl;

  String get imagePath;
  String? get endpoint;

  /// Create a copy of FcrmChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FcrmChatState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  FcrmChat? get chat => throw _privateConstructorUsedError;
  String? get defaultEndpoint => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
      String? defaultEndpoint,
    )
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
      String? defaultEndpoint,
    )?
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
      String? defaultEndpoint,
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
    String? defaultEndpoint,
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
    Object? defaultEndpoint = freezed,
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
            defaultEndpoint: freezed == defaultEndpoint
                ? _value.defaultEndpoint
                : defaultEndpoint // ignore: cast_nullable_to_non_nullable
                      as String?,
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
    String? defaultEndpoint,
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
    Object? defaultEndpoint = freezed,
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
        defaultEndpoint: freezed == defaultEndpoint
            ? _value.defaultEndpoint
            : defaultEndpoint // ignore: cast_nullable_to_non_nullable
                  as String?,
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
    this.defaultEndpoint,
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
  final String? defaultEndpoint;

  @override
  String toString() {
    return 'FcrmChatState.initial(status: $status, messages: $messages, chat: $chat, defaultEndpoint: $defaultEndpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.defaultEndpoint, defaultEndpoint) ||
                other.defaultEndpoint == defaultEndpoint));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_messages),
    chat,
    defaultEndpoint,
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
      String? defaultEndpoint,
    )
    initial,
  }) {
    return initial(status, messages, chat, defaultEndpoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
      String? defaultEndpoint,
    )?
    initial,
  }) {
    return initial?.call(status, messages, chat, defaultEndpoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FormzSubmissionStatus status,
      List<ChatMessage> messages,
      FcrmChat? chat,
      String? defaultEndpoint,
    )?
    initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, messages, chat, defaultEndpoint);
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
    final String? defaultEndpoint,
  }) = _$InitialImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  List<ChatMessage> get messages;
  @override
  FcrmChat? get chat;
  @override
  String? get defaultEndpoint;

  /// Create a copy of FcrmChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
