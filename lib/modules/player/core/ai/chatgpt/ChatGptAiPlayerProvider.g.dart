// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChatGptAiPlayerProvider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getChatGptNextPointHash() =>
    r'edfcc2388e8497df2bdf5c949bf8209df605e3be';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getChatGptNextPoint].
@ProviderFor(getChatGptNextPoint)
const getChatGptNextPointProvider = GetChatGptNextPointFamily();

/// See also [getChatGptNextPoint].
class GetChatGptNextPointFamily extends Family<AsyncValue<GamePoint>> {
  /// See also [getChatGptNextPoint].
  const GetChatGptNextPointFamily();

  /// See also [getChatGptNextPoint].
  GetChatGptNextPointProvider call(List<GamePoint> table) {
    return GetChatGptNextPointProvider(table);
  }

  @override
  GetChatGptNextPointProvider getProviderOverride(
    covariant GetChatGptNextPointProvider provider,
  ) {
    return call(provider.table);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getChatGptNextPointProvider';
}

/// See also [getChatGptNextPoint].
class GetChatGptNextPointProvider extends AutoDisposeFutureProvider<GamePoint> {
  /// See also [getChatGptNextPoint].
  GetChatGptNextPointProvider(List<GamePoint> table)
    : this._internal(
        (ref) => getChatGptNextPoint(ref as GetChatGptNextPointRef, table),
        from: getChatGptNextPointProvider,
        name: r'getChatGptNextPointProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getChatGptNextPointHash,
        dependencies: GetChatGptNextPointFamily._dependencies,
        allTransitiveDependencies:
            GetChatGptNextPointFamily._allTransitiveDependencies,
        table: table,
      );

  GetChatGptNextPointProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.table,
  }) : super.internal();

  final List<GamePoint> table;

  @override
  Override overrideWith(
    FutureOr<GamePoint> Function(GetChatGptNextPointRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetChatGptNextPointProvider._internal(
        (ref) => create(ref as GetChatGptNextPointRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        table: table,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GamePoint> createElement() {
    return _GetChatGptNextPointProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetChatGptNextPointProvider && other.table == table;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, table.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetChatGptNextPointRef on AutoDisposeFutureProviderRef<GamePoint> {
  /// The parameter `table` of this provider.
  List<GamePoint> get table;
}

class _GetChatGptNextPointProviderElement
    extends AutoDisposeFutureProviderElement<GamePoint>
    with GetChatGptNextPointRef {
  _GetChatGptNextPointProviderElement(super.provider);

  @override
  List<GamePoint> get table => (origin as GetChatGptNextPointProvider).table;
}

String _$getChatGptClientHash() => r'cde140bcc409dd05cb21927af6745d10ae43714e';

/// See also [getChatGptClient].
@ProviderFor(getChatGptClient)
final getChatGptClientProvider = AutoDisposeProvider<OpenAI>.internal(
  getChatGptClient,
  name: r'getChatGptClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getChatGptClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetChatGptClientRef = AutoDisposeProviderRef<OpenAI>;
String _$handleCallGptHash() => r'99e61a779924e5db40753492f33f6a0185ddc775';

/// See also [handleCallGpt].
@ProviderFor(handleCallGpt)
const handleCallGptProvider = HandleCallGptFamily();

/// See also [handleCallGpt].
class HandleCallGptFamily extends Family<AsyncValue<GamePoint>> {
  /// See also [handleCallGpt].
  const HandleCallGptFamily();

  /// See also [handleCallGpt].
  HandleCallGptProvider call(List<GamePoint> input) {
    return HandleCallGptProvider(input);
  }

  @override
  HandleCallGptProvider getProviderOverride(
    covariant HandleCallGptProvider provider,
  ) {
    return call(provider.input);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'handleCallGptProvider';
}

/// See also [handleCallGpt].
class HandleCallGptProvider extends AutoDisposeFutureProvider<GamePoint> {
  /// See also [handleCallGpt].
  HandleCallGptProvider(List<GamePoint> input)
    : this._internal(
        (ref) => handleCallGpt(ref as HandleCallGptRef, input),
        from: handleCallGptProvider,
        name: r'handleCallGptProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$handleCallGptHash,
        dependencies: HandleCallGptFamily._dependencies,
        allTransitiveDependencies:
            HandleCallGptFamily._allTransitiveDependencies,
        input: input,
      );

  HandleCallGptProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final List<GamePoint> input;

  @override
  Override overrideWith(
    FutureOr<GamePoint> Function(HandleCallGptRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HandleCallGptProvider._internal(
        (ref) => create(ref as HandleCallGptRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GamePoint> createElement() {
    return _HandleCallGptProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HandleCallGptProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HandleCallGptRef on AutoDisposeFutureProviderRef<GamePoint> {
  /// The parameter `input` of this provider.
  List<GamePoint> get input;
}

class _HandleCallGptProviderElement
    extends AutoDisposeFutureProviderElement<GamePoint>
    with HandleCallGptRef {
  _HandleCallGptProviderElement(super.provider);

  @override
  List<GamePoint> get input => (origin as HandleCallGptProvider).input;
}

String _$chatGptAiPlayerProviderHash() =>
    r'fb01120ff691ff3de2f0a15b2cc6c263e4030fd6';

/// See also [ChatGptAiPlayerProvider].
@ProviderFor(ChatGptAiPlayerProvider)
final chatGptAiPlayerProviderProvider =
    AutoDisposeNotifierProvider<ChatGptAiPlayerProvider, PlayerState>.internal(
      ChatGptAiPlayerProvider.new,
      name: r'chatGptAiPlayerProviderProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$chatGptAiPlayerProviderHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ChatGptAiPlayerProvider = AutoDisposeNotifier<PlayerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
