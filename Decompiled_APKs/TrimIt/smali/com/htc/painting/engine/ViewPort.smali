.class public abstract Lcom/htc/painting/engine/ViewPort;
.super Ljava/lang/Object;
.source "ViewPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/ViewPort$IdentityViewPort;,
        Lcom/htc/painting/engine/ViewPort$PaintingViewport;
    }
.end annotation


# instance fields
.field protected mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/ViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 146
    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 103
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getRotateDeg()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotX()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 104
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 106
    iget-object v0, p0, Lcom/htc/painting/engine/ViewPort;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public abstract getOffsetX()F
.end method

.method public abstract getOffsetY()F
.end method

.method public abstract getRectF()Landroid/graphics/RectF;
.end method

.method public abstract getRotateDeg()F
.end method

.method public abstract getRotatePivotX()F
.end method

.method public abstract getRotatePivotY()F
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getScalingPivotX()F
.end method

.method public abstract getScalingPivotY()F
.end method
