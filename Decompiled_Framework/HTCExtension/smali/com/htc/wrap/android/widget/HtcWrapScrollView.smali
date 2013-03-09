.class public Lcom/htc/wrap/android/widget/HtcWrapScrollView;
.super Landroid/widget/ScrollView;
.source "HtcWrapScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    return v0
.end method

.method public getIsBeingDraggedStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mIsBeingDragged:Z

    return v0
.end method

.method public getLastMotionY()F
    .locals 1

    iget v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mLastMotionY:F

    return v0
.end method

.method public getScroller()Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method public getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public setIsBeingDraggedStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mIsBeingDragged:Z

    return-void
.end method

.method public setLastMotionY(F)V
    .locals 0

    iput p1, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mLastMotionY:F

    return-void
.end method

.method public setVelocityTracker(Landroid/view/VelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/wrap/android/widget/HtcWrapScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method
