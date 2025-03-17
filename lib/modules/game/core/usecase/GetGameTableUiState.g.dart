// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetGameTableUiState.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGameTableUiStateHash() =>
    r'1e7a1ec0e2ae43c721ba918488f4dbcf02abcce5';

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

/// See also [getGameTableUiState].
@ProviderFor(getGameTableUiState)
const getGameTableUiStateProvider = GetGameTableUiStateFamily();

/// See also [getGameTableUiState].
class GetGameTableUiStateFamily extends Family<GameTableUiState> {
  /// See also [getGameTableUiState].
  const GetGameTableUiStateFamily();

  /// See also [getGameTableUiState].
  GetGameTableUiStateProvider call(GameState gameState) {
    return GetGameTableUiStateProvider(gameState);
  }

  @override
  GetGameTableUiStateProvider getProviderOverride(
    covariant GetGameTableUiStateProvider provider,
  ) {
    return call(provider.gameState);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getGameTableUiStateProvider';
}

/// See also [getGameTableUiState].
class GetGameTableUiStateProvider
    extends AutoDisposeProvider<GameTableUiState> {
  /// See also [getGameTableUiState].
  GetGameTableUiStateProvider(GameState gameState)
    : this._internal(
        (ref) => getGameTableUiState(ref as GetGameTableUiStateRef, gameState),
        from: getGameTableUiStateProvider,
        name: r'getGameTableUiStateProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getGameTableUiStateHash,
        dependencies: GetGameTableUiStateFamily._dependencies,
        allTransitiveDependencies:
            GetGameTableUiStateFamily._allTransitiveDependencies,
        gameState: gameState,
      );

  GetGameTableUiStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.gameState,
  }) : super.internal();

  final GameState gameState;

  @override
  Override overrideWith(
    GameTableUiState Function(GetGameTableUiStateRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetGameTableUiStateProvider._internal(
        (ref) => create(ref as GetGameTableUiStateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        gameState: gameState,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<GameTableUiState> createElement() {
    return _GetGameTableUiStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGameTableUiStateProvider && other.gameState == gameState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, gameState.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetGameTableUiStateRef on AutoDisposeProviderRef<GameTableUiState> {
  /// The parameter `gameState` of this provider.
  GameState get gameState;
}

class _GetGameTableUiStateProviderElement
    extends AutoDisposeProviderElement<GameTableUiState>
    with GetGameTableUiStateRef {
  _GetGameTableUiStateProviderElement(super.provider);

  @override
  GameState get gameState => (origin as GetGameTableUiStateProvider).gameState;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
