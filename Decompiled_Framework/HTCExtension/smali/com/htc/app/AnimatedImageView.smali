.class public Lcom/htc/app/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# static fields
.field private static final ROTATE_DURATION:I = 0x12c

.field private static final ROTATE_SPEED:I = 0x1e


# instance fields
.field private isPlayAnimation:Z

.field private mLastInvalidate:J

.field private mRotateDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/htc/app/AnimatedImageView;->isPlayAnimation:Z

    iput v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/htc/app/AnimatedImageView;->isPlayAnimation:Z

    iput v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/htc/app/AnimatedImageView;->isPlayAnimation:Z

    iput v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-wide/16 v5, 0x12c

    const/high16 v4, 0x4000

    iget-boolean v0, p0, Lcom/htc/app/AnimatedImageView;->isPlayAnimation:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    iget v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    invoke-virtual {p0, v5, v6}, Lcom/htc/app/AnimatedImageView;->postInvalidateDelayed(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/AnimatedImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/htc/app/AnimatedImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/htc/app/AnimatedImageView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/htc/app/AnimatedImageView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/AnimatedImageView;->isPlayAnimation:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/AnimatedImageView;->mRotateDegree:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/AnimatedImageView;->mLastInvalidate:J

    invoke-virtual {p0}, Lcom/htc/app/AnimatedImageView;->invalidate()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/AnimatedImageView;->isPlayAnimation:Z

    invoke-virtual {p0}, Lcom/htc/app/AnimatedImageView;->invalidate()V

    return-void
.end method
