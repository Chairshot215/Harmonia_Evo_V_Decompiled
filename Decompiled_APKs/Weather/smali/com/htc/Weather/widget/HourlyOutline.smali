.class public Lcom/htc/Weather/widget/HourlyOutline;
.super Landroid/view/View;
.source "HourlyOutline.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private display:Landroid/view/Display;

.field private enableDraw:Z

.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private manager:Landroid/view/WindowManager;

.field private pointXY:[F

.field private sizeCol:I

.field private sizeRow:I

.field private widthCol:I

.field private widthRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "HourlyTable"

    sput-object v0, Lcom/htc/Weather/widget/HourlyOutline;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->enableDraw:Z

    .line 34
    iput-object p1, p0, Lcom/htc/Weather/widget/HourlyOutline;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyOutline;->inti()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->enableDraw:Z

    .line 41
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyOutline;->inti()V

    .line 42
    return-void
.end method

.method private inti()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthCol:I

    .line 47
    const/16 v0, 0x13

    iput v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeCol:I

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mColors:[I

    .line 50
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mColors:[I

    const v1, -0x777778

    aput v1, v0, v2

    .line 51
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mColors:[I

    const/high16 v1, -0x100

    aput v1, v0, v3

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyOutline;->mColors:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    .line 58
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->manager:Landroid/view/WindowManager;

    .line 59
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->manager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    .line 61
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-boolean v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->enableDraw:Z

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthRow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", widthCol :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthCol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeRow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sizeCol :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeCol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 81
    .local v11, mRes:Landroid/content/res/Resources;
    const v0, 0x7f080088

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 82
    .local v7, hourly_left_margin:I
    const v0, 0x7f080087

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 83
    .local v10, hourly_top_margin:I
    const v0, 0x7f080089

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 84
    .local v8, hourly_right_margin:I
    const v0, 0x7f080084

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 85
    .local v6, hourly_detail_height:I
    const v0, 0x7f080095

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 88
    .local v9, hourly_tmp_img_width:I
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    int-to-float v2, v7

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    int-to-float v2, v10

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    int-to-float v2, v10

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    int-to-float v2, v7

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    add-int/lit8 v2, v10, -0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    int-to-float v2, v7

    aput v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    add-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v1

    .line 99
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XY:53"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    add-int v2, v7, v9

    int-to-float v2, v2

    aput v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    add-int/lit8 v2, v10, -0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    add-int v2, v7, v9

    int-to-float v2, v2

    aput v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    int-to-float v2, v2

    aput v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    int-to-float v2, v7

    aput v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    int-to-float v2, v2

    aput v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    int-to-float v2, v2

    aput v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    int-to-float v2, v7

    aput v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    const v3, 0x7f080086

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    aput v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    const v3, 0x7f080086

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    int-to-float v2, v7

    aput v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    add-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    add-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x1

    int-to-float v2, v10

    aput v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v10

    add-int/2addr v2, v6

    int-to-float v2, v2

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyOutline;->pointXY:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyOutline;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .parameter "initialize"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/Weather/widget/HourlyOutline;->enableDraw:Z

    .line 64
    return-void
.end method

.method public setTableParameter(IIII)V
    .locals 0
    .parameter "widthR"
    .parameter "widthC"
    .parameter "sizeR"
    .parameter "sizeC"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthRow:I

    .line 67
    iput p2, p0, Lcom/htc/Weather/widget/HourlyOutline;->widthCol:I

    .line 68
    iput p3, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeRow:I

    .line 69
    iput p4, p0, Lcom/htc/Weather/widget/HourlyOutline;->sizeCol:I

    .line 70
    return-void
.end method
