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

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    const v0, 0x7fb3b3b3

    iput v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    return-void
.end method


# virtual methods
.method public antialiasCorners(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/widget/CanvasClipper;->restoreCanvas(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/widget/CanvasClipper;->mAntialiasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public clipCanvas(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 9

    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v2, v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v4, v5

    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    sub-int/2addr v3, v4

    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    add-int/2addr v0, v4

    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/widget/CanvasClipper;->tmpRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/htc/widget/CanvasClipper;->tmpRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/htc/widget/CanvasClipper;->mCornerPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_2
    return-void
.end method

.method public getCornerRadius()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    return v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    return v0
.end method

.method public restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    if-ne v0, v1, :cond_0

    const-string v0, "CanvasClipper"

    const-string v1, "Cannot restore canvas, lose count!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iput v1, p0, Lcom/htc/widget/CanvasClipper;->mCanvasSaveCount:I

    goto :goto_0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerAntiAliased:Z

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mRadius:I

    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeColor:I

    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/CanvasClipper;->mCornerStrokeWidth:I

    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    goto :goto_0
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/CanvasClipper;->mTopRoundedEnabled:Z

    iput-boolean p2, p0, Lcom/htc/widget/CanvasClipper;->mBottomRoundedEnabled:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CanvasClipper;->mRoundedCornerEnabled:Z

    goto :goto_0
.end method
