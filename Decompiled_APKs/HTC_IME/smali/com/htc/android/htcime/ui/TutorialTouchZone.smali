.class public Lcom/htc/android/htcime/ui/TutorialTouchZone;
.super Landroid/view/View;
.source "TutorialTouchZone.java"


# static fields
.field private static final CANCEL_UPDATE:I = 0x1

.field private static final INIT_ALPHA:I = 0xff

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I

.field private static final UPDATE:I


# instance fields
.field private GRADIENT_FACTOR:F

.field private LINE_WIDTH:I

.field private final MARK_DEBUG:Z

.field private RADIUS:I

.field private ROUND:I

.field private TOUCH_HEIGHT:I

.field private TOUCH_WIDTH:I

.field alpha:I

.field ani:Landroid/view/animation/Animation;

.field circle:Landroid/graphics/drawable/ShapeDrawable;

.field colorInterval:I

.field final colorScale:I

.field gCircle:Landroid/graphics/drawable/GradientDrawable;

.field handler:Landroid/os/Handler;

.field interpolationValue:I

.field isSpaceKey:Z

.field lx:I

.field ly:I

.field mBoarderColor:I

.field mBoarderColorTo:I

.field mGradianColor:I

.field mGradianColorTo:I

.field private mHtcimmView:Landroid/view/View;

.field mPaint:Landroid/graphics/Paint;

.field private mTurtorailTouchwindow:Landroid/widget/PopupWindow;

.field rect:Landroid/graphics/drawable/ShapeDrawable;

.field private stepInterval:I

.field touchZone:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x5

    const/4 v8, 0x1

    const/high16 v7, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->MARK_DEBUG:Z

    .line 53
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    .line 54
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    .line 55
    iput v5, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    .line 56
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->RADIUS:I

    .line 57
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ROUND:I

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->GRADIENT_FACTOR:F

    .line 62
    const/16 v1, -0x18

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->stepInterval:I

    .line 63
    iput-object v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ani:Landroid/view/animation/Animation;

    .line 65
    iput-object v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->touchZone:Landroid/graphics/drawable/ShapeDrawable;

    .line 66
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->circle:Landroid/graphics/drawable/ShapeDrawable;

    .line 67
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->rect:Landroid/graphics/drawable/ShapeDrawable;

    .line 69
    iput-object v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    .line 76
    iput-object v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mPaint:Landroid/graphics/Paint;

    .line 77
    const/16 v1, 0xff

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->alpha:I

    .line 78
    iput-object v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    .line 79
    iput-object v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mHtcimmView:Landroid/view/View;

    .line 80
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isSpaceKey:Z

    .line 82
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->lx:I

    .line 83
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ly:I

    .line 88
    iput v5, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorScale:I

    .line 89
    iput v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterval:I

    .line 90
    iput v6, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    .line 93
    new-instance v1, Lcom/htc/android/htcime/ui/TutorialTouchZone$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone$1;-><init>(Lcom/htc/android/htcime/ui/TutorialTouchZone;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->handler:Landroid/os/Handler;

    .line 123
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mGradianColorTo:I

    .line 125
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_0

    .line 127
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mBoarderColor:I

    .line 128
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mBoarderColorTo:I

    .line 129
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mGradianColor:I

    .line 137
    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mGradianColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    aput v4, v3, v6

    iget v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mGradianColor:I

    aput v4, v3, v8

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    .line 138
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 142
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->circle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->rect:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    .line 149
    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->RADIUS:I

    .line 150
    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ROUND:I

    .line 151
    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->GRADIENT_FACTOR:F

    .line 158
    return-void

    .line 132
    :cond_0
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mBoarderColor:I

    .line 133
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mBoarderColorTo:I

    .line 134
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mGradianColor:I

    goto :goto_0

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method private colorInterpolation(IIII)I
    .locals 15
    .parameter "x1"
    .parameter "x2"
    .parameter "i"
    .parameter "s"

    .prologue
    .line 365
    const/high16 v13, -0x100

    and-int v13, v13, p1

    shr-int/lit8 v2, v13, 0x18

    .line 366
    .local v2, a1:I
    const/high16 v13, -0x100

    and-int v13, v13, p2

    shr-int/lit8 v3, v13, 0x18

    .line 367
    .local v3, a2:I
    const/high16 v13, 0xff

    and-int v13, v13, p1

    shr-int/lit8 v11, v13, 0x10

    .line 368
    .local v11, r1:I
    const/high16 v13, 0xff

    and-int v13, v13, p2

    shr-int/lit8 v12, v13, 0x10

    .line 369
    .local v12, r2:I
    const v13, 0xff00

    and-int v13, v13, p1

    shr-int/lit8 v8, v13, 0x8

    .line 370
    .local v8, g1:I
    const v13, 0xff00

    and-int v13, v13, p2

    shr-int/lit8 v9, v13, 0x8

    .line 371
    .local v9, g2:I
    move/from16 v0, p1

    and-int/lit16 v5, v0, 0xff

    .line 372
    .local v5, b1:I
    move/from16 v0, p2

    and-int/lit16 v6, v0, 0xff

    .line 374
    .local v6, b2:I
    sub-int v13, v3, v2

    mul-int v13, v13, p3

    div-int v13, v13, p4

    add-int v1, v2, v13

    .line 375
    .local v1, a:I
    sub-int v13, v12, v11

    mul-int v13, v13, p3

    div-int v13, v13, p4

    add-int v10, v11, v13

    .line 376
    .local v10, r:I
    sub-int v13, v9, v8

    mul-int v13, v13, p3

    div-int v13, v13, p4

    add-int v7, v8, v13

    .line 377
    .local v7, g:I
    sub-int v13, v6, v5

    mul-int v13, v13, p3

    div-int v13, v13, p4

    add-int v4, v5, v13

    .line 380
    .local v4, b:I
    shl-int/lit8 v13, v1, 0x18

    shl-int/lit8 v14, v10, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v7, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v4

    return v13
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 233
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 234
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 235
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public init(Landroid/view/View;)V
    .locals 0
    .parameter "immview"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mHtcimmView:Landroid/view/View;

    .line 169
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 265
    iget-object v5, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->touchZone:Landroid/graphics/drawable/ShapeDrawable;

    .line 269
    .local v5, sahpe:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->getTop()I

    move-result v6

    .line 270
    .local v6, top:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->getBottom()I

    move-result v0

    .line 271
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->getLeft()I

    move-result v1

    .line 272
    .local v1, left:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->getRight()I

    move-result v4

    .line 273
    .local v4, right:I
    const/4 v3, 0x0

    .line 275
    .local v3, r:Landroid/graphics/Rect;
    iget-boolean v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isSpaceKey:Z

    if-nez v7, :cond_2

    .line 276
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 277
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v1, v6, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 278
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 279
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->GRADIENT_FACTOR:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 280
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->alpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 281
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    :goto_0
    iget v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    sub-int v8, v0, v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 318
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mBoarderColor:I

    iget v9, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mBoarderColorTo:I

    iget v10, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    invoke-direct {p0, v8, v9, v10, v13}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterpolation(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->LINE_WIDTH:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 325
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 327
    .local v2, m:Landroid/os/Message;
    iput v11, v2, Landroid/os/Message;->what:I

    .line 331
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->handler:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    iget v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    if-ne v7, v13, :cond_0

    .line 334
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterval:I

    .line 335
    :cond_0
    iget v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    if-nez v7, :cond_1

    .line 336
    iput v12, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterval:I

    .line 338
    :cond_1
    iget v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterval:I

    add-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x6

    iput v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    .line 351
    return-void

    .line 283
    .end local v2           #m:Landroid/os/Message;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 284
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ROUND:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 285
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v1, v6, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 286
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 287
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->GRADIENT_FACTOR:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 288
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    iget v8, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->alpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 289
    iget-object v7, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->gCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 248
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    .line 251
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 255
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public setCenterLocation(FFII)V
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "keyWidth"
    .parameter "keyHeight"

    .prologue
    const/4 v2, 0x1

    .line 172
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 173
    .local v0, mOffsetInWindow:[I
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mHtcimmView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 175
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 176
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isSpaceKey:Z

    .line 177
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->rect:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->touchZone:Landroid/graphics/drawable/ShapeDrawable;

    .line 178
    iput p3, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    .line 179
    iput p4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    .line 186
    :goto_0
    iget v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sub-float v1, p1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->lx:I

    .line 187
    iget v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sub-float v1, p2, v1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ly:I

    .line 191
    return-void

    .line 181
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isSpaceKey:Z

    .line 182
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->circle:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->touchZone:Landroid/graphics/drawable/ShapeDrawable;

    .line 183
    iget v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    iput v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 194
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mHtcimmView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->lx:I

    iget v2, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ly:I

    iget v3, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    iget v4, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 216
    :cond_2
    :goto_1
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->alpha:I

    .line 217
    const/16 v0, -0x18

    iput v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->stepInterval:I

    .line 219
    iput v5, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterval:I

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->colorInterval:I

    .line 221
    iput v5, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->interpolationValue:I

    .line 223
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->invalidate()V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_WIDTH:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 210
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->TOUCH_HEIGHT:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 211
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mHtcimmView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mTurtorailTouchwindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->mHtcimmView:Landroid/view/View;

    iget v2, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->lx:I

    iget v3, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone;->ly:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method
