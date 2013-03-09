.class public Lcom/google/android/common/GoogleWebContentHelper;
.super Ljava/lang/Object;
.source "GoogleWebContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/GoogleWebContentHelper$1;,
        Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;
    }
.end annotation


# instance fields
.field private mProgressBar:Landroid/view/View;

.field private mReceivedResponse:Z

.field private mTextView:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static synthetic access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V

    return-void
.end method

.method private declared-synchronized handleWebViewCompletion(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mReceivedResponse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mReceivedResponse:Z

    .line 303
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    .line 307
    .local v0, goneView:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    .line 311
    .local v1, visibleView:Landroid/view/View;
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    .end local v0           #goneView:Landroid/view/View;
    .end local v1           #visibleView:Landroid/view/View;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 306
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    goto :goto_1

    .line 310
    .restart local v0       #goneView:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
