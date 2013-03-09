.class Lcom/htc/sunny/STextView$CoordinatesAnimation;
.super Lcom/htc/sunny/SAnimationController;
.source "STextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/STextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CoordinatesAnimation"
.end annotation


# instance fields
.field protected mCurrentB:F

.field protected mCurrentL:F

.field protected mCurrentR:F

.field protected mCurrentT:F

.field protected mEndB:F

.field protected mEndL:F

.field protected mEndR:F

.field protected mEndT:F

.field protected mStartB:F

.field protected mStartL:F

.field protected mStartR:F

.field protected mStartT:F

.field final synthetic this$0:Lcom/htc/sunny/STextView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->this$0:Lcom/htc/sunny/STextView;

    invoke-direct {p0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    return-void
.end method


# virtual methods
.method public animate()V
    .locals 5

    invoke-super {p0}, Lcom/htc/sunny/SAnimationController;->animate()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->hasMore()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mCurrentTime:J

    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunny/SAnimationController;->mDelayTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iget-wide v0, p0, Lcom/htc/sunny/SAnimationController;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/SAnimationController;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    goto :goto_0
.end method

.method protected animationEnd()V
    .locals 1

    invoke-super {p0}, Lcom/htc/sunny/SAnimationController;->animationEnd()V

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    return-void
.end method

.method public setCoordinatesAnimation(FFFFFFFF)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iput p2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iput p3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iput p4, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    iput p5, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iput p6, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iput p7, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iput p8, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Lcom/htc/sunny/SAnimationController;->start()V

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    return-void
.end method
