.class public Lcom/google/android/gsf/WebLoginView;
.super Ljava/lang/Object;
.source "WebLoginView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/WebLoginView$1;,
        Lcom/google/android/gsf/WebLoginView$MyWebViewClient;,
        Lcom/google/android/gsf/WebLoginView$MyChromeClient;,
        Lcom/google/android/gsf/WebLoginView$Callback;,
        Lcom/google/android/gsf/WebLoginView$Error;
    }
.end annotation


# instance fields
.field private mBottomBar:Landroid/view/View;

.field private mCallback:Lcom/google/android/gsf/WebLoginView$Callback;

.field private mCancelButton:Landroid/view/View;

.field private mIsLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static synthetic access$1000(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mCancelButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/WebLoginView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/WebLoginView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method
