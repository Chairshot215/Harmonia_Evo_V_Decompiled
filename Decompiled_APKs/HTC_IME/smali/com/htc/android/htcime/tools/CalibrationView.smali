.class public Lcom/htc/android/htcime/tools/CalibrationView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "CalibrationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/tools/CalibrationView$LineFit;,
        Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DECAY:F = 0.9f

.field private static final LOG_TAG:Ljava/lang/String; = "CalibrationView"


# instance fields
.field private final KEYBOARD_L_BIAS:[Ljava/lang/String;

.field private final KEYBOARD_L_BIAS_DEF:[F

.field private final KEYBOARD_P_BIAS:[Ljava/lang/String;

.field private final KEYBOARD_P_BIAS_DEF:[F

.field private mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

.field private mContext:Lcom/htc/android/htcime/tools/Calibration;

.field private mCorrectedTouches:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/htcime/tools/CalibrationView$Touch;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilename:Ljava/lang/String;

.field private mHelperAlphaBeta:[F

.field private mOffsetX:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

.field private mOffsetY:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

.field mPangram:Ljava/lang/String;

.field private mPrevDownX:F

.field mRadius:I

.field protected mSettings:[Ljava/lang/String;

.field protected mSettingsDef:[F

.field mShowHint:Z

.field mSpaceHeight:I

.field mSpaceWidth:I

.field mText:Landroid/widget/TextView;

.field private mTotalCount:I

.field mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

.field private mTouches:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/htcime/tools/CalibrationView$Touch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f666666

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x4

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, "port_bias_x_alpha"

    aput-object v4, v1, v8

    const-string v4, "port_bias_x_beta"

    aput-object v4, v1, v2

    const-string v4, "port_bias_y_alpha"

    aput-object v4, v1, v3

    const/4 v4, 0x3

    const-string v5, "port_bias_y_beta"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_P_BIAS:[Ljava/lang/String;

    .line 33
    new-array v1, v6, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_P_BIAS_DEF:[F

    .line 34
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, "land_bias_y_alpha"

    aput-object v4, v1, v8

    const-string v4, "land_bias_x_beta"

    aput-object v4, v1, v2

    const-string v4, "land_bias_y_alpha"

    aput-object v4, v1, v3

    const/4 v4, 0x3

    const-string v5, "land_bias_y_beta"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_L_BIAS:[Ljava/lang/String;

    .line 35
    new-array v1, v6, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_L_BIAS_DEF:[F

    .line 45
    iput-boolean v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mShowHint:Z

    .line 56
    new-instance v1, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    invoke-direct {v1, p0, v7}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;-><init>(Lcom/htc/android/htcime/tools/CalibrationView;F)V

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetX:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    .line 57
    new-instance v1, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    invoke-direct {v1, p0, v7}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;-><init>(Lcom/htc/android/htcime/tools/CalibrationView;F)V

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetY:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    .line 58
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    .line 60
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    .line 61
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    .line 282
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mPrevDownX:F

    .line 67
    check-cast p1, Lcom/htc/android/htcime/tools/Calibration;

    .end local p1
    iput-object p1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    .line 68
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tools/Calibration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/tools/Calibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f03005b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    .line 71
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1, p0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->init(Landroid/view/View;)V

    .line 73
    new-instance v1, Lcom/htc/android/htcime/HTCIMMData;

    invoke-direct {v1}, Lcom/htc/android/htcime/HTCIMMData;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 74
    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget v1, v1, Lcom/htc/android/htcime/tools/Calibration;->mXmlId:I

    const v5, 0x7f05004a

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    .line 81
    new-instance v1, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget v3, v3, Lcom/htc/android/htcime/tools/Calibration;->mXmlId:I

    invoke-direct {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tools/CalibrationView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 83
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/CalibrationView;->initSettings()V

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    iput v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSpaceWidth:I

    .line 86
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    iput v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSpaceHeight:I

    .line 87
    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mRadius:I

    .line 88
    return-void

    :cond_0
    move v1, v3

    .line 74
    goto :goto_0

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0xc0t
        0x8ft 0xc2t 0x75t 0x3ft
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private changeActive()V
    .locals 9

    .prologue
    .line 137
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouches:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    .line 139
    .local v1, count:I
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v5, v1}, Lcom/htc/android/htcime/tools/Calibration;->moveCursor(I)V

    .line 140
    iget v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    if-ge v1, v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mPangram:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    .local v0, ch:C
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v5, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 144
    .local v2, curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    new-instance v5, Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-object v6, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v5, p0, v0, v6, v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;-><init>(Lcom/htc/android/htcime/tools/CalibrationView;CFF)V

    iput-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    .line 147
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 149
    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 150
    .local v4, line:I
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 152
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->scrollTo(II)V

    .line 156
    .end local v0           #ch:C
    .end local v2           #curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v3           #layout:Landroid/text/Layout;
    .end local v4           #line:I
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v5}, Lcom/htc/android/htcime/tools/Calibration;->completed()V

    goto :goto_0
.end method

.method private correction(Lcom/htc/android/htcime/tools/CalibrationView$LineFit;F)F
    .locals 1
    .parameter "line"
    .parameter "x"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    invoke-virtual {p1, v0}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->getAlphaBeta([F)V

    .line 343
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    invoke-direct {p0, v0, p2}, Lcom/htc/android/htcime/tools/CalibrationView;->correction([FF)F

    move-result v0

    return v0
.end method

.method private correction([FF)F
    .locals 2
    .parameter "alphaBeta"
    .parameter "x"

    .prologue
    .line 347
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private initSettings()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/CalibrationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_L_BIAS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_L_BIAS:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 102
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_L_BIAS_DEF:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_P_BIAS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_P_BIAS:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 108
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->KEYBOARD_P_BIAS_DEF:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/16 v7, 0x20

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 121
    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-boolean v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "EN"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/CalibrationView;->onBufferDraw(Ljava/lang/String;)V

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    iget-boolean v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mShowHint:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouches:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    if-ge v4, v5, :cond_3

    .line 126
    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v4, v4, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    if-ne v4, v7, :cond_4

    iget v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSpaceWidth:I

    .line 127
    .local v2, width:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v4, v4, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    if-ne v4, v7, :cond_5

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSpaceHeight:I

    .line 128
    .local v1, height:I
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v4, v4, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 130
    .local v0, curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->dismiss()V

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 132
    iget-object v3, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    .line 134
    .end local v0           #curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 126
    goto :goto_0

    .restart local v2       #width:I
    :cond_5
    move v1, v3

    .line 127
    goto :goto_1
.end method

.method protected getKeyIndicesClosest(II[I)I
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 425
    const/4 v0, -0x1

    .line 426
    .local v0, closestKey:I
    sget v7, Lcom/htc/android/htcime/tools/CalibrationView;->sNEAR_THRESHOLD:I

    add-int/lit8 v1, v7, 0x1

    .line 427
    .local v1, closestKeyDist:I
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v7

    .line 429
    .local v5, keyCount:I
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v6

    .line 430
    .local v6, total_height:I
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v7, Lcom/htc/android/htcime/ezsip/Keyboard;->sBottomGap:I

    sub-int v7, v6, v7

    if-le p2, v7, :cond_1

    .line 431
    const/4 v3, -0x1

    .line 480
    :cond_0
    :goto_0
    return v3

    .line 433
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_7

    .line 434
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v7, v3

    .line 435
    .local v4, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 436
    iget-boolean v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-eqz v7, :cond_6

    .line 438
    iget-object v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x13

    if-eq v7, v8, :cond_2

    iget-object v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x14

    if-ne v7, v8, :cond_0

    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 442
    iget v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->action:I

    if-nez v7, :cond_3

    .line 443
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v8, 0xff

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v8, v8, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/CalibrationView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v9, v9, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 445
    iget v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->dpadkeyDecreaseHeight:I

    .line 450
    :cond_3
    :goto_2
    iget v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->dpadkeyDecreaseHeight:I

    add-int/2addr v7, v8

    if-ge p2, v7, :cond_0

    .line 451
    const/4 v3, 0x0

    .line 452
    iget v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->dpadkeyDecreaseHeight:I

    sub-int/2addr p2, v7

    .line 433
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 447
    :cond_5
    const/16 v7, 0xa

    iput v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->dpadkeyDecreaseHeight:I

    goto :goto_2

    .line 460
    :cond_6
    const/4 v3, -0x1

    goto :goto_0

    .line 465
    .end local v4           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_9

    .line 466
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v7, v3

    .line 467
    .restart local v4       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v2, 0x0

    .line 469
    .local v2, dist:I
    iget-boolean v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-eqz v7, :cond_8

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v2

    sget v7, Lcom/htc/android/htcime/tools/CalibrationView;->sNEAR_THRESHOLD:I

    if-ge v2, v7, :cond_8

    .line 470
    if-ge v2, v1, :cond_8

    .line 471
    move v1, v2

    .line 472
    move v0, v3

    .line 465
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 477
    .end local v2           #dist:I
    .end local v4           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_9
    const/4 v7, -0x1

    if-eq v0, v7, :cond_a

    move v3, v0

    .line 478
    goto/16 :goto_0

    .line 480
    :cond_a
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mPangram:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mPangram:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    .line 93
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouches:Ljava/util/Vector;

    .line 94
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mCorrectedTouches:Ljava/util/Vector;

    .line 95
    return-void
.end method

.method protected isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 487
    iget-object v0, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method protected makeSimulationFile()V
    .locals 23

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 213
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 214
    .local v16, m:Landroid/os/Message;
    const/16 v3, 0xb

    move-object/from16 v0, v16

    iput v3, v0, Landroid/os/Message;->what:I

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, v3, Lcom/htc/android/htcime/tools/Calibration;->runSimulateHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, v3, Lcom/htc/android/htcime/tools/Calibration;->runSimulateHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    :goto_0
    return-void

    .line 220
    .end local v16           #m:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v22, v0

    .line 221
    .local v22, xy:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/tools/CalibrationView;->getLocationOnScreen([I)V

    .line 223
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v21, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    aget v3, v22, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, 0x71

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int v20, v3, v6

    .line 226
    .local v20, safeTopY:I
    const/4 v3, 0x1

    aget v3, v22, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int v17, v3, v6

    .line 227
    .local v17, safeBottomY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, 0x71

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget v0, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v18, v0

    .line 228
    .local v18, safeLeftX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, 0x70

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, 0x70

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int v19, v3, v6

    .line 229
    .local v19, safeRightX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, 0x6d

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, 0x6d

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int v8, v3, v6

    .line 230
    .local v8, backspaceX:I
    const/4 v3, 0x1

    aget v3, v22, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, 0x6d

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int v9, v3, v6

    .line 232
    .local v9, backspaceY:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeTopY,safeBottomY,safeLeftX,safeRightX,backspaceX,backspaceY\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\nType,\tKeyVal,\tTouchX,\tTouchY,\tTimestamp\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v3, "CalibrationView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[makeSimulationFile] >> bounds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, v3, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 246
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 248
    :cond_1
    new-instance v14, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v14, v13, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 250
    .local v14, fw:Ljava/io/FileWriter;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    if-ge v15, v3, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mPangram:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 252
    .local v10, ch:C
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3, v10}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v11

    .line 253
    .local v11, curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v3, v11, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v4, v3

    .line 254
    .local v4, x:F
    iget-object v3, v11, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v5, v3

    .line 256
    .local v5, y:F
    new-instance v2, Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v4, v5}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;-><init>(Lcom/htc/android/htcime/tools/CalibrationView;CFF)V

    .line 257
    .local v2, t:Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFFJ)V

    .line 258
    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFFJ)V

    .line 259
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFFJ)V

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget v7, v22, v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->toString(FF)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, v3, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v15}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 263
    const-string v3, "CalibrationView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[makeSimulationFile] >> x= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ch=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    rem-int/lit16 v3, v15, 0x3e8

    if-nez v3, :cond_2

    .line 266
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 267
    const/4 v3, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 270
    .end local v2           #t:Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v10           #ch:C
    .end local v11           #curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v13           #file:Ljava/io/File;
    .end local v14           #fw:Ljava/io/FileWriter;
    .end local v15           #i:I
    :goto_2
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 277
    .restart local v16       #m:Landroid/os/Message;
    const/16 v3, 0xb

    move-object/from16 v0, v16

    iput v3, v0, Landroid/os/Message;->what:I

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, v3, Lcom/htc/android/htcime/tools/Calibration;->runSimulateHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    iget-object v3, v3, Lcom/htc/android/htcime/tools/Calibration;->runSimulateHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 272
    .end local v16           #m:Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 273
    .local v12, e:Ljava/lang/Exception;
    const-string v3, "CalibrationView"

    const-string v6, "Failed to save calibration data file into SD card."

    invoke-static {v3, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onSizeChanged(IIII)V

    .line 116
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/CalibrationView;->changeActive()V

    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/16 v13, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 285
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouches:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    iget v11, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTotalCount:I

    if-lt v8, v11, :cond_0

    move v8, v9

    .line 338
    :goto_0
    return v8

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 288
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 289
    .local v6, touchX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 292
    .local v7, touchY:F
    if-nez v0, :cond_1

    iput v6, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mPrevDownX:F

    .line 293
    :cond_1
    if-ne v0, v10, :cond_2

    iget v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mPrevDownX:F

    sub-float v8, v6, v8

    const/high16 v11, 0x42c8

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v8, v10}, Lcom/htc/android/htcime/tools/Calibration;->showHiddenMenu(Z)V

    .line 295
    :cond_2
    const-string v8, "CalibrationView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", targetX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget v12, v12, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->x:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", targetY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget v12, v12, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->y:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mRadius:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mRadius:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v11, v11, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    invoke-virtual {v8, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 299
    .local v2, curKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v8, v8, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    if-ne v8, v13, :cond_4

    .line 300
    float-to-int v8, v6

    float-to-int v11, v7

    const/4 v12, 0x0

    invoke-virtual {p0, v8, v11, v12}, Lcom/htc/android/htcime/tools/CalibrationView;->getKeyIndicesClosest(II[I)I

    move-result v5

    .line 301
    .local v5, keyIndex:I
    if-ltz v5, :cond_3

    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v8}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_3

    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v8}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v8, v8, v9

    if-eq v8, v13, :cond_5

    :cond_3
    move v8, v9

    goto/16 :goto_0

    .line 304
    .end local v5           #keyIndex:I
    :cond_4
    iget-object v8, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    iget-object v11, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    mul-float/2addr v8, v11

    iget-object v11, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v7

    iget-object v12, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v7

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    iget v11, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mRadius:I

    iget v12, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mRadius:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-lez v8, :cond_5

    move v8, v9

    .line 306
    goto/16 :goto_0

    .line 309
    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    move v8, v10

    .line 338
    goto/16 :goto_0

    .line 311
    :pswitch_0
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    invoke-virtual {v8, v0, v6, v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFF)V

    .line 313
    new-instance v1, Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v8, v8, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    iget-object v11, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget v11, v11, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->x:F

    iget-object v12, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget v12, v12, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->y:F

    invoke-direct {v1, p0, v8, v11, v12}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;-><init>(Lcom/htc/android/htcime/tools/CalibrationView;CFF)V

    .line 314
    .local v1, corrected:Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetX:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    invoke-direct {p0, v8, v6}, Lcom/htc/android/htcime/tools/CalibrationView;->correction(Lcom/htc/android/htcime/tools/CalibrationView$LineFit;F)F

    move-result v3

    .line 315
    .local v3, cx:F
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetY:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    invoke-direct {p0, v8, v7}, Lcom/htc/android/htcime/tools/CalibrationView;->correction(Lcom/htc/android/htcime/tools/CalibrationView$LineFit;F)F

    move-result v4

    .line 316
    .local v4, cy:F
    invoke-virtual {v1, v9, v3, v4}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFF)V

    .line 317
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mCorrectedTouches:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget-char v8, v8, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    if-eq v8, v13, :cond_6

    .line 321
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetX:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    iget-object v9, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget v9, v9, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->x:F

    invoke-virtual {v8, v6, v9}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->addPoint(FF)V

    .line 322
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetY:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    iget-object v9, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    iget v9, v9, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->y:F

    invoke-virtual {v8, v7, v9}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->addPoint(FF)V

    goto :goto_1

    .line 327
    .end local v1           #corrected:Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    .end local v3           #cx:F
    .end local v4           #cy:F
    :pswitch_1
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    invoke-virtual {v8, v0, v6, v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFF)V

    goto :goto_1

    .line 331
    :pswitch_2
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    invoke-virtual {v8, v0, v6, v7}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->touched(IFF)V

    .line 332
    iget-object v8, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouches:Ljava/util/Vector;

    iget-object v9, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mActive:Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/CalibrationView;->changeActive()V

    .line 335
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/CalibrationView;->invalidate()V

    goto :goto_1

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected resetBiasValue()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tools/Calibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 180
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v2, v2, v4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 181
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v2, v2, v5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 182
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v2, v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 183
    return-void
.end method

.method protected saveBiasValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mContext:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tools/Calibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetX:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->getAlphaBeta([F)V

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 169
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    aget v2, v2, v4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 171
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mOffsetY:Lcom/htc/android/htcime/tools/CalibrationView$LineFit;

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/tools/CalibrationView$LineFit;->getAlphaBeta([F)V

    .line 172
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 173
    iget-object v1, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mHelperAlphaBeta:[F

    aget v2, v2, v4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 174
    return-void
.end method

.method protected saveToFile()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 186
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 209
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 189
    .local v6, xy:[I
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/tools/CalibrationView;->getLocationOnScreen([I)V

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "safeTopY,safeBottomY,safeLeftX,safeRightX,backspaceX,backspaceY\nheight-sipHeight,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v6, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nType,\tKeyVal,\tTouchX,\tTouchY,\tTimestamp\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v7, "CalibrationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[saveToFile] >> bounds= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouches:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/tools/CalibrationView$Touch;

    .local v5, t:Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget v9, v6, v10

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->toString(FF)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    .end local v5           #t:Lcom/htc/android/htcime/tools/CalibrationView$Touch;
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 203
    :cond_2
    new-instance v2, Ljava/io/FileWriter;

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 204
    .local v2, fw:Ljava/io/FileWriter;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 206
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CalibrationView"

    const-string v8, "Failed to save calibration data file into SD card."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
