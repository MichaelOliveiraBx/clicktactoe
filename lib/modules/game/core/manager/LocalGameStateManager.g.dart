// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalGameStateManager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlayerStateNotifierHash() =>
    r'2983b3cfde00521a0ac0948c422502f53d3ff955';

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

/// See also [getPlayerStateNotifier].
@ProviderFor(getPlayerStateNotifier)
const getPlayerStateNotifierProvider = GetPlayerStateNotifierFamily();

/// See also [getPlayerStateNotifier].
class GetPlayerStateNotifierFamily
    extends Family<ProviderListenable<PlayerState>> {
  /// See also [getPlayerStateNotifier].
  const GetPlayerStateNotifierFamily();

  /// See also [getPlayerStateNotifier].
  GetPlayerStateNotifierProvider call(PlayerType type, GamePlayer player) {
    return GetPlayerStateNotifierProvider(type, player);
  }

  @override
  GetPlayerStateNotifierProvider getProviderOverride(
    covariant GetPlayerStateNotifierProvider provider,
  ) {
    return call(provider.type, provider.player);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlayerStateNotifierProvider';
}

/// See also [getPlayerStateNotifier].
class GetPlayerStateNotifierProvider
    extends AutoDisposeProvider<ProviderListenable<PlayerState>> {
  /// See also [getPlayerStateNotifier].
  GetPlayerStateNotifierProvider(PlayerType type, GamePlayer player)
    : this._internal(
        (ref) => getPlayerStateNotifier(
          ref as GetPlayerStateNotifierRef,
          type,
          player,
        ),
        from: getPlayerStateNotifierProvider,
        name: r'getPlayerStateNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getPlayerStateNotifierHash,
        dependencies: GetPlayerStateNotifierFamily._dependencies,
        allTransitiveDependencies:
            GetPlayerStateNotifierFamily._allTransitiveDependencies,
        type: type,
        player: player,
      );

  GetPlayerStateNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.player,
  }) : super.internal();

  final PlayerType type;
  final GamePlayer player;

  @override
  Override overrideWith(
    ProviderListenable<PlayerState> Function(GetPlayerStateNotifierRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlayerStateNotifierProvider._internal(
        (ref) => create(ref as GetPlayerStateNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        player: player,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ProviderListenable<PlayerState>> createElement() {
    return _GetPlayerStateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlayerStateNotifierProvider &&
        other.type == type &&
        other.player == player;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, player.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlayerStateNotifierRef
    on AutoDisposeProviderRef<ProviderListenable<PlayerState>> {
  /// The parameter `type` of this provider.
  PlayerType get type;

  /// The parameter `player` of this provider.
  GamePlayer get player;
}

class _GetPlayerStateNotifierProviderElement
    extends AutoDisposeProviderElement<ProviderListenable<PlayerState>>
    with GetPlayerStateNotifierRef {
  _GetPlayerStateNotifierProviderElement(super.provider);

  @override
  PlayerType get type => (origin as GetPlayerStateNotifierProvider).type;
  @override
  GamePlayer get player => (origin as GetPlayerStateNotifierProvider).player;
}

String _$getPlayerNotifierHash() => r'bde860430af541b6cb89d95b70d1e73e3739b9a8';

/// See also [getPlayerNotifier].
@ProviderFor(getPlayerNotifier)
const getPlayerNotifierProvider = GetPlayerNotifierFamily();

/// See also [getPlayerNotifier].
class GetPlayerNotifierFamily extends Family<Refreshable<PlayerHandler>> {
  /// See also [getPlayerNotifier].
  const GetPlayerNotifierFamily();

  /// See also [getPlayerNotifier].
  GetPlayerNotifierProvider call(PlayerType type, GamePlayer player) {
    return GetPlayerNotifierProvider(type, player);
  }

  @override
  GetPlayerNotifierProvider getProviderOverride(
    covariant GetPlayerNotifierProvider provider,
  ) {
    return call(provider.type, provider.player);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlayerNotifierProvider';
}

/// See also [getPlayerNotifier].
class GetPlayerNotifierProvider
    extends AutoDisposeProvider<Refreshable<PlayerHandler>> {
  /// See also [getPlayerNotifier].
  GetPlayerNotifierProvider(PlayerType type, GamePlayer player)
    : this._internal(
        (ref) => getPlayerNotifier(ref as GetPlayerNotifierRef, type, player),
        from: getPlayerNotifierProvider,
        name: r'getPlayerNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getPlayerNotifierHash,
        dependencies: GetPlayerNotifierFamily._dependencies,
        allTransitiveDependencies:
            GetPlayerNotifierFamily._allTransitiveDependencies,
        type: type,
        player: player,
      );

  GetPlayerNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.player,
  }) : super.internal();

  final PlayerType type;
  final GamePlayer player;

  @override
  Override overrideWith(
    Refreshable<PlayerHandler> Function(GetPlayerNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlayerNotifierProvider._internal(
        (ref) => create(ref as GetPlayerNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        player: player,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Refreshable<PlayerHandler>> createElement() {
    return _GetPlayerNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlayerNotifierProvider &&
        other.type == type &&
        other.player == player;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, player.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlayerNotifierRef
    on AutoDisposeProviderRef<Refreshable<PlayerHandler>> {
  /// The parameter `type` of this provider.
  PlayerType get type;

  /// The parameter `player` of this provider.
  GamePlayer get player;
}

class _GetPlayerNotifierProviderElement
    extends AutoDisposeProviderElement<Refreshable<PlayerHandler>>
    with GetPlayerNotifierRef {
  _GetPlayerNotifierProviderElement(super.provider);

  @override
  PlayerType get type => (origin as GetPlayerNotifierProvider).type;
  @override
  GamePlayer get player => (origin as GetPlayerNotifierProvider).player;
}

String _$localGameStateManagerHash() =>
    r'0e2ec90cb2696c7d390bcb54b8087939c46bc3f6';

abstract class _$LocalGameStateManager
    extends BuildlessAutoDisposeNotifier<GameState> {
  late final GameConfiguration configuration;

  GameState build(GameConfiguration configuration);
}

/// See also [LocalGameStateManager].
@ProviderFor(LocalGameStateManager)
const localGameStateManagerProvider = LocalGameStateManagerFamily();

/// See also [LocalGameStateManager].
class LocalGameStateManagerFamily extends Family<GameState> {
  /// See also [LocalGameStateManager].
  const LocalGameStateManagerFamily();

  /// See also [LocalGameStateManager].
  LocalGameStateManagerProvider call(GameConfiguration configuration) {
    return LocalGameStateManagerProvider(configuration);
  }

  @override
  LocalGameStateManagerProvider getProviderOverride(
    covariant LocalGameStateManagerProvider provider,
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
  String? get name => r'localGameStateManagerProvider';
}

/// See also [LocalGameStateManager].
class LocalGameStateManagerProvider
    extends AutoDisposeNotifierProviderImpl<LocalGameStateManager, GameState> {
  /// See also [LocalGameStateManager].
  LocalGameStateManagerProvider(GameConfiguration configuration)
    : this._internal(
        () => LocalGameStateManager()..configuration = configuration,
        from: localGameStateManagerProvider,
        name: r'localGameStateManagerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$localGameStateManagerHash,
        dependencies: LocalGameStateManagerFamily._dependencies,
        allTransitiveDependencies:
            LocalGameStateManagerFamily._allTransitiveDependencies,
        configuration: configuration,
      );

  LocalGameStateManagerProvider._internal(
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
  GameState runNotifierBuild(covariant LocalGameStateManager notifier) {
    return notifier.build(configuration);
  }

  @override
  Override overrideWith(LocalGameStateManager Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalGameStateManagerProvider._internal(
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
  AutoDisposeNotifierProviderElement<LocalGameStateManager, GameState>
  createElement() {
    return _LocalGameStateManagerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalGameStateManagerProvider &&
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
mixin LocalGameStateManagerRef on AutoDisposeNotifierProviderRef<GameState> {
  /// The parameter `configuration` of this provider.
  GameConfiguration get configuration;
}

class _LocalGameStateManagerProviderElement
    extends AutoDisposeNotifierProviderElement<LocalGameStateManager, GameState>
    with LocalGameStateManagerRef {
  _LocalGameStateManagerProviderElement(super.provider);

  @override
  GameConfiguration get configuration =>
      (origin as LocalGameStateManagerProvider).configuration;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
