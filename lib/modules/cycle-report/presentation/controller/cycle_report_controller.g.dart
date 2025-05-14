// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_report_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cycleReportControllerHash() =>
    r'6c0a64277745feb52d7a290a8f99124b79bef879';

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

abstract class _$CycleReportController
    extends BuildlessAutoDisposeNotifier<CycleReportState> {
  late final DateTime? initialDate;

  CycleReportState build({DateTime? initialDate});
}

/// See also [CycleReportController].
@ProviderFor(CycleReportController)
const cycleReportControllerProvider = CycleReportControllerFamily();

/// See also [CycleReportController].
class CycleReportControllerFamily extends Family<CycleReportState> {
  /// See also [CycleReportController].
  const CycleReportControllerFamily();

  /// See also [CycleReportController].
  CycleReportControllerProvider call({DateTime? initialDate}) {
    return CycleReportControllerProvider(initialDate: initialDate);
  }

  @override
  CycleReportControllerProvider getProviderOverride(
    covariant CycleReportControllerProvider provider,
  ) {
    return call(initialDate: provider.initialDate);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'cycleReportControllerProvider';
}

/// See also [CycleReportController].
class CycleReportControllerProvider
    extends
        AutoDisposeNotifierProviderImpl<
          CycleReportController,
          CycleReportState
        > {
  /// See also [CycleReportController].
  CycleReportControllerProvider({DateTime? initialDate})
    : this._internal(
        () => CycleReportController()..initialDate = initialDate,
        from: cycleReportControllerProvider,
        name: r'cycleReportControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$cycleReportControllerHash,
        dependencies: CycleReportControllerFamily._dependencies,
        allTransitiveDependencies:
            CycleReportControllerFamily._allTransitiveDependencies,
        initialDate: initialDate,
      );

  CycleReportControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialDate,
  }) : super.internal();

  final DateTime? initialDate;

  @override
  CycleReportState runNotifierBuild(covariant CycleReportController notifier) {
    return notifier.build(initialDate: initialDate);
  }

  @override
  Override overrideWith(CycleReportController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CycleReportControllerProvider._internal(
        () => create()..initialDate = initialDate,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialDate: initialDate,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CycleReportController, CycleReportState>
  createElement() {
    return _CycleReportControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CycleReportControllerProvider &&
        other.initialDate == initialDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CycleReportControllerRef
    on AutoDisposeNotifierProviderRef<CycleReportState> {
  /// The parameter `initialDate` of this provider.
  DateTime? get initialDate;
}

class _CycleReportControllerProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          CycleReportController,
          CycleReportState
        >
    with CycleReportControllerRef {
  _CycleReportControllerProviderElement(super.provider);

  @override
  DateTime? get initialDate =>
      (origin as CycleReportControllerProvider).initialDate;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
