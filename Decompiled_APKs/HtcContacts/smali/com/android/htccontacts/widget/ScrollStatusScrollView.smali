.class public Lcom/android/htccontacts/widget/ScrollStatusScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollStatusScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;
    }
.end annotation


# static fields
.field public static final MASK_TOUCHING:I = 0x1

.field public static final SCROLL_GOING:I = 0x1000

.field public static final SCROLL_IDLE:I = 0x2000

.field public static final SCROLL_TOUCHING_GOING:I = 0x1001


# instance fields
.field protected mScrollChangeListener:Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;

.field protected mScrollStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    .line 22
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 65
    iget-object v2, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    .line 66
    .local v0, idle:Z
    const/16 v1, 0x2000

    .line 67
    .local v1, status:I
    if-eqz v0, :cond_2

    .line 68
    const/16 v1, 0x2000

    .line 76
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    if-eq v1, v2, :cond_1

    .line 77
    iput v1, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    .line 78
    iget-object v2, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollChangeListener:Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollChangeListener:Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;

    iget v3, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    invoke-interface {v2, p0, v3}, Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;->onScrollStatusChange(Landroid/widget/ScrollView;I)V

    .line 82
    :cond_1
    return-void

    .line 71
    :cond_2
    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 72
    const/16 v1, 0x1000

    goto :goto_0
.end method

.method public fling(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 32
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 43
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    .line 45
    .local v0, idle:Z
    const/16 v2, 0x2000

    .line 46
    .local v2, status:I
    if-eqz v0, :cond_1

    .line 47
    const/16 v2, 0x2000

    .line 53
    :goto_0
    iget v3, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    if-eq v2, v3, :cond_0

    .line 54
    iput v2, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    .line 55
    iget-object v3, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollChangeListener:Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollChangeListener:Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;

    iget v4, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollStatus:I

    invoke-interface {v3, p0, v4}, Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;->onScrollStatusChange(Landroid/widget/ScrollView;I)V

    .line 59
    :cond_0
    return v1

    .line 50
    :cond_1
    const/16 v2, 0x1001

    goto :goto_0
.end method

.method public setOnScrollChangeListener(Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->mScrollChangeListener:Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;

    .line 86
    return-void
.end method
