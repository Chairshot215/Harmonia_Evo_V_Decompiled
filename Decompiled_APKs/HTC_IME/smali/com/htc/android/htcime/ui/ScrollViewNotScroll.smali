.class public Lcom/htc/android/htcime/ui/ScrollViewNotScroll;
.super Landroid/widget/ScrollView;
.source "ScrollViewNotScroll.java"


# instance fields
.field private bEnableScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;->bEnableScroll:Z

    .line 35
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;->bEnableScroll:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;->bEnableScroll:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScrollingEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;->bEnableScroll:Z

    .line 55
    return-void
.end method
