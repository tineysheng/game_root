//

export const frameDefaults: any = {
    // immutable props
    name: "AnonymousFrame",
    priority: 0,
    isSimple: true,
    typeName: null,
    inherits: "",
    context: 0,
    key: null,
    // mutable props
    alpha: 255,
    enabled: true,
    font: {fileName: "Fonts\\dfst-m3u.ttf", height: 0.013, flags: 0},
    level: 0,
    maxLength: 9999,
    minMaxValue: {min: -999999999, max: 999999999},
    model: {modelFile: "", cameraIndex: 0},
    scale: 1,
    spriteAnimate: {primaryProp: 0, flags: 0},
    stepSize: 0,
    text: "",
    textAlignment: 1,
    textColor: 0xffffff,
    texture: {texFile: "", flag: 0, blend: true},
    tooltip: null,
    value: 0,
    vertexColor: 0xffffff,
    visible: true,
    position: null,
    absPosition: null,
    size: {width: 0.04, height: 0.04},
    children: null,
    ref: null,
    // events
    onClick: null,
    onMouseEnter: null,
    onMouseLeave: null,
    onMouseUp: null,
    onMouseDown: null,
    onMouseWheel: null,
    onCheckboxChecked: null,
    onCheckboxUnchecked: null,
    onEditboxTextChanged: null,
    onPopupmenuItemChanged: null,
    onDoubleClick: null,
    onSpriteAnimUpdate: null,
    onSliderChanged: null,
    onDialogCancel: null,
    onDialogAccept: null,
    onEditboxEnter: null,
} as const;

// Just a type assertion; we want const above to handle polymorphic types
frameDefaults as Required<FrameProps> & { children: null };