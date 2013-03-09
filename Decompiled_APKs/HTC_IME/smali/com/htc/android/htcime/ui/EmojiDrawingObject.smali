.class Lcom/htc/android/htcime/ui/EmojiDrawingObject;
.super Lcom/htc/android/htcime/ui/DrawingObject;
.source "SimpleWCL.java"


# instance fields
.field drawHeight:F

.field drawWidth:F

.field emojiDraw:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "paint"
    .parameter "cand"
    .parameter "candStr"

    .prologue
    .line 1331
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/htcime/ui/DrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    iput-object p2, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->emojiDraw:Landroid/graphics/drawable/Drawable;

    .line 1335
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawHeight:F

    .line 1336
    iget v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawHeight:F

    iget-object v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->emojiDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->emojiDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawWidth:F

    .line 1337
    return-void
.end method


# virtual methods
.method public dealOverSize(II)V
    .locals 0
    .parameter "positiveWidthDiff"
    .parameter "positiveHeightDiff"

    .prologue
    .line 1343
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 5
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1349
    iget v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->xOffset:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 1350
    iget v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->yOffset:I

    int-to-float v1, v1

    add-float/2addr p3, v1

    .line 1352
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    iget v3, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawWidth:F

    add-float/2addr v3, p2

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawHeight:F

    add-float/2addr v4, p3

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1353
    .local v0, bound:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1355
    iget-object v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->emojiDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1356
    iget-object v1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->emojiDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1357
    return-void
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 1361
    iget v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawWidth:F

    return v0
.end method

.method public setCandidateAreaHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 1366
    iget v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->candidateAreaHeight:I

    if-ne p1, v0, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1367
    :cond_0
    iput p1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->candidateAreaHeight:I

    .line 1368
    iget v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawHeight:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->yOffset:I

    goto :goto_0
.end method

.method public setCandidateAreaWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 1373
    iget v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->candidateAreaWidth:I

    if-ne v0, p1, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1374
    :cond_0
    iput p1, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->candidateAreaWidth:I

    .line 1375
    iget v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->drawWidth:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/EmojiDrawingObject;->xOffset:I

    goto :goto_0
.end method
