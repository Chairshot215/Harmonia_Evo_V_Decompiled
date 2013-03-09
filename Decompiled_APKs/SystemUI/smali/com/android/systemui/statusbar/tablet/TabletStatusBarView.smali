.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
.super Landroid/widget/FrameLayout;
.source "TabletStatusBarView.java"


# instance fields
.field private final MAX_PANELS:I

.field private mHandler:Landroid/os/Handler;

.field private final mIgnoreChildren:[Landroid/view/View;

.field private final mPanels:[Landroid/view/View;

.field private final mPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    return-void
.end method

.method private eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v2, v8

    aget v4, v2, v7

    aget v9, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int v3, v9, v10

    aget v9, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v0, v9, v10

    if-lt v5, v1, :cond_0

    if-ge v5, v3, :cond_0

    if-lt v6, v4, :cond_0

    if-ge v6, v0, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x7d0

    const/16 v4, 0x411

    const/16 v3, 0x3fd

    const/16 v2, 0x3e9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aput-object p3, v0, p1

    return-void
.end method
