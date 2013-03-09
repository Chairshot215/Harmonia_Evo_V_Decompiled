.class public Lcom/htc/Weather/widget/HourlyTable;
.super Landroid/view/View;
.source "HourlyTable.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private enableDraw:Z

.field private mColors:[I

.field private mPaint:Landroid/graphics/Paint;

.field private pointXY:[F

.field private sizeCol:I

.field private sizeRow:I

.field private widthCol:I

.field private widthRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "HourlyTable"

    sput-object v0, Lcom/htc/Weather/widget/HourlyTable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/HourlyTable;->enableDraw:Z

    .line 27
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyTable;->inti()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/HourlyTable;->enableDraw:Z

    .line 33
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyTable;->inti()V

    .line 34
    return-void
.end method

.method private inti()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    .line 38
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    .line 39
    const/16 v0, 0x13

    iput v0, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeRow:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeCol:I

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mColors:[I

    .line 42
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mColors:[I

    const v1, -0x777778

    aput v1, v0, v2

    .line 43
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mColors:[I

    const/high16 v1, -0x100

    aput v1, v0, v3

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyTable;->mColors:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-boolean v0, p0, Lcom/htc/Weather/widget/HourlyTable;->enableDraw:Z

    if-nez v0, :cond_1

    .line 99
    :cond_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/htc/Weather/widget/HourlyTable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthRow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", widthCol :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/htc/Weather/widget/HourlyTable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeRow :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeRow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sizeCol :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeCol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v0, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeRow:I

    if-gt v6, v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aput v11, v0, v7

    .line 70
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    mul-int/2addr v1, v6

    int-to-float v1, v1

    aput v1, v0, v8

    .line 71
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeCol:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    aput v1, v0, v9

    .line 72
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    mul-int/2addr v1, v6

    int-to-float v1, v1

    aput v1, v0, v10

    .line 73
    if-nez v6, :cond_2

    .line 74
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aput v11, v0, v7

    .line 75
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    aput v1, v0, v8

    .line 76
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeCol:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    aput v1, v0, v9

    .line 77
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    aput v1, v0, v10

    .line 78
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_2
    iget v0, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeRow:I

    if-ne v6, v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v1, v0, v7

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v2, v0, v8

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v3, v0, v9

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v4, v0, v10

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 87
    :cond_4
    const/4 v6, 0x0

    :goto_2
    iget v0, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeCol:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    add-int/lit8 v2, v6, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    aput v1, v0, v7

    .line 89
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aput v11, v0, v8

    .line 90
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    add-int/lit8 v2, v6, 0x1

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    aput v1, v0, v9

    .line 91
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    iget v1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    iget v2, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeRow:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v10

    .line 93
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v1, v0, v7

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v2, v0, v8

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v3, v0, v9

    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyTable;->pointXY:[F

    aget v4, v0, v10

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyTable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .parameter "initialize"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/Weather/widget/HourlyTable;->enableDraw:Z

    .line 53
    return-void
.end method

.method public setTableParameter(IIII)V
    .locals 0
    .parameter "widthR"
    .parameter "widthC"
    .parameter "sizeR"
    .parameter "sizeC"

    .prologue
    .line 55
    iput p1, p0, Lcom/htc/Weather/widget/HourlyTable;->widthRow:I

    .line 56
    iput p2, p0, Lcom/htc/Weather/widget/HourlyTable;->widthCol:I

    .line 57
    iput p3, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeRow:I

    .line 58
    iput p4, p0, Lcom/htc/Weather/widget/HourlyTable;->sizeCol:I

    .line 59
    return-void
.end method
