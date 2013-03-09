.class public Lcom/htc/android/worldclock/widget/MyScrollView;
.super Landroid/widget/ScrollView;
.source "MyScrollView.java"


# static fields
.field public static final WHAT_ON_SCROLL:I = 0x1771


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/widget/MyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/worldclock/widget/MyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 32
    return-void
.end method

.method private scrollNotify()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/MyScrollView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/MyScrollView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/widget/MyScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .local v0, group:Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/MyScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 60
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 37
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 39
    .local v0, bHandler:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/widget/MyScrollView;->scrollNotify()V

    .line 44
    :cond_1
    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 73
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/MyScrollView;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method
