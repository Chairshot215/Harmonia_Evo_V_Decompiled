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
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object p1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->this$0:Lcom/htc/sunny/STextView;

    invoke-direct {p0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 63
    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    .line 64
    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    .line 65
    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    return-void
.end method


# virtual methods
.method public animate()V
    .locals 5

    .prologue
    .line 89
    invoke-super {p0}, Lcom/htc/sunny/SAnimationController;->animate()V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->hasMore()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentTime:J

    iget-wide v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mDelayTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-wide v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    .line 95
    iget-wide v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    .line 96
    iget-wide v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    .line 97
    iget-wide v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mOffset:J

    long-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    iget v2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    iget v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mTotalTime:J

    long-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->interpolate(FFFF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    goto :goto_0
.end method

.method protected animationEnd()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/htc/sunny/SAnimationController;->animationEnd()V

    .line 105
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    .line 106
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    .line 107
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    .line 108
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    .line 109
    return-void
.end method

.method public setCoordinatesAnimation(FFFFFFFF)V
    .locals 0
    .parameter "nStartL"
    .parameter "nStartT"
    .parameter "nStartR"
    .parameter "nStartB"
    .parameter "nEndL"
    .parameter "nEndT"
    .parameter "nEndR"
    .parameter "nEndB"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    .line 70
    iput p2, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    .line 71
    iput p3, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    .line 72
    iput p4, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    .line 74
    iput p5, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndL:F

    .line 75
    iput p6, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndT:F

    .line 76
    iput p7, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndR:F

    .line 77
    iput p8, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mEndB:F

    .line 78
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/htc/sunny/SAnimationController;->start()V

    .line 82
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartL:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    .line 83
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartT:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    .line 84
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartR:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    .line 85
    iget v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mStartB:F

    iput v0, p0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    .line 86
    return-void
.end method
