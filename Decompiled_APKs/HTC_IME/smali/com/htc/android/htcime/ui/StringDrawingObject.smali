.class Lcom/htc/android/htcime/ui/StringDrawingObject;
.super Lcom/htc/android/htcime/ui/DrawingObject;
.source "SimpleWCL.java"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

#the value of this static final field might be set in the static constructor
.field private static final ELLIPSIS_LEN:I = 0x0

.field private static final LEADING_LEN:I = 0x3

.field private static final UNDERLINE_INDICATOR:Ljava/lang/String; = "<"


# instance fields
.field left_:I

.field left_start:F

.field strDraw:Ljava/lang/String;

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1382
    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/htc/android/htcime/ui/StringDrawingObject;->ELLIPSIS_LEN:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .parameter "paint"
    .parameter "cand"
    .parameter "candStr"

    .prologue
    const/4 v4, 0x0

    .line 1392
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/htcime/ui/DrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mCandidate:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    .line 1396
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_start:F

    .line 1401
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_start:F

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->width:F

    .line 1407
    return-void
.end method


# virtual methods
.method public dealOverSize(II)V
    .locals 11
    .parameter "positiveWidthDiff"
    .parameter "positiveHeightDiff"

    .prologue
    const/4 v10, 0x3

    .line 1411
    iget v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->width:F

    iget-object v8, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 1412
    .local v0, charLen:F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1414
    .local v4, subStrLeft:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    const-string v8, "..."

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1415
    .local v2, dotsWidth:F
    int-to-float v7, p1

    add-float v6, v7, v2

    .line 1418
    .local v6, targetEliminationWidth:F
    div-float v7, v6, v0

    float-to-int v3, v7

    .line 1420
    .local v3, roughCutNumber:I
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    if-le v3, v7, :cond_0

    .line 1421
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x3

    .line 1423
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, cutStr:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1

    .line 1426
    add-int/lit8 v3, v3, 0x1

    .line 1427
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1430
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1431
    .local v5, subStrRight:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    .line 1436
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    .line 1440
    iget-object v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->width:F

    .line 1442
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1446
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->xOffset:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 1447
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->yOffset:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 1458
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mCandidate:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1460
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1461
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->left_start:F

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1462
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1467
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->strDraw:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->width:F

    return v0
.end method

.method public setCandidateAreaHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 1476
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->candidateAreaHeight:I

    if-ne v0, p1, :cond_0

    .line 1479
    :goto_0
    return-void

    .line 1477
    :cond_0
    iput p1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->candidateAreaHeight:I

    .line 1478
    int-to-float v0, p1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->yOffset:I

    goto :goto_0
.end method

.method public setCandidateAreaWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 1483
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->candidateAreaWidth:I

    if-ne v0, p1, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1484
    :cond_0
    iput p1, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->candidateAreaWidth:I

    .line 1485
    iget v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->width:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/StringDrawingObject;->xOffset:I

    goto :goto_0
.end method
