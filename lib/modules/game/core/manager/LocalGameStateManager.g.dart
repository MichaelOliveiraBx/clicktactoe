// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalGameStateManager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localGameStateManagerHash() =>
    r'9901255bd9178c1b0500c69984c35640abc0fe70';

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
