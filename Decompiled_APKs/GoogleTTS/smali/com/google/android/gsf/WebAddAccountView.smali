.class public Lcom/google/android/gsf/WebAddAccountView;
.super Ljava/lang/Object;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/WebAddAccountView$1;,
        Lcom/google/android/gsf/WebAddAccountView$MyWebViewClient;,
        Lcom/google/android/gsf/WebAddAccountView$MyChromeClient;,
        Lcom/google/android/gsf/WebAddAccountView$Callback;,
        Lcom/google/android/gsf/WebAddAccountView$Error;
    }
.end annotation


# instance fields
.field private mBottomBar:Landroid/view/View;

.field private mCallback:Lcom/google/android/gsf/WebAddAccountView$Callback;

.field private mCancelButton:Landroid/view/View;

.field private mIsLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static synthetic access$1000(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mCancelButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/WebAddAccountView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/WebAddAccountView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/WebAddAccountView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/WebAddAccountView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/gsf/WebAddAccountView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/WebAddAccountView;)Lcom/google/android/gsf/WebAddAccountView$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mCallback:Lcom/google/android/gsf/WebAddAccountView$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/WebAddAccountView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/WebAddAccountView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/WebAddAccountView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method
