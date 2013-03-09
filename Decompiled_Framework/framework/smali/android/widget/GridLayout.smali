.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x6

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Landroid/widget/GridLayout$Alignment; = null

.field public static final BOTTOM:Landroid/widget/GridLayout$Alignment; = null

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Landroid/widget/GridLayout$Alignment; = null

.field private static final COLUMN_COUNT:I = 0x3

.field private static final COLUMN_ORDER_PRESERVED:I = 0x4

.field static final DEBUG:Z = false

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final FILL:Landroid/widget/GridLayout$Alignment; = null

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Landroid/widget/GridLayout$Alignment; = null

.field public static final LEFT:Landroid/widget/GridLayout$Alignment; = null

.field static final MAX_SIZE:I = 0x186a0

.field private static final ORIENTATION:I = 0x0

.field static final PRF:I = 0x1

.field public static final RIGHT:Landroid/widget/GridLayout$Alignment; = null

.field private static final ROW_COUNT:I = 0x1

.field private static final ROW_ORDER_PRESERVED:I = 0x2

.field static final TAG:Ljava/lang/String; = null

.field public static final TOP:Landroid/widget/GridLayout$Alignment; = null

.field private static final TRAILING:Landroid/widget/GridLayout$Alignment; = null

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment; = null

.field private static final USE_DEFAULT_MARGINS:I = 0x5

.field public static final VERTICAL:I = 0x1


# instance fields
.field alignmentMode:I

.field defaultGap:I

.field final horizontalAxis:Landroid/widget/GridLayout$Axis;

.field layoutParamsValid:Z

.field orientation:I

.field useDefaultMargins:Z

.field final verticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0}, Landroid/widget/GridLayout$5;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v3, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    new-instance v1, Landroid/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    iput-boolean v2, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    iput v2, p0, Landroid/widget/GridLayout;->orientation:I

    iput-boolean v2, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    iput v3, p0, Landroid/widget/GridLayout;->alignmentMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout;->defaultGap:I

    sget-object v1, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v1

    if-nez p2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v7

    add-int v0, v6, p2

    int-to-float v1, v0

    add-int v0, v7, p3

    int-to-float v2, v0

    add-int v0, v6, p4

    int-to-float v3, v0

    add-int v0, v7, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/lit8 v0, p3, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, p4, -0x1

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static fits([IIII)Z
    .locals 3

    const/4 v1, 0x0

    array-length v2, p0

    if-le p3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_2

    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 4

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v3, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    :goto_2
    return-object v3

    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_1
    sget-object v3, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :pswitch_2
    sget-object v3, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :pswitch_3
    sget-object v3, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :pswitch_4
    sget-object v3, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->defaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultMarginValue(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    if-eqz p3, :cond_2

    iget-object v3, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    :goto_2
    iget-object v2, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz p4, :cond_5

    iget v5, v2, Landroid/widget/GridLayout$Interval;->min:I

    if-nez v5, :cond_4

    :cond_1
    :goto_3
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v3, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    iget v5, v2, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v1, v4

    goto :goto_3
.end method

.method private getLayoutParams1(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7

    iget v5, p0, Landroid/widget/GridLayout;->alignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    :goto_0
    return v5

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v5, Landroid/widget/GridLayout$Interval;->min:I

    :goto_4
    aget v5, v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    :cond_3
    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    :cond_4
    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v5, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method private invalidateValues()V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4

    move v2, p1

    const/4 v1, 0x0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 4

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v13

    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v19

    if-eqz p3, :cond_2

    move-object/from16 v0, v19

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GridLayout;->orientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v4, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v20, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    :goto_4
    invoke-virtual {v14}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    move-object/from16 v0, v20

    iget v2, v0, Landroid/widget/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/widget/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    if-eqz v16, :cond_6

    move-object/from16 v0, v19

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_4

    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private protect(I)I
    .locals 1

    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private static setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 2

    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    return-void
.end method

.method public static spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1

    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 6

    new-instance v0, Landroid/widget/GridLayout$Spec;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridLayout;->orientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    :goto_1
    iget v0, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    :goto_2
    const/4 v8, 0x0

    const/4 v14, 0x0

    new-array v13, v4, [I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v6, v2, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;->getLayoutParams1(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v7

    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_4
    iget-object v9, v11, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-boolean v12, v11, Landroid/widget/GridLayout$Spec;->startDefined:Z

    invoke-virtual {v9}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v10

    if-eqz v12, :cond_0

    iget v8, v9, Landroid/widget/GridLayout$Interval;->min:I

    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v16

    if-eqz v18, :cond_1

    iget v14, v15, Landroid/widget/GridLayout$Interval;->min:I

    :cond_1
    if-eqz v4, :cond_b

    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    if-eqz v18, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_4

    :cond_7
    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    :cond_b
    if-eqz v5, :cond_c

    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    :goto_7
    add-int v14, v14, v16

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;
    .locals 1

    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-eq p1, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->alignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout;->layoutParamsValid:Z

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams1(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMarginValue(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->orientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method final isGone(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 50

    sub-int v38, p4, p2

    sub-int v37, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v38, v30

    sub-int v49, v49, v31

    invoke-virtual/range {v48 .. v49}, Landroid/widget/GridLayout$Axis;->layout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v37, v32

    sub-int v49, v49, v29

    invoke-virtual/range {v48 .. v49}, Landroid/widget/GridLayout$Axis;->layout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v42

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    :goto_0
    move/from16 v0, v22

    if-ge v0, v3, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_0

    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v14, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v36, v0

    iget-object v13, v14, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v35, v0

    iget v0, v13, Landroid/widget/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v44, v20, v48

    move-object/from16 v0, v35

    iget v0, v0, Landroid/widget/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v46, v42, v48

    iget v0, v13, Landroid/widget/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v45, v20, v48

    move-object/from16 v0, v35

    iget v0, v0, Landroid/widget/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v47, v42, v48

    sub-int v11, v45, v44

    sub-int v10, v47, v46

    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v28

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v27

    iget-object v0, v14, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v19

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/GridLayout$Bounds;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/widget/GridLayout$Bounds;

    const/16 v48, 0x0

    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v12, v0}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v11, v49

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;->protect(I)I

    move-result v8

    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v10, v49

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;->protect(I)I

    move-result v9

    const/16 v48, 0x1

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v39

    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v6

    add-int v48, v23, v28

    add-int v26, v48, v33

    add-int v48, v39, v27

    add-int v25, v48, v6

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v12, v7, v0, v1}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/widget/GridLayout$Alignment;I)I

    move-result v4

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/widget/GridLayout$Alignment;I)I

    move-result v5

    add-int v48, v8, v4

    add-int v17, v48, v23

    add-int v48, v9, v5

    add-int v18, v48, v39

    add-int v48, v23, v33

    sub-int v11, v11, v48

    add-int v48, v39, v6

    sub-int v10, v10, v48

    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v11, v2}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v43

    move-object/from16 v0, v41

    move/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v21

    add-int v48, v30, v44

    add-int v15, v48, v17

    add-int v48, v32, v46

    add-int v16, v48, v18

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v48

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v48

    move/from16 v0, v21

    move/from16 v1, v48

    if-eq v0, v1, :cond_2

    :cond_1
    const/high16 v48, 0x4000

    move/from16 v0, v43

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x4000

    move/from16 v0, v21

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int v48, v15, v43

    add-int v49, v16, v21

    move/from16 v0, v16

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget v6, p0, Landroid/widget/GridLayout;->orientation:I

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    invoke-direct {p0, p1, p2, v8}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v6, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v7

    add-int v0, v6, v7

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    add-int v6, v0, v5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v6, v4, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, p1, v8}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v6

    invoke-static {v2, p2, v8}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-object v6, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v8}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v6, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, p1}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    goto :goto_0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/GridLayout;->alignmentMode:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->horizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridLayout;->orientation:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->verticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/GridLayout;->useDefaultMargins:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method
