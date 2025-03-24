// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MinimaxAiPlayerProvider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$minimaxAiPlayerProviderHash() =>
    r'7dcabbc57692ee11d512b6e96cbc21623cb4bd23';

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

abstract class _$MinimaxAiPlayerProvider
    extends BuildlessAutoDisposeNotifier<PlayerState> {
  late final GamePlayer player;

  PlayerState build(GamePlayer player);
}

/// See also [MinimaxAiPlayerProvider].
@ProviderFor(MinimaxAiPlayerProvider)
const minimaxAiPlayerProviderProvider = MinimaxAiPlayerProviderFamily();

/// See also [MinimaxAiPlayerProvider].
class MinimaxAiPlayerProviderFamily extends Family<PlayerState> {
  /// See also [MinimaxAiPlayerProvider].
  const MinimaxAiPlayerProviderFamily();

  /// See also [MinimaxAiPlayerProvider].
  MinimaxAiPlayerProviderProvider call(GamePlayer player) {
    return MinimaxAiPlayerProviderProvider(player);
  }

  @override
  MinimaxAiPlayerProviderProvider getProviderOverride(
    covariant MinimaxAiPlayerProviderProvider provider,
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
  String? get name => r'minimaxAiPlayerProviderProvider';
}

/// See also [MinimaxAiPlayerProvider].
class MinimaxAiPlayerProviderProvider
    extends
        AutoDisposeNotifierProviderImpl<MinimaxAiPlayerProvider, PlayerState> {
  /// See also [MinimaxAiPlayerProvider].
  MinimaxAiPlayerProviderProvider(GamePlayer player)
    : this._internal(
        () => MinimaxAiPlayerProvider()..player = player,
        from: minimaxAiPlayerProviderProvider,
        name: r'minimaxAiPlayerProviderProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$minimaxAiPlayerProviderHash,
        dependencies: MinimaxAiPlayerProviderFamily._dependencies,
        allTransitiveDependencies:
            MinimaxAiPlayerProviderFamily._allTransitiveDependencies,
        player: player,
      );

  MinimaxAiPlayerProviderProvider._internal(
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
  PlayerState runNotifierBuild(covariant MinimaxAiPlayerProvider notifier) {
    return notifier.build(player);
  }

  @override
  Override overrideWith(MinimaxAiPlayerProvider Function() create) {
    return ProviderOverride(
      origin: this,
      override: MinimaxAiPlayerProviderProvider._internal(
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
  AutoDisposeNotifierProviderElement<MinimaxAiPlayerProvider, PlayerState>
  createElement() {
    return _MinimaxAiPlayerProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MinimaxAiPlayerProviderProvider && other.player == player;
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
mixin MinimaxAiPlayerProviderRef
    on AutoDisposeNotifierProviderRef<PlayerState> {
  /// The parameter `player` of this provider.
  GamePlayer get player;
}

class _MinimaxAiPlayerProviderProviderElement
    extends
        AutoDisposeNotifierProviderElement<MinimaxAiPlayerProvider, PlayerState>
    with MinimaxAiPlayerProviderRef {
  _MinimaxAiPlayerProviderProviderElement(super.provider);

  @override
  GamePlayer get player => (origin as MinimaxAiPlayerProviderProvider).player;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
