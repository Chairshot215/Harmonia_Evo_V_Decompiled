.class public Lcom/android/settings/BatteryBar;
.super Landroid/widget/ProgressBar;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BatteryBar$MyLayerDrawable;
    }
.end annotation


# static fields
.field public static BACKGROUND_COLOR_SET:[I = null

.field static final GRADIENT_COLOR_LEVEL:I = 0x3

.field public static HIGH_LEVEL_COLOR_SET:[I = null

.field public static LOW_LEVEL_COLOR_SET:[I = null

.field public static MID_LEVEL_COLOR_SET:[I = null

.field static final TAG:Ljava/lang/String; = "BatteryBar_LOG"

.field public static TICKER_LEFT_COLOR:I

.field public static TICKER_RIGHT_COLOR:I

.field private static mClipdrawable:Landroid/graphics/drawable/ClipDrawable;

.field private static mGradientBackground:Landroid/graphics/drawable/GradientDrawable;

.field private static mIsResourceOk:Z

.field private static mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private static mTileBitmapPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idTickerDrawable:I

.field private mUsedDrawType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 35
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/BatteryBar;->BACKGROUND_COLOR_SET:[I

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/BatteryBar;->LOW_LEVEL_COLOR_SET:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/BatteryBar;->MID_LEVEL_COLOR_SET:[I

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/BatteryBar;->HIGH_LEVEL_COLOR_SET:[I

    .line 39
    const v0, 0x26ffffff

    sput v0, Lcom/android/settings/BatteryBar;->TICKER_LEFT_COLOR:I

    .line 40
    const/high16 v0, 0x2600

    sput v0, Lcom/android/settings/BatteryBar;->TICKER_RIGHT_COLOR:I

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/BatteryBar;->mIsResourceOk:Z

    .line 48
    sput-object v1, Lcom/android/settings/BatteryBar;->mClipdrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 49
    sput-object v1, Lcom/android/settings/BatteryBar;->mGradientBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 50
    sput-object v1, Lcom/android/settings/BatteryBar;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/BatteryBar;->mTileBitmapPool:Ljava/util/Map;

    return-void

    .line 35
    nop

    :array_0
    .array-data 0x4
        0x64t 0x64t 0x64t 0xfft
        0x2ct 0x2ct 0x2ct 0xfft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x15t 0x2et 0xfet 0xfft
        0x0t 0x1bt 0xcbt 0xfft
        0x0t 0xft 0x6ft 0xfft
    .end array-data

    .line 37
    :array_2
    .array-data 0x4
        0x2bt 0xd8t 0xf8t 0xfft
        0x6t 0xb0t 0xe5t 0xfft
        0x0t 0x65t 0x79t 0xfft
    .end array-data

    .line 38
    :array_3
    .array-data 0x4
        0x0t 0xdbt 0x11t 0xfft
        0x0t 0x40t 0x2t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/BatteryBar;->mUsedDrawType:I

    .line 68
    const/4 v9, 0x0

    .line 69
    .local v9, progressDrawable:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/BatteryBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 71
    .local v8, originalDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v14, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    .line 72
    sget-boolean v14, Lcom/android/settings/BatteryBar;->mIsResourceOk:Z

    if-nez v14, :cond_2

    move-object v9, v8

    .line 73
    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    .line 75
    invoke-virtual {v9}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 76
    .local v2, drawableCount:I
    add-int/lit8 v2, v2, 0x1

    .line 77
    new-array v7, v2, [Landroid/graphics/drawable/Drawable;

    .line 78
    .local v7, newDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    add-int/lit8 v14, v2, -0x1

    if-ge v3, v14, :cond_0

    .line 79
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v7, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v13, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 83
    .local v13, tickerDrawable:Landroid/graphics/drawable/ShapeDrawable;
    add-int/lit8 v14, v2, -0x1

    aput-object v13, v7, v14

    .line 84
    new-instance v12, Lcom/android/settings/BatteryBar$MyLayerDrawable;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7}, Lcom/android/settings/BatteryBar$MyLayerDrawable;-><init>(Lcom/android/settings/BatteryBar;[Landroid/graphics/drawable/Drawable;)V

    .line 85
    .local v12, target:Lcom/android/settings/BatteryBar$MyLayerDrawable;
    move-object v6, v12

    .line 86
    .local v6, newBag:Landroid/graphics/drawable/LayerDrawable;
    sput-object v6, Lcom/android/settings/BatteryBar;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 88
    const/4 v4, 0x0

    .line 89
    .local v4, idTemp:I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/BatteryBar;->idTickerDrawable:I

    .line 90
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v14, v2, -0x1

    if-ge v3, v14, :cond_1

    .line 91
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 92
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/BatteryBar;->idTickerDrawable:I

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/BatteryBar;->idTickerDrawable:I

    .line 93
    invoke-virtual {v6, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_1
    add-int/lit8 v14, v2, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/BatteryBar;->idTickerDrawable:I

    invoke-virtual {v6, v14, v15}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 98
    const v14, 0x102000f

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/ScaleDrawable;

    .line 99
    .local v11, secondProgress:Landroid/graphics/drawable/ScaleDrawable;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/ScaleDrawable;->setAlpha(I)V

    .line 102
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v15, Lcom/android/settings/BatteryBar;->HIGH_LEVEL_COLOR_SET:[I

    invoke-direct {v5, v14, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 104
    .local v5, innerDrawable:Landroid/graphics/drawable/GradientDrawable;
    const/high16 v14, 0x3f00

    const/high16 v15, 0x3f40

    invoke-virtual {v5, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 105
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v12, v5, v14, v15}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->createClipDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v10

    .line 106
    .local v10, replaceDrawable:Landroid/graphics/drawable/ClipDrawable;
    sput-object v10, Lcom/android/settings/BatteryBar;->mClipdrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 108
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v15, Lcom/android/settings/BatteryBar;->BACKGROUND_COLOR_SET:[I

    invoke-direct {v1, v14, v15}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 109
    .local v1, backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;
    sput-object v1, Lcom/android/settings/BatteryBar;->mGradientBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 110
    const/high16 v14, 0x3f80

    invoke-virtual {v1, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 111
    const/high16 v14, 0x3f00

    const/high16 v15, 0x3f40

    invoke-virtual {v1, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 113
    .end local v1           #backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v2           #drawableCount:I
    .end local v3           #i:I
    .end local v4           #idTemp:I
    .end local v5           #innerDrawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v6           #newBag:Landroid/graphics/drawable/LayerDrawable;
    .end local v7           #newDrawables:[Landroid/graphics/drawable/Drawable;
    .end local v10           #replaceDrawable:Landroid/graphics/drawable/ClipDrawable;
    .end local v11           #secondProgress:Landroid/graphics/drawable/ScaleDrawable;
    .end local v12           #target:Lcom/android/settings/BatteryBar$MyLayerDrawable;
    .end local v13           #tickerDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_2
    sget-object v14, Lcom/android/settings/BatteryBar;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/settings/BatteryBar;->mClipdrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/settings/BatteryBar;->mGradientBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v14, :cond_3

    .line 114
    sget-object v14, Lcom/android/settings/BatteryBar;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v15, 0x102000d

    sget-object v16, Lcom/android/settings/BatteryBar;->mClipdrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 115
    sget-object v14, Lcom/android/settings/BatteryBar;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v15, 0x102

    sget-object v16, Lcom/android/settings/BatteryBar;->mGradientBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 116
    sget-object v14, Lcom/android/settings/BatteryBar;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/BatteryBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BatteryBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/BatteryBar;->mUsedDrawType:I

    return v0
.end method

.method private makeTiling(I)Landroid/graphics/Shader;
    .locals 8
    .parameter "width"

    .prologue
    const/4 v6, 0x0

    .line 173
    new-array v3, p1, [I

    .line 174
    .local v3, pixels:[I
    const/4 v5, 0x2

    if-le p1, v5, :cond_3

    .line 175
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    add-int/lit8 v5, p1, -0x2

    if-ge v2, v5, :cond_0

    .line 176
    aput v6, v3, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    add-int/lit8 v5, p1, -0x2

    sget v6, Lcom/android/settings/BatteryBar;->TICKER_LEFT_COLOR:I

    aput v6, v3, v5

    .line 178
    add-int/lit8 v5, p1, -0x1

    sget v6, Lcom/android/settings/BatteryBar;->TICKER_RIGHT_COLOR:I

    aput v6, v3, v5

    .line 186
    :goto_1
    sget-object v5, Lcom/android/settings/BatteryBar;->mTileBitmapPool:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    .local v4, poolbmp:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 188
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 189
    check-cast v1, Landroid/graphics/Bitmap;

    .line 190
    const/4 v4, 0x0

    .line 192
    .end local v4           #poolbmp:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_2

    .line 194
    const/4 v5, 0x1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-object v5, Lcom/android/settings/BatteryBar;->mTileBitmapPool:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-object v1, v0

    .line 200
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x0

    .line 201
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v5

    .line 181
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #i:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    add-int/lit8 v5, p1, -0x1

    if-ge v2, v5, :cond_4

    .line 182
    aput v6, v3, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 183
    :cond_4
    add-int/lit8 v5, p1, -0x1

    sget v6, Lcom/android/settings/BatteryBar;->TICKER_LEFT_COLOR:I

    aput v6, v3, v5

    goto :goto_1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 136
    monitor-enter p0

    const/4 v6, 0x0

    .line 137
    .local v6, progressDrawable:Landroid/graphics/drawable/LayerDrawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BatteryBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 138
    .local v4, originalDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v9, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_1

    .line 139
    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v0

    .line 141
    iget v9, p0, Lcom/android/settings/BatteryBar;->idTickerDrawable:I

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/ShapeDrawable;

    .line 142
    .local v8, tickerDrawable:Landroid/graphics/drawable/ShapeDrawable;
    if-eqz v8, :cond_0

    .line 143
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v9

    if-nez v9, :cond_0

    .line 144
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 145
    .local v3, fullWidth:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 150
    .local v2, distanceHeight:I
    rem-int/lit8 v9, v3, 0xa

    sub-int/2addr v3, v9

    .line 152
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 153
    .local v7, ticker:Landroid/graphics/Path;
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 154
    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    int-to-float v9, v3

    add-int/lit8 v10, v2, -0x1

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    int-to-float v9, v3

    const/high16 v10, 0x3f80

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 158
    new-instance v9, Landroid/graphics/drawable/shapes/PathShape;

    add-int/lit8 v10, v3, -0x2

    int-to-float v10, v10

    int-to-float v11, v2

    invoke-direct {v9, v7, v10, v11}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 159
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    add-int/lit8 v10, v3, 0x9

    div-int/lit8 v10, v10, 0xa

    invoke-direct {p0, v10}, Lcom/android/settings/BatteryBar;->makeTiling(I)Landroid/graphics/Shader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 163
    .end local v2           #distanceHeight:I
    .end local v3           #fullWidth:I
    .end local v7           #ticker:Landroid/graphics/Path;
    :cond_0
    const v9, 0x102000d

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 164
    .local v5, progress:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 165
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 166
    .local v1, area:Landroid/graphics/Rect;
    iget v9, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v10, v10, -0x1

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    .end local v1           #area:Landroid/graphics/Rect;
    .end local v5           #progress:Landroid/graphics/drawable/Drawable;
    .end local v8           #tickerDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 136
    .end local v4           #originalDrawable:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public setFixedDrawable(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 127
    if-gt v0, p1, :cond_0

    const/4 v1, 0x3

    if-ge v1, p1, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_1
    iput p1, p0, Lcom/android/settings/BatteryBar;->mUsedDrawType:I

    goto :goto_0
.end method
