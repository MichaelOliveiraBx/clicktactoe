// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetPlayerWinnerUseCase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlayerWinnerUseCaseHash() =>
    r'e5937436dcc7247cad8358f9cf3d61cd953804ff';

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

/// See also [getPlayerWinnerUseCase].
@ProviderFor(getPlayerWinnerUseCase)
const getPlayerWinnerUseCaseProvider = GetPlayerWinnerUseCaseFamily();

/// See also [getPlayerWinnerUseCase].
class GetPlayerWinnerUseCaseFamily extends Family<WinnerData?> {
  /// See also [getPlayerWinnerUseCase].
  const GetPlayerWinnerUseCaseFamily();

  /// See also [getPlayerWinnerUseCase].
  GetPlayerWinnerUseCaseProvider call(
    List<GamePoint> player1Points,
    List<GamePoint> player2Points,
  ) {
    return GetPlayerWinnerUseCaseProvider(player1Points, player2Points);
  }

  @override
  GetPlayerWinnerUseCaseProvider getProviderOverride(
    covariant GetPlayerWinnerUseCaseProvider provider,
  ) {
    return call(provider.player1Points, provider.player2Points);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlayerWinnerUseCaseProvider';
}

/// See also [getPlayerWinnerUseCase].
class GetPlayerWinnerUseCaseProvider extends AutoDisposeProvider<WinnerData?> {
  /// See also [getPlayerWinnerUseCase].
  GetPlayerWinnerUseCaseProvider(
    List<GamePoint> player1Points,
    List<GamePoint> player2Points,
  ) : this._internal(
        (ref) => getPlayerWinnerUseCase(
          ref as GetPlayerWinnerUseCaseRef,
          player1Points,
          player2Points,
        ),
        from: getPlayerWinnerUseCaseProvider,
        name: r'getPlayerWinnerUseCaseProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getPlayerWinnerUseCaseHash,
        dependencies: GetPlayerWinnerUseCaseFamily._dependencies,
        allTransitiveDependencies:
            GetPlayerWinnerUseCaseFamily._allTransitiveDependencies,
        player1Points: player1Points,
        player2Points: player2Points,
      );

  GetPlayerWinnerUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.player1Points,
    required this.player2Points,
  }) : super.internal();

  final List<GamePoint> player1Points;
  final List<GamePoint> player2Points;

  @override
  Override overrideWith(
    WinnerData? Function(GetPlayerWinnerUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlayerWinnerUseCaseProvider._internal(
        (ref) => create(ref as GetPlayerWinnerUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        player1Points: player1Points,
        player2Points: player2Points,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<WinnerData?> createElement() {
    return _GetPlayerWinnerUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlayerWinnerUseCaseProvider &&
        other.player1Points == player1Points &&
        other.player2Points == player2Points;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, player1Points.hashCode);
    hash = _SystemHash.combine(hash, player2Points.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlayerWinnerUseCaseRef on AutoDisposeProviderRef<WinnerData?> {
  /// The parameter `player1Points` of this provider.
  List<GamePoint> get player1Points;

  /// The parameter `player2Points` of this provider.
  List<GamePoint> get player2Points;
}

class _GetPlayerWinnerUseCaseProviderElement
    extends AutoDisposeProviderElement<WinnerData?>
    with GetPlayerWinnerUseCaseRef {
  _GetPlayerWinnerUseCaseProviderElement(super.provider);

  @override
  List<GamePoint> get player1Points =>
      (origin as GetPlayerWinnerUseCaseProvider).player1Points;
  @override
  List<GamePoint> get player2Points =>
      (origin as GetPlayerWinnerUseCaseProvider).player2Points;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
