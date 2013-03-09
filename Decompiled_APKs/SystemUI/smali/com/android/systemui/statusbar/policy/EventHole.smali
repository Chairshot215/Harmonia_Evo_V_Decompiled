.class public Lcom/android/systemui/statusbar/policy/EventHole;
.super Landroid/view/View;
.source "EventHole.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.EventHole"


# instance fields
.field private mLoc:[I

.field private mWindowVis:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/EventHole;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EventHole;->mLoc:[I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/EventHole;->mWindowVis:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->getWidth()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->getHeight()I

    move-result v9

    if-lez v9, :cond_0

    move v8, v0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/EventHole;->mLoc:[I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/EventHole;->getLocationInWindow([I)V

    aget v1, v6, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->getWidth()I

    move-result v9

    add-int v3, v1, v9

    aget v2, v6, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->getHeight()I

    move-result v0

    add-int v4, v2, v0

    move-object v7, p0

    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_1

    :cond_0
    move v8, v5

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0, v5, v5, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EventHole;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/EventHole;->mWindowVis:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
