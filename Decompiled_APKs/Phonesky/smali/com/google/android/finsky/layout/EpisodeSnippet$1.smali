.class Lcom/google/android/finsky/layout/EpisodeSnippet$1;
.super Ljava/lang/Object;
.source "EpisodeSnippet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/EpisodeSnippet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 98
    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getTop()I

    move-result v1

    .line 99
    .local v1, offsetInScrollParent:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 101
    .local v2, parent:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 102
    .local v0, nextParent:Landroid/view/View;
    instance-of v5, v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 111
    .local v4, scroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;->this$0:Lcom/google/android/finsky/layout/EpisodeSnippet;

    #getter for: Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I
    invoke-static {v5}, Lcom/google/android/finsky/layout/EpisodeSnippet;->access$000(Lcom/google/android/finsky/layout/EpisodeSnippet;)I

    move-result v5

    sub-int v3, v1, v5

    .line 112
    .local v3, scrollTarget:I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->smoothScrollTo(II)V

    .line 113
    return-void

    .line 105
    .end local v3           #scrollTarget:I
    .end local v4           #scroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v1, v5

    .line 106
    move-object v2, v0

    .line 107
    goto :goto_0
.end method
