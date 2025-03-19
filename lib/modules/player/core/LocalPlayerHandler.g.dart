// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalPlayerHandler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localPlayerHandlerHash() =>
    r'817dfa024dcae02f6abf7c742cb6389c907c6bd4';

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

abstract class _$LocalPlayerHandler
    extends BuildlessAutoDisposeNotifier<PlayerState> {
  late final GamePlayer player;

  PlayerState build(GamePlayer player);
}

/// See also [LocalPlayerHandler].
@ProviderFor(LocalPlayerHandler)
const localPlayerHandlerProvider = LocalPlayerHandlerFamily();

/// See also [LocalPlayerHandler].
class LocalPlayerHandlerFamily extends Family<PlayerState> {
  /// See also [LocalPlayerHandler].
  const LocalPlayerHandlerFamily();

  /// See also [LocalPlayerHandler].
  LocalPlayerHandlerProvider call(GamePlayer player) {
    return LocalPlayerHandlerProvider(player);
  }

  @override
  LocalPlayerHandlerProvider getProviderOverride(
    covariant LocalPlayerHandlerProvider provider,
  ) {
    return call(provider.player);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'localPlayerHandlerProvider';
}

/// See also [LocalPlayerHandler].
class LocalPlayerHandlerProvider
    extends AutoDisposeNotifierProviderImpl<LocalPlayerHandler, PlayerState> {
  /// See also [LocalPlayerHandler].
  LocalPlayerHandlerProvider(GamePlayer player)
    : this._internal(
        () => LocalPlayerHandler()..player = player,
        from: localPlayerHandlerProvider,
        name: r'localPlayerHandlerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$localPlayerHandlerHash,
        dependencies: LocalPlayerHandlerFamily._dependencies,
        allTransitiveDependencies:
            LocalPlayerHandlerFamily._allTransitiveDependencies,
        player: player,
      );

  LocalPlayerHandlerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.player,
  }) : super.internal();

  final GamePlayer player;

  @override
  PlayerState runNotifierBuild(covariant LocalPlayerHandler notifier) {
    return notifier.build(player);
  }

  @override
  Override overrideWith(LocalPlayerHandler Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalPlayerHandlerProvider._internal(
        () => create()..player = player,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        player: player,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<LocalPlayerHandler, PlayerState>
  createElement() {
    return _LocalPlayerHandlerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalPlayerHandlerProvider && other.player == player;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, player.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocalPlayerHandlerRef on AutoDisposeNotifierProviderRef<PlayerState> {
  /// The parameter `player` of this provider.
  GamePlayer get player;
}

class _LocalPlayerHandlerProviderElement
    extends AutoDisposeNotifierProviderElement<LocalPlayerHandler, PlayerState>
    with LocalPlayerHandlerRef {
  _LocalPlayerHandlerProviderElement(super.provider);

  @override
  GamePlayer get player => (origin as LocalPlayerHandlerProvider).player;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
