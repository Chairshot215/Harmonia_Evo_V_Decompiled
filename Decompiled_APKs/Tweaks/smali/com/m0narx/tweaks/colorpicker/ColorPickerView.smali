.class public Lcom/m0narx/tweaks/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 39
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 44
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 48
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 53
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 56
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    .line 77
    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    .line 78
    iput v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    .line 79
    iput v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 82
    const v0, -0xe3e3e4

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 83
    const v0, -0x919192

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderColor:I

    .line 84
    iput-boolean v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 90
    iput v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 128
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->init()V

    .line 129
    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .parameter "alpha"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 355
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 357
    .local v2, width:F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 359
    .local v0, p:Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 360
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 362
    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 186
    const/16 v3, 0x169

    new-array v1, v3, [I

    .line 188
    .local v1, hue:[I
    const/4 v0, 0x0

    .line 189
    .local v0, count:I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 193
    return-object v1

    .line 190
    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    .line 189
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    .line 178
    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 179
    .local v0, offset:F
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 181
    const/high16 v1, 0x3fc0

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    .line 681
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 684
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    .line 673
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 676
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v11, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 283
    .local v11, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    .line 285
    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    .line 286
    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    .line 287
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    .line 288
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 284
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    aput v1, v8, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    aput v1, v8, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    aput v1, v8, v0

    .line 295
    .local v8, hsv:[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 296
    .local v5, color:I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 298
    .local v6, acolor:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 299
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 298
    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 302
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 304
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 306
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x4080

    iget v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 310
    :cond_2
    const/high16 v0, 0x4080

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v12, v0, v1

    .line 312
    .local v12, rectWidth:F
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .line 314
    .local v9, p:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 315
    .local v10, r:Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 316
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 317
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 318
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 320
    const/high16 v0, 0x4000

    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v4, 0x3f80

    .line 243
    iget-object v10, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 246
    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    .line 248
    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    .line 249
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    .line 250
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    .line 251
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 256
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 261
    const/high16 v0, 0x4080

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .line 263
    .local v11, rectHeight:F
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .line 265
    .local v8, p:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 266
    .local v9, r:Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    .line 267
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 268
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 269
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 272
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 274
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 210
    iget-object v10, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 213
    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    .line 219
    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 218
    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 222
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 224
    .local v6, rgb:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    .line 225
    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 224
    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 226
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 227
    .local v8, mShader:Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 229
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 231
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .line 233
    .local v9, p:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    .line 703
    const/high16 v1, 0x4348

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 705
    .local v0, height:I
    iget-boolean v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 706
    int-to-float v1, v0

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 709
    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 692
    .local v0, width:I
    iget-boolean v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 693
    int-to-float v1, v0

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 697
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .parameter "hue"

    .prologue
    .line 327
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 328
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 330
    .local v0, height:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 332
    .local v1, p:Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 333
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 335
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    .line 133
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 134
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 135
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 136
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 137
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 139
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingOffset:F

    .line 141
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->initPaintTools()V

    .line 144
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setFocusable(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 146
    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x1

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 159
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 175
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 588
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v5, :cond_1

    move v3, v4

    .line 624
    :cond_0
    :goto_0
    return v3

    .line 590
    :cond_1
    const/4 v3, 0x0

    .line 592
    .local v3, update:Z
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 593
    .local v1, startX:I
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 596
    .local v2, startY:I
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 597
    iput v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    .line 601
    const/4 v3, 0x1

    goto :goto_0

    .line 603
    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 605
    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .line 609
    .local v0, result:[F
    aget v4, v0, v4

    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    .line 610
    aget v4, v0, v8

    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    .line 612
    const/4 v3, 0x1

    goto :goto_0

    .line 614
    .end local v0           #result:[F
    :cond_3
    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    const/4 v4, 0x2

    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    .line 620
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 423
    .local v0, rect:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 425
    .local v1, width:I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 426
    const/4 p1, 0x0

    .line 435
    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    .line 428
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 429
    move p1, v1

    goto :goto_0

    .line 432
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .parameter "y"

    .prologue
    const/high16 v3, 0x43b4

    .line 403
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 405
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 407
    .local v0, height:F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 408
    const/4 p1, 0x0

    .line 417
    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    .line 410
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 411
    move p1, v0

    goto :goto_0

    .line 414
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    .line 368
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 369
    .local v1, rect:Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 371
    .local v2, result:[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 372
    .local v3, width:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 374
    .local v0, height:F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 375
    const/4 p1, 0x0

    .line 384
    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 385
    const/4 p2, 0x0

    .line 395
    :goto_1
    const/4 v4, 0x0

    div-float v5, v6, v3

    mul-float/2addr v5, p1

    aput v5, v2, v4

    .line 396
    const/4 v4, 0x1

    div-float v5, v6, v0

    mul-float/2addr v5, p2

    sub-float v5, v6, v5

    aput v5, v2, v4

    .line 398
    return-object v2

    .line 377
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 378
    move p1, v3

    goto :goto_0

    .line 381
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    .line 387
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 388
    move p2, v0

    goto :goto_1

    .line 391
    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .parameter "sat"
    .parameter "val"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 341
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 342
    .local v0, height:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 344
    .local v3, width:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 346
    .local v1, p:Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 347
    const/high16 v4, 0x3f80

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 349
    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f80

    .line 759
    iget-boolean v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    .line 778
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 763
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .line 764
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .line 765
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .line 766
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .line 768
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 770
    new-instance v5, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    .line 771
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaPattern:Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;

    .line 772
    iget-object v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 773
    iget-object v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 774
    iget-object v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 775
    iget-object v9, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 771
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/m0narx/tweaks/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 747
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 749
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .line 750
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .line 751
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    .line 752
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 754
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 755
    return-void

    .line 751
    .end local v0           #bottom:F
    .end local v3           #right:F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 731
    iget-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 732
    .local v1, dRect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x4000

    sub-float v3, v6, v7

    .line 734
    .local v3, panelSide:F
    iget-boolean v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    .line 735
    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 738
    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .line 739
    .local v2, left:F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .line 740
    .local v5, top:F
    add-float v0, v5, v3

    .line 741
    .local v0, bottom:F
    add-float v4, v2, v3

    .line 743
    .local v4, right:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 744
    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 811
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 630
    const/4 v3, 0x0

    .line 631
    .local v3, width:I
    const/4 v0, 0x0

    .line 633
    .local v0, height:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 634
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 636
    .local v2, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 637
    .local v4, widthAllowed:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 639
    .local v1, heightAllowed:I
    invoke-direct {p0, v5, v4}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->chooseWidth(II)I

    move-result v4

    .line 640
    invoke-direct {p0, v2, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->chooseHeight(II)I

    move-result v1

    .line 642
    iget-boolean v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_2

    .line 644
    int-to-float v6, v4

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 647
    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "landscape"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 648
    :cond_0
    move v0, v1

    .line 649
    int-to-float v6, v0

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 669
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 670
    return-void

    .line 652
    :cond_1
    move v3, v4

    goto :goto_0

    .line 657
    :cond_2
    int-to-float v6, v1

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 659
    if-le v3, v4, :cond_3

    .line 660
    move v3, v4

    .line 661
    int-to-float v6, v4

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 664
    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 718
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 719
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 720
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 721
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 722
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 724
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setUpSatValRect()V

    .line 725
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setUpHueRect()V

    .line 726
    invoke-direct {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setUpAlphaRect()V

    .line 727
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 572
    :goto_0
    if-eqz v0, :cond_1

    .line 574
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    aput v6, v4, v5

    iget v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    aput v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->invalidate()V

    .line 583
    :goto_1
    return v1

    .line 550
    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 552
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 554
    goto :goto_0

    .line 558
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 560
    goto :goto_0

    .line 564
    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 566
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 583
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x4248

    const/high16 v12, 0x4120

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 444
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 446
    .local v6, y:F
    const/4 v3, 0x0

    .line 449
    .local v3, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 451
    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v8, :pswitch_data_0

    .line 527
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 529
    iget-object v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v8, :cond_1

    .line 530
    iget-object v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v9, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    aput v12, v10, v11

    iget v11, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    aput v11, v10, v7

    const/4 v11, 0x2

    iget v12, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->invalidate()V

    .line 538
    :goto_1
    return v7

    .line 457
    :pswitch_0
    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    div-float v9, v5, v13

    add-float v2, v8, v9

    .line 458
    .local v2, sat:F
    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    div-float v9, v6, v13

    sub-float v4, v8, v9

    .line 460
    .local v4, val:F
    cmpg-float v8, v2, v10

    if-gez v8, :cond_4

    .line 461
    const/4 v2, 0x0

    .line 467
    :cond_2
    :goto_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_5

    .line 468
    const/4 v4, 0x0

    .line 474
    :cond_3
    :goto_3
    iput v2, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    .line 475
    iput v4, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    .line 477
    const/4 v3, 0x1

    .line 479
    goto :goto_0

    .line 463
    :cond_4
    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    .line 464
    const/high16 v2, 0x3f80

    goto :goto_2

    .line 470
    :cond_5
    cmpl-float v8, v4, v11

    if-lez v8, :cond_3

    .line 471
    const/high16 v4, 0x3f80

    goto :goto_3

    .line 483
    .end local v2           #sat:F
    .end local v4           #val:F
    :pswitch_1
    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    mul-float v9, v6, v12

    sub-float v1, v8, v9

    .line 485
    .local v1, hue:F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_7

    .line 486
    const/4 v1, 0x0

    .line 492
    :cond_6
    :goto_4
    iput v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    .line 494
    const/4 v3, 0x1

    .line 496
    goto :goto_0

    .line 488
    :cond_7
    const/high16 v8, 0x43b4

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    .line 489
    const/high16 v1, 0x43b4

    goto :goto_4

    .line 500
    .end local v1           #hue:F
    :pswitch_2
    iget-boolean v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v8, :cond_9

    .line 501
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 505
    :cond_9
    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    int-to-float v8, v8

    mul-float v9, v5, v12

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 507
    .local v0, alpha:I
    if-gez v0, :cond_b

    .line 508
    const/4 v0, 0x0

    .line 514
    :cond_a
    :goto_5
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    .line 517
    const/4 v3, 0x1

    goto :goto_0

    .line 510
    :cond_b
    const/16 v8, 0xff

    if-le v0, v8, :cond_a

    .line 511
    const/16 v0, 0xff

    goto :goto_5

    .line 538
    .end local v0           #alpha:I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 916
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 917
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->invalidate()V

    .line 918
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-boolean v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    .line 871
    iput-boolean p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 878
    iput-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 879
    iput-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 880
    iput-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 881
    iput-object v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 883
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->requestLayout()V

    .line 886
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 795
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mBorderColor:I

    .line 796
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->invalidate()V

    .line 797
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 820
    return-void
.end method

.method public setColor(IZ)V
    .locals 12
    .parameter "color"
    .parameter "callback"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 830
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 831
    .local v0, alpha:I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 832
    .local v4, red:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 833
    .local v1, blue:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 835
    .local v2, green:I
    new-array v3, v7, [F

    .line 837
    .local v3, hsv:[F
    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 839
    iput v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    .line 840
    aget v5, v3, v9

    iput v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    .line 841
    aget v5, v3, v10

    iput v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    .line 842
    aget v5, v3, v11

    iput v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    .line 844
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 845
    iget-object v5, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 848
    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->invalidate()V

    .line 849
    return-void
.end method

.method public setOnColorChangedListener(Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mListener:Lcom/m0narx/tweaks/colorpicker/ColorPickerView$OnColorChangedListener;

    .line 788
    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 889
    iput p1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 891
    iget-object v0, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 893
    invoke-virtual {p0}, Lcom/m0narx/tweaks/colorpicker/ColorPickerView;->invalidate()V

    .line 894
    return-void
.end method
