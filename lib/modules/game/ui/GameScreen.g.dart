// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GameScreen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameScreenUiStateNotifierHash() =>
    r'3222e3b78f29214c0521080957d6b31217c57e07';

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

abstract class _$GameScreenUiStateNotifier
    extends BuildlessAutoDisposeNotifier<GameScreenUiState> {
  late final GameConfiguration configuration;

  GameScreenUiState build(GameConfiguration configuration);
}

/// See also [GameScreenUiStateNotifier].
@ProviderFor(GameScreenUiStateNotifier)
const gameScreenUiStateNotifierProvider = GameScreenUiStateNotifierFamily();

/// See also [GameScreenUiStateNotifier].
class GameScreenUiStateNotifierFamily extends Family<GameScreenUiState> {
  /// See also [GameScreenUiStateNotifier].
  const GameScreenUiStateNotifierFamily();

  /// See also [GameScreenUiStateNotifier].
  GameScreenUiStateNotifierProvider call(GameConfiguration configuration) {
    return GameScreenUiStateNotifierProvider(configuration);
  }

  @override
  GameScreenUiStateNotifierProvider getProviderOverride(
    covariant GameScreenUiStateNotifierProvider provider,
  ) {
    return call(provider.configuration);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gameScreenUiStateNotifierProvider';
}

/// See also [GameScreenUiStateNotifier].
class GameScreenUiStateNotifierProvider
    extends
        AutoDisposeNotifierProviderImpl<
          GameScreenUiStateNotifier,
          GameScreenUiState
        > {
  /// See also [GameScreenUiStateNotifier].
  GameScreenUiStateNotifierProvider(GameConfiguration configuration)
    : this._internal(
        () => GameScreenUiStateNotifier()..configuration = configuration,
        from: gameScreenUiStateNotifierProvider,
        name: r'gameScreenUiStateNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$gameScreenUiStateNotifierHash,
        dependencies: GameScreenUiStateNotifierFamily._dependencies,
        allTransitiveDependencies:
            GameScreenUiStateNotifierFamily._allTransitiveDependencies,
        configuration: configuration,
      );

  GameScreenUiStateNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.configuration,
  }) : super.internal();

  final GameConfiguration configuration;

  @override
  GameScreenUiState runNotifierBuild(
    covariant GameScreenUiStateNotifier notifier,
  ) {
    return notifier.build(configuration);
  }

  @override
  Override overrideWith(GameScreenUiStateNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameScreenUiStateNotifierProvider._internal(
        () => create()..configuration = configuration,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        configuration: configuration,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    GameScreenUiStateNotifier,
    GameScreenUiState
  >
  createElement() {
    return _GameScreenUiStateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameScreenUiStateNotifierProvider &&
        other.configuration == configuration;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, configuration.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GameScreenUiStateNotifierRef
    on AutoDisposeNotifierProviderRef<GameScreenUiState> {
  /// The parameter `configuration` of this provider.
  GameConfiguration get configuration;
}

class _GameScreenUiStateNotifierProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          GameScreenUiStateNotifier,
          GameScreenUiState
        >
    with GameScreenUiStateNotifierRef {
  _GameScreenUiStateNotifierProviderElement(super.provider);

  @override
  GameConfiguration get configuration =>
      (origin as GameScreenUiStateNotifierProvider).configuration;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
