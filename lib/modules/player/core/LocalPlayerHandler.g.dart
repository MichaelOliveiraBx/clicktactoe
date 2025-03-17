// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalPlayerHandler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localPlayerHandlerHash() =>
    r'c6c2b0ef3ac073e4b4d6c0cda2ef2c1597e7ed1e';

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
    extends BuildlessAutoDisposeNotifier<List<GamePoint>> {
  late final String key;

  List<GamePoint> build(String key);
}

/// See also [LocalPlayerHandler].
@ProviderFor(LocalPlayerHandler)
const localPlayerHandlerProvider = LocalPlayerHandlerFamily();

/// See also [LocalPlayerHandler].
class LocalPlayerHandlerFamily extends Family<List<GamePoint>> {
  /// See also [LocalPlayerHandler].
  const LocalPlayerHandlerFamily();

  /// See also [LocalPlayerHandler].
  LocalPlayerHandlerProvider call(String key) {
    return LocalPlayerHandlerProvider(key);
  }

  @override
  LocalPlayerHandlerProvider getProviderOverride(
    covariant LocalPlayerHandlerProvider provider,
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
  String? get name => r'localPlayerHandlerProvider';
}

/// See also [LocalPlayerHandler].
class LocalPlayerHandlerProvider
    extends
        AutoDisposeNotifierProviderImpl<LocalPlayerHandler, List<GamePoint>> {
  /// See also [LocalPlayerHandler].
  LocalPlayerHandlerProvider(String key)
    : this._internal(
        () => LocalPlayerHandler()..key = key,
        from: localPlayerHandlerProvider,
        name: r'localPlayerHandlerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$localPlayerHandlerHash,
        dependencies: LocalPlayerHandlerFamily._dependencies,
        allTransitiveDependencies:
            LocalPlayerHandlerFamily._allTransitiveDependencies,
        key: key,
      );

  LocalPlayerHandlerProvider._internal(
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
  List<GamePoint> runNotifierBuild(covariant LocalPlayerHandler notifier) {
    return notifier.build(key);
  }

  @override
  Override overrideWith(LocalPlayerHandler Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalPlayerHandlerProvider._internal(
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
  AutoDisposeNotifierProviderElement<LocalPlayerHandler, List<GamePoint>>
  createElement() {
    return _LocalPlayerHandlerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalPlayerHandlerProvider && other.key == key;
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
mixin LocalPlayerHandlerRef on AutoDisposeNotifierProviderRef<List<GamePoint>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _LocalPlayerHandlerProviderElement
    extends
        AutoDisposeNotifierProviderElement<LocalPlayerHandler, List<GamePoint>>
    with LocalPlayerHandlerRef {
  _LocalPlayerHandlerProviderElement(super.provider);

  @override
  String get key => (origin as LocalPlayerHandlerProvider).key;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
