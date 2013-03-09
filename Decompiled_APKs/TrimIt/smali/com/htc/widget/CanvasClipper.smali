.class public Lcom/htc/widget/CanvasClipper;
.super Ljava/lang/Object;
.source "CanvasClipper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanvasClipper"


# instance fields
.field private mAntialiasPaint:Landroid/graphics/Paint;

.field private mBottomRoundedEnabled:Z

.field private mCanvasSaveCount:I

.field private mCornerAntiAliased:Z

.field private mCornerPath:Landroid/graphics/Path;

.field private mCornerStrokeColor:I

.field private mCornerStrokeWidth:I

.field private mRadius:I

.field private mRoundedCornerEnabled:Z

.field private mTopRoundedEnabled:Z

.field private tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    .line 17
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    .line 18
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 19
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    .line 22
    const v0, 0x7fb3b3b3

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    .line 26
    return-void
.end method


# virtual methods
.method public antialiasCorners(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/htc/widget/CanvasClipper;->restoreCanvas(Landroid/graphics/Canvas;)V

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    if-nez v0, :cond_1

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    if-eq v0, v1, :cond_4

    .line 172
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public clipCanvas(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 9
    .parameter "canvas"
    .parameter "view"

    .prologue
    .line 119
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    .line 121
    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 123
    .local v1, cLeft:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v2, v4, v5

    .line 124
    .local v2, cRight:I
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 125
    .local v3, cTop:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v4, v5

    .line 127
    .local v0, cBottom:I
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    if-nez v4, :cond_0

    .line 128
    iget v4, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    sub-int/2addr v3, v4

    .line 131
    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    if-nez v4, :cond_1

    .line 132
    iget v4, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    add-int/2addr v0, v4

    .line 135
    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/widget/CanvasClipper;->tmpRectF:Landroid/graphics/RectF;

    .line 136
    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/htc/widget/CanvasClipper;->tmpRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 138
    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 140
    .end local v0           #cBottom:I
    .end local v1           #cLeft:I
    .end local v2           #cRight:I
    .end local v3           #cTop:I
    :cond_2
    return-void
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    return v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    return v0
.end method

.method public restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, -0x1

    .line 146
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    if-ne v0, v1, :cond_0

    .line 147
    const-string v0, "CanvasClipper"

    const-string v1, "Cannot restore canvas, lose count!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 151
    iput v1, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    goto :goto_0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    .line 116
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 76
    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    .line 77
    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 105
    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    .line 106
    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    .line 92
    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 2
    .parameter "roundCorner"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    goto :goto_0
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 1
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    .line 50
    iput-boolean p2, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    .line 51
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    goto :goto_0
.end method
