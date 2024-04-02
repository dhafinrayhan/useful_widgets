import 'package:flutter/material.dart';

class InkContainer extends InkWell {
  InkContainer({
    super.key,
    super.onTap,
    super.onDoubleTap,
    super.onLongPress,
    super.onTapDown,
    super.onTapUp,
    super.onTapCancel,
    super.onSecondaryTap,
    super.onSecondaryTapUp,
    super.onSecondaryTapDown,
    super.onSecondaryTapCancel,
    super.onHighlightChanged,
    super.onHover,
    super.mouseCursor,
    super.focusColor,
    super.hoverColor,
    super.highlightColor,
    super.overlayColor,
    super.splashColor,
    super.splashFactory,
    super.radius,
    super.borderRadius,
    super.customBorder,
    super.enableFeedback,
    super.excludeFromSemantics,
    super.focusNode,
    super.canRequestFocus,
    super.onFocusChange,
    super.autofocus,
    super.statesController,
    super.hoverDuration,
    Widget? child,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
  })  : assert(
          color == null || decoration == null,
          'Cannot provide both a color and a decoration\n'
          'To provide both, use "decoration: BoxDecoration(color: color)".',
        ),
        assert(
          decoration?.borderRadius == null,
          'decoration.borderRadius must be null\n'
          'To provide borderRadius, use the borderRadius parameter directly.',
        ),
        containerChild = child,
        super(
          child: const SizedBox(
            width: double.infinity,
            height: double.infinity,
          ),
        );

  /// See [Container.child].
  final Widget? containerChild;

  /// See [Container.alignment].
  final AlignmentGeometry? alignment;

  /// See [Container.padding].
  final EdgeInsetsGeometry? padding;

  /// See [Container.color].
  final Color? color;

  /// See [Container.decoration].
  final BoxDecoration? decoration;

  /// See [Container.foregroundDecoration].
  final Decoration? foregroundDecoration;

  /// See [Container.constraints].
  final double? width;

  /// See [Container.constraints].
  final double? height;

  /// See [Container.constraints].
  final BoxConstraints? constraints;

  /// See [Container.margin].
  final EdgeInsetsGeometry? margin;

  /// See [Container.transform].
  final Matrix4? transform;

  /// See [Container.transformAlignment].
  final AlignmentGeometry? transformAlignment;

  /// See [Container.clipBehavior].
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    final roundedDecoration = BoxDecoration(
      color: decoration?.color ?? color,
      image: decoration?.image,
      border: decoration?.border,
      borderRadius: borderRadius,
      boxShadow: decoration?.boxShadow,
      gradient: decoration?.gradient,
      backgroundBlendMode: decoration?.backgroundBlendMode,
      shape: decoration?.shape ?? BoxShape.rectangle,
    );

    return Stack(
      children: [
        Container(
          // ignore: sort_child_properties_last
          child: containerChild,
          alignment: alignment,
          padding: padding,
          decoration: roundedDecoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          transform: transform,
          transformAlignment: transformAlignment,
          clipBehavior: clipBehavior,
        ),
        Positioned.fill(
          child: Material(
            type: MaterialType.transparency,
            child: super.build(context),
          ),
        ),
      ],
    );
  }
}
