.class public Lcom/htc/Weather/widget/HourlyCurve;
.super Landroid/view/View;
.source "HourlyCurve.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private enableDraw:Z

.field private mBgPath:Landroid/graphics/Path;

.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private mEffects:[Landroid/graphics/PathEffect;

.field private mLiPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mShader:Landroid/graphics/Shader;

.field private sizeCol:I

.field private sizeRow:I

.field private test:[I

.field private vHourlyTemperature:[I

.field private widthCol:I

.field private widthRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "HourlyCurve"

    sput-object v0, Lcom/htc/Weather/widget/HourlyCurve;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->enableDraw:Z

    .line 37
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->test:[I

    .line 46
    iput-object p1, p0, Lcom/htc/Weather/widget/HourlyCurve;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/htc/Weather/widget/HourlyCurve;->init()V

    .line 48
    return-void

    .line 37
    nop

    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->enableDraw:Z

    .line 37
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->test:[I

    .line 52
    iput-object p1, p0, Lcom/htc/Weather/widget/HourlyCurve;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/htc/Weather/widget/HourlyCurve;->init()V

    .line 55
    return-void

    .line 37
    nop

    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private makeFollowLine([I)Landroid/graphics/Path;
    .locals 7
    .parameter "valueY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 163
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 164
    .local v2, p:Landroid/graphics/Path;
    aget v3, p1, v6

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    array-length v0, p1

    .line 167
    .local v0, hours:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 168
    iget v3, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    aget v4, p1, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    add-int/lit8 v4, v0, -0x1

    aget v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    aget v3, p1, v6

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 174
    return-object v2
.end method

.method private makeFollowPath([I)Landroid/graphics/Path;
    .locals 7
    .parameter "valueY"

    .prologue
    const/4 v6, 0x0

    .line 147
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 148
    .local v2, p:Landroid/graphics/Path;
    const/4 v3, 0x0

    aget v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    array-length v0, p1

    .line 151
    .local v0, hours:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 152
    iget v3, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    aget v4, p1, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    iget v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    iget v3, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    iget v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 158
    return-object v2
.end method


# virtual methods
.method public init()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x7d

    const/4 v1, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 66
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    .line 67
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    .line 68
    const/16 v0, 0x13

    iput v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeCol:I

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PathEffect;

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->mEffects:[Landroid/graphics/PathEffect;

    .line 72
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->mEffects:[Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x4120

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    aput-object v2, v0, v6

    .line 73
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->mEffects:[Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x40a0

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    aput-object v2, v0, v4

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-static {v7, v7, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v6

    const/16 v2, 0xe6

    invoke-static {v7, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v4

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->mColors:[I

    .line 77
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/16 v3, 0x32

    const/16 v4, 0xc8

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v3, 0x96

    const/16 v4, 0x5a

    invoke-static {v7, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->mShader:Landroid/graphics/Shader;

    .line 80
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget-boolean v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->enableDraw:Z

    if-nez v4, :cond_0

    .line 143
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v4, Lcom/htc/Weather/widget/HourlyCurve;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widthRow :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", widthCol :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v4, Lcom/htc/Weather/widget/HourlyCurve;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sizeRow :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sizeCol :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeCol:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mEffects:[Landroid/graphics/PathEffect;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 109
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mColors:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->vHourlyTemperature:[I

    invoke-direct {p0, v4}, Lcom/htc/Weather/widget/HourlyCurve;->makeFollowPath([I)Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mBgPath:Landroid/graphics/Path;

    .line 111
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mBgPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->vHourlyTemperature:[I

    invoke-direct {p0, v4}, Lcom/htc/Weather/widget/HourlyCurve;->makeFollowLine([I)Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mLiPath:Landroid/graphics/Path;

    .line 119
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mEffects:[Landroid/graphics/PathEffect;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 120
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mColors:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mLiPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->vHourlyTemperature:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 128
    .local v1, length:I
    mul-int/lit8 v4, v1, 0x2

    new-array v2, v4, [F

    .line 129
    .local v2, mPts:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_1

    .line 130
    mul-int/lit8 v3, v0, 0x2

    .line 131
    .local v3, tmp:I
    iget v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    aput v4, v2, v3

    .line 132
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->vHourlyTemperature:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    aput v5, v2, v4

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v3           #tmp:I
    :cond_1
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mColors:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 139
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyCurve;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .parameter "initialize"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/Weather/widget/HourlyCurve;->enableDraw:Z

    .line 84
    return-void
.end method

.method public setHourlyTemperature([I)V
    .locals 4
    .parameter "temp"

    .prologue
    .line 58
    array-length v1, p1

    .line 59
    .local v1, length:I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/htc/Weather/widget/HourlyCurve;->vHourlyTemperature:[I

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyCurve;->vHourlyTemperature:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public setTableParameter(IIII)V
    .locals 8
    .parameter "widthR"
    .parameter "widthC"
    .parameter "sizeR"
    .parameter "sizeC"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 86
    iput p1, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    .line 87
    iput p2, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthCol:I

    .line 88
    iput p3, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    .line 89
    iput p4, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeCol:I

    .line 91
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/htc/Weather/widget/HourlyCurve;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyCurve;->sizeRow:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/16 v3, 0x32

    const/16 v4, 0xc8

    const/16 v5, 0x7d

    invoke-static {v3, v4, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v3, 0xff

    const/16 v4, 0x96

    const/16 v6, 0x5a

    invoke-static {v3, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyCurve;->mShader:Landroid/graphics/Shader;

    .line 93
    return-void
.end method
