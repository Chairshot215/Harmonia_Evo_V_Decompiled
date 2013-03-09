.class public Lcom/google/android/gm/ScrollIndicatorsView;
.super Landroid/view/View;
.source "ScrollIndicatorsView.java"

# interfaces
.implements Lcom/google/android/gm/ScrollNotifier$ScrollListener;


# instance fields
.field private mSource:Lcom/google/android/gm/ScrollNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0}, Lcom/google/android/gm/ScrollNotifier;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0}, Lcom/google/android/gm/ScrollNotifier;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0}, Lcom/google/android/gm/ScrollNotifier;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0}, Lcom/google/android/gm/ScrollNotifier;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0}, Lcom/google/android/gm/ScrollNotifier;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0}, Lcom/google/android/gm/ScrollNotifier;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public onNotifierScroll(II)V
    .locals 0
    .parameter "left"
    .parameter "top"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gm/ScrollIndicatorsView;->awakenScrollBars()Z

    .line 67
    return-void
.end method

.method public setSourceView(Lcom/google/android/gm/ScrollNotifier;)V
    .locals 1
    .parameter "notifier"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    .line 31
    iget-object v0, p0, Lcom/google/android/gm/ScrollIndicatorsView;->mSource:Lcom/google/android/gm/ScrollNotifier;

    invoke-interface {v0, p0}, Lcom/google/android/gm/ScrollNotifier;->addScrollListener(Lcom/google/android/gm/ScrollNotifier$ScrollListener;)V

    .line 32
    return-void
.end method
