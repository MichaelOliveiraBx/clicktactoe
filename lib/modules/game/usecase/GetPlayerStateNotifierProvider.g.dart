// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetPlayerStateNotifierProvider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlayerStateNotifierProviderHash() =>
    r'f015f19e9f5838a39bf3183aa150216c8517de35';

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

/// See also [getPlayerStateNotifierProvider].
@ProviderFor(getPlayerStateNotifierProvider)
const getPlayerStateNotifierProviderProvider =
    GetPlayerStateNotifierProviderFamily();

/// See also [getPlayerStateNotifierProvider].
class GetPlayerStateNotifierProviderFamily
    extends Family<ProviderListenable<PlayerState>> {
  /// See also [getPlayerStateNotifierProvider].
  const GetPlayerStateNotifierProviderFamily();

  /// See also [getPlayerStateNotifierProvider].
  GetPlayerStateNotifierProviderProvider call(
    PlayerType type,
    GamePlayer player,
  ) {
    return GetPlayerStateNotifierProviderProvider(type, player);
  }

  @override
  GetPlayerStateNotifierProviderProvider getProviderOverride(
    covariant GetPlayerStateNotifierProviderProvider provider,
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
  String? get name => r'getPlayerStateNotifierProviderProvider';
}

/// See also [getPlayerStateNotifierProvider].
class GetPlayerStateNotifierProviderProvider
    extends AutoDisposeProvider<ProviderListenable<PlayerState>> {
  /// See also [getPlayerStateNotifierProvider].
  GetPlayerStateNotifierProviderProvider(PlayerType type, GamePlayer player)
    : this._internal(
        (ref) => getPlayerStateNotifierProvider(
          ref as GetPlayerStateNotifierProviderRef,
          type,
          player,
        ),
        from: getPlayerStateNotifierProviderProvider,
        name: r'getPlayerStateNotifierProviderProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getPlayerStateNotifierProviderHash,
        dependencies: GetPlayerStateNotifierProviderFamily._dependencies,
        allTransitiveDependencies:
            GetPlayerStateNotifierProviderFamily._allTransitiveDependencies,
        type: type,
        player: player,
      );

  GetPlayerStateNotifierProviderProvider._internal(
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
    ProviderListenable<PlayerState> Function(
      GetPlayerStateNotifierProviderRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlayerStateNotifierProviderProvider._internal(
        (ref) => create(ref as GetPlayerStateNotifierProviderRef),
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
    return _GetPlayerStateNotifierProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlayerStateNotifierProviderProvider &&
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
mixin GetPlayerStateNotifierProviderRef
    on AutoDisposeProviderRef<ProviderListenable<PlayerState>> {
  /// The parameter `type` of this provider.
  PlayerType get type;

  /// The parameter `player` of this provider.
  GamePlayer get player;
}

class _GetPlayerStateNotifierProviderProviderElement
    extends AutoDisposeProviderElement<ProviderListenable<PlayerState>>
    with GetPlayerStateNotifierProviderRef {
  _GetPlayerStateNotifierProviderProviderElement(super.provider);

  @override
  PlayerType get type =>
      (origin as GetPlayerStateNotifierProviderProvider).type;
  @override
  GamePlayer get player =>
      (origin as GetPlayerStateNotifierProviderProvider).player;
}

String _$getPlayerNotifierProviderHash() =>
    r'5c579a0d2e1ca04bc917278ad0e59275660efad0';

/// See also [getPlayerNotifierProvider].
@ProviderFor(getPlayerNotifierProvider)
const getPlayerNotifierProviderProvider = GetPlayerNotifierProviderFamily();

/// See also [getPlayerNotifierProvider].
class GetPlayerNotifierProviderFamily
    extends Family<Refreshable<PlayerHandler>> {
  /// See also [getPlayerNotifierProvider].
  const GetPlayerNotifierProviderFamily();

  /// See also [getPlayerNotifierProvider].
  GetPlayerNotifierProviderProvider call(PlayerType type, GamePlayer player) {
    return GetPlayerNotifierProviderProvider(type, player);
  }

  @override
  GetPlayerNotifierProviderProvider getProviderOverride(
    covariant GetPlayerNotifierProviderProvider provider,
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
  String? get name => r'getPlayerNotifierProviderProvider';
}

/// See also [getPlayerNotifierProvider].
class GetPlayerNotifierProviderProvider
    extends AutoDisposeProvider<Refreshable<PlayerHandler>> {
  /// See also [getPlayerNotifierProvider].
  GetPlayerNotifierProviderProvider(PlayerType type, GamePlayer player)
    : this._internal(
        (ref) => getPlayerNotifierProvider(
          ref as GetPlayerNotifierProviderRef,
          type,
          player,
        ),
        from: getPlayerNotifierProviderProvider,
        name: r'getPlayerNotifierProviderProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getPlayerNotifierProviderHash,
        dependencies: GetPlayerNotifierProviderFamily._dependencies,
        allTransitiveDependencies:
            GetPlayerNotifierProviderFamily._allTransitiveDependencies,
        type: type,
        player: player,
      );

  GetPlayerNotifierProviderProvider._internal(
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
    Refreshable<PlayerHandler> Function(GetPlayerNotifierProviderRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlayerNotifierProviderProvider._internal(
        (ref) => create(ref as GetPlayerNotifierProviderRef),
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
    return _GetPlayerNotifierProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlayerNotifierProviderProvider &&
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
mixin GetPlayerNotifierProviderRef
    on AutoDisposeProviderRef<Refreshable<PlayerHandler>> {
  /// The parameter `type` of this provider.
  PlayerType get type;

  /// The parameter `player` of this provider.
  GamePlayer get player;
}

class _GetPlayerNotifierProviderProviderElement
    extends AutoDisposeProviderElement<Refreshable<PlayerHandler>>
    with GetPlayerNotifierProviderRef {
  _GetPlayerNotifierProviderProviderElement(super.provider);

  @override
  PlayerType get type => (origin as GetPlayerNotifierProviderProvider).type;
  @override
  GamePlayer get player => (origin as GetPlayerNotifierProviderProvider).player;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
