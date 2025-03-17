// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalGameStateManager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localGameStateManagerHash() =>
    r'ecf140cfd37bd565bab41c219ef8caafcb8e8a9b';

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

abstract class _$LocalGameStateManager extends BuildlessNotifier<GameState> {
  late final String key;

  GameState build(String key);
}

/// See also [LocalGameStateManager].
@ProviderFor(LocalGameStateManager)
const localGameStateManagerProvider = LocalGameStateManagerFamily();

/// See also [LocalGameStateManager].
class LocalGameStateManagerFamily extends Family<GameState> {
  /// See also [LocalGameStateManager].
  const LocalGameStateManagerFamily();

  /// See also [LocalGameStateManager].
  LocalGameStateManagerProvider call(String key) {
    return LocalGameStateManagerProvider(key);
  }

  @override
  LocalGameStateManagerProvider getProviderOverride(
    covariant LocalGameStateManagerProvider provider,
  ) {
    return call(provider.key);
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
    extends NotifierProviderImpl<LocalGameStateManager, GameState> {
  /// See also [LocalGameStateManager].
  LocalGameStateManagerProvider(String key)
    : this._internal(
        () => LocalGameStateManager()..key = key,
        from: localGameStateManagerProvider,
        name: r'localGameStateManagerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$localGameStateManagerHash,
        dependencies: LocalGameStateManagerFamily._dependencies,
        allTransitiveDependencies:
            LocalGameStateManagerFamily._allTransitiveDependencies,
        key: key,
      );

  LocalGameStateManagerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  GameState runNotifierBuild(covariant LocalGameStateManager notifier) {
    return notifier.build(key);
  }

  @override
  Override overrideWith(LocalGameStateManager Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalGameStateManagerProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  NotifierProviderElement<LocalGameStateManager, GameState> createElement() {
    return _LocalGameStateManagerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalGameStateManagerProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocalGameStateManagerRef on NotifierProviderRef<GameState> {
  /// The parameter `key` of this provider.
  String get key;
}

class _LocalGameStateManagerProviderElement
    extends NotifierProviderElement<LocalGameStateManager, GameState>
    with LocalGameStateManagerRef {
  _LocalGameStateManagerProviderElement(super.provider);

  @override
  String get key => (origin as LocalGameStateManagerProvider).key;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
