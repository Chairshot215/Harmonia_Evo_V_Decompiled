.class public Lcom/android/browser/view/EventRedirectingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "EventRedirectingFrameLayout.java"


# instance fields
.field private mTargetChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 60
    iget v1, p0, Lcom/android/browser/view/EventRedirectingFrameLayout;->mTargetChild:I

    invoke-virtual {p0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 63
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 68
    iget v1, p0, Lcom/android/browser/view/EventRedirectingFrameLayout;->mTargetChild:I

    invoke-virtual {p0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 71
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 52
    iget v1, p0, Lcom/android/browser/view/EventRedirectingFrameLayout;->mTargetChild:I

    invoke-virtual {p0, v1}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 55
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTargetChild(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 44
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 45
    iput p1, p0, Lcom/android/browser/view/EventRedirectingFrameLayout;->mTargetChild:I

    .line 46
    iget v0, p0, Lcom/android/browser/view/EventRedirectingFrameLayout;->mTargetChild:I

    invoke-virtual {p0, v0}, Lcom/android/browser/view/EventRedirectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 48
    :cond_0
    return-void
.end method
