.class public Lcom/android/browser/view/BookmarkContainer;
.super Landroid/widget/RelativeLayout;
.source "BookmarkContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->init()V

    .line 47
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 67
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/BookmarkContainer;->updateTransitionDrawable(Z)V

    .line 68
    return-void
.end method

.method init()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/view/BookmarkContainer;->setFocusable(Z)V

    .line 51
    invoke-super {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/BookmarkContainer;->updateTransitionDrawable(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/browser/view/BookmarkContainer;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/browser/view/BookmarkContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/browser/view/BookmarkContainer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method

.method updateTransitionDrawable(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 71
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 72
    .local v1, longPressTimeout:I
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 73
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    .line 74
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .end local v2           #selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_0

    .line 76
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method
