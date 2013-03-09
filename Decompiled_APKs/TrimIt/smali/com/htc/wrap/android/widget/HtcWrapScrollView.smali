.class public Lcom/htc/wrap/android/widget/HtcWrapScrollView;
.super Landroid/widget/ScrollView;
.source "HtcWrapScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    return v0
.end method

.method public getIsBeingDraggedStatus()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mIsBeingDragged:Z

    return v0
.end method

.method public getLastMotionY()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mLastMotionY:F

    return v0
.end method

.method public getScroller()Landroid/widget/OverScroller;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method public getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public setIsBeingDraggedStatus(Z)V
    .locals 0
    .parameter "isdragged"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mIsBeingDragged:Z

    .line 49
    return-void
.end method

.method public setLastMotionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mLastMotionY:F

    .line 45
    return-void
.end method

.method public setVelocityTracker(Landroid/view/VelocityTracker;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 37
    return-void
.end method
