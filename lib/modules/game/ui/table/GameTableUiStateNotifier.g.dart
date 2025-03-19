// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GameTableUiStateNotifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameTableUiStateNotifierHash() =>
    r'2bdf0e2fee40bcc32608b4b1cd23b0a4ba90bfcc';

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

abstract class _$GameTableUiStateNotifier
    extends BuildlessAutoDisposeNotifier<GameTableUiState> {
  late final GameConfiguration configuration;

  GameTableUiState build(GameConfiguration configuration);
}

/// See also [GameTableUiStateNotifier].
@ProviderFor(GameTableUiStateNotifier)
const gameTableUiStateNotifierProvider = GameTableUiStateNotifierFamily();

/// See also [GameTableUiStateNotifier].
class GameTableUiStateNotifierFamily extends Family<GameTableUiState> {
  /// See also [GameTableUiStateNotifier].
  const GameTableUiStateNotifierFamily();

  /// See also [GameTableUiStateNotifier].
  GameTableUiStateNotifierProvider call(GameConfiguration configuration) {
    return GameTableUiStateNotifierProvider(configuration);
  }

  @override
  GameTableUiStateNotifierProvider getProviderOverride(
    covariant GameTableUiStateNotifierProvider provider,
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
  String? get name => r'gameTableUiStateNotifierProvider';
}

/// See also [GameTableUiStateNotifier].
class GameTableUiStateNotifierProvider
    extends
        AutoDisposeNotifierProviderImpl<
          GameTableUiStateNotifier,
          GameTableUiState
        > {
  /// See also [GameTableUiStateNotifier].
  GameTableUiStateNotifierProvider(GameConfiguration configuration)
    : this._internal(
        () => GameTableUiStateNotifier()..configuration = configuration,
        from: gameTableUiStateNotifierProvider,
        name: r'gameTableUiStateNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$gameTableUiStateNotifierHash,
        dependencies: GameTableUiStateNotifierFamily._dependencies,
        allTransitiveDependencies:
            GameTableUiStateNotifierFamily._allTransitiveDependencies,
        configuration: configuration,
      );

  GameTableUiStateNotifierProvider._internal(
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
  GameTableUiState runNotifierBuild(
    covariant GameTableUiStateNotifier notifier,
  ) {
    return notifier.build(configuration);
  }

  @override
  Override overrideWith(GameTableUiStateNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameTableUiStateNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<GameTableUiStateNotifier, GameTableUiState>
  createElement() {
    return _GameTableUiStateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameTableUiStateNotifierProvider &&
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
mixin GameTableUiStateNotifierRef
    on AutoDisposeNotifierProviderRef<GameTableUiState> {
  /// The parameter `configuration` of this provider.
  GameConfiguration get configuration;
}

class _GameTableUiStateNotifierProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          GameTableUiStateNotifier,
          GameTableUiState
        >
    with GameTableUiStateNotifierRef {
  _GameTableUiStateNotifierProviderElement(super.provider);

  @override
  GameConfiguration get configuration =>
      (origin as GameTableUiStateNotifierProvider).configuration;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
