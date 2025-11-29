# Chat Repository Architecture

## SOLID Tamoyillari

### 1. Single Responsibility Principle (SRP)
Har bir klass bitta vazifaga javobgar:
- `ChatRepository` - faqat chat operatsiyalari uchun interface
- `ChatRepositoryImpl` - faqat chat operatsiyalarini bajarish
- `Failure` klasslari - faqat xatoliklarni ifodalash
- `Result` klasslari - faqat natijalarni ifodalash

### 2. Open/Closed Principle (OCP)
- `Failure` abstract klass orqali yangi xato turlarini qo'shish mumkin
- `ChatRepository` interface orqali yangi implementatsiya qo'shish mumkin

### 3. Liskov Substitution Principle (LSP)
- `ChatRepositoryImpl` ni istalgan `ChatRepository` o'rnida ishlatish mumkin

### 4. Interface Segregation Principle (ISP)
- `ChatRepository` faqat kerakli metodlarni taqdim etadi

### 5. Dependency Inversion Principle (DIP)
- Bloc `ChatRepository` abstractiga bog'liq, implementatsiyaga emas

## Yaratilgan Fayllar

### 1. Core Layer
**`lib/src/core/failures.dart`**
- `Failure` - abstract base klass
- `ServerFailure` - server xatoliklari
- `NetworkFailure` - tarmoq xatoliklari
- `CacheFailure` - cache xatoliklari
- `UnknownFailure` - noma'lum xatoliklar
- `ChatNotInitializedFailure` - chat ishga tushmagan
- `UserAlreadyRegisteredFailure` - foydalanuvchi ro'yxatdan o'tgan
- `ImageProcessingFailure` - rasm bilan ishlashda xatolik

### 2. Models Layer
**`lib/src/models/chat_results.dart`**
- `MessagesResult` - xabarlar ro'yxati natijasi
- `ChatInitResult` - chat ishga tushirish natijasi
- `MessageSendResult` - xabar yuborish natijasi
- `ImageSendResult` - rasm yuborish natijasi
- `RegisterResult` - ro'yxatdan o'tish natijasi

### 3. Repository Layer
**`lib/src/repositories/chat_repository.dart`** (Abstract Interface)
Metodlar:
- `initialize()` - chatni ishga tushirish
- `register()` - foydalanuvchi ro'yxatdan o'tkazish
- `getMessages()` - xabarlarni olish
- `sendMessage()` - matn xabar yuborish
- `sendImage()` - rasm yuborish
- `isRegistered()` - ro'yxatdan o'tganmi tekshirish
- `messageStream` - xabarlar oqimi
- `dispose()` - resurslarni tozalash

**`lib/src/repositories/chat_repository_impl.dart`** (Implementation)
Har bir metod:
- ✅ Try-catch bilan o'ralgan
- ✅ Either<Failure, Success> qaytaradi
- ✅ Turli xato holatlarini qaytaradi (Network, Server, etc.)
- ✅ Null holatlarni tekshiradi

## Ishlatish Namunasi

```dart
// Repository yaratish
final ChatRepository chatRepository = ChatRepositoryImpl();

// Initialize
final initResult = await chatRepository.initialize(config: config);

initResult.fold(
  (failure) {
    // Xatolikni ko'rsatish
    print('Error: ${failure.message}');
  },
  (result) {
    // Muvaffaqiyatli
    print('Chat initialized: ${result.isRegistered}');
  },
);

// Xabar yuborish
final sendResult = await chatRepository.sendMessage(
  message: 'Salom',
  endpoint: '/chat',
);

sendResult.fold(
  (failure) => print('Error: ${failure.message}'),
  (result) => print('Message sent: ${result.message.content}'),
);
```

## Bloc'da Ishlatish

Bloc'da repositoryni ishlatish uchun:

```dart
class HilolChatBloc extends Bloc<HilolChatEvent, HilolChatState> {
  final ChatRepository _chatRepository;

  HilolChatBloc({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository,
       super(const HilolChatState.initial()) {
    // Events...
  }

  Future<void> _onInitialize(event, emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _chatRepository.initialize(config: event.config);

    result.fold(
      (failure) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: failure.message,
        ));
      },
      (chatResult) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          chat: chatResult.chat,
        ));
      },
    );
  }
}
```

## Afzalliklari

1. ✅ **Testlanuvchi** - Mock repository yaratish oson
2. ✅ **Xavfsiz** - Barcha xatoliklar ushlanadi
3. ✅ **Kengaytiriluvchi** - Yangi operatsiyalar qo'shish oson
4. ✅ **SOLID** - Barcha SOLID tamoyillariga mos
5. ✅ **Type-safe** - Either yordamida type-safe error handling
6. ✅ **Alohida** - Business logic va UI ajratilgan

## Keyingi Qadamlar

1. Bloc'ni repositoryga bog'lash
2. Unit testlar yozish
3. Mock repository yaratish (test uchun)
4. Logging qo'shish (ixtiyoriy)
5. Analytics qo'shish (ixtiyoriy)
