.class public Lcom/google/android/finsky/layout/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;
    }
.end annotation


# instance fields
.field private mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;->onScroll(II)V

    .line 45
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    .line 37
    return-void
.end method
