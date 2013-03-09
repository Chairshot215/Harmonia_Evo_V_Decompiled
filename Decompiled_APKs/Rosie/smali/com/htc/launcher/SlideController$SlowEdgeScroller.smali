.class Lcom/htc/launcher/SlideController$SlowEdgeScroller;
.super Lcom/htc/launcher/widget/HtcScroller;
.source "SlideController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/SlideController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlowEdgeScroller"
.end annotation


# instance fields
.field mRange:I

.field private mRealElapsed:I

.field private mTranslatedElapsed:I

.field mX0:I

.field mX1:I

.field mX2:I

.field mX3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/SlideController$SlowEdgeScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/widget/HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 132
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRange:I

    .line 141
    iput v1, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mTranslatedElapsed:I

    iput v1, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRealElapsed:I

    .line 139
    return-void
.end method


# virtual methods
.method public startScroll(IIIIILcom/htc/launcher/widget/EasingFunction;I)V
    .locals 2
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"
    .parameter "screenWidth"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-super/range {p0 .. p6}, Lcom/htc/launcher/widget/HtcScroller;->startScroll(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 145
    mul-int/lit8 v0, p7, 0x7

    iput v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRange:I

    .line 146
    iget v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRange:I

    sub-int/2addr v0, p7

    iput v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX0:I

    .line 147
    iget v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRange:I

    iput v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX1:I

    .line 148
    neg-int v0, p7

    iput v0, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX2:I

    .line 149
    iput v1, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX3:I

    .line 150
    iput v1, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mTranslatedElapsed:I

    .line 151
    iput v1, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRealElapsed:I

    .line 152
    return-void
.end method

.method public timePassed()I
    .locals 7

    .prologue
    .line 157
    iget v2, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRealElapsed:I

    .line 158
    .local v2, lastRealElapsed:I
    invoke-super {p0}, Lcom/htc/launcher/widget/HtcScroller;->timePassed()I

    move-result v5

    iput v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRealElapsed:I

    .line 159
    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRealElapsed:I

    sub-int v0, v5, v2

    .line 161
    .local v0, diff:I
    const-wide v3, 0x7fffffffffffffffL

    .line 162
    .local v3, x:J
    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRange:I

    if-lez v5, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->getCurrX()I

    move-result v5

    iget v6, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mRange:I

    rem-int/2addr v5, v6

    int-to-long v3, v5

    .line 166
    :cond_0
    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX0:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX1:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX2:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mX3:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    .line 167
    :cond_2
    div-int/lit8 v0, v0, 0x2

    .line 169
    :cond_3
    iget v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mTranslatedElapsed:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mTranslatedElapsed:I

    .line 170
    iget v1, p0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->mTranslatedElapsed:I

    .line 177
    .local v1, elapsed:I
    return v1
.end method
