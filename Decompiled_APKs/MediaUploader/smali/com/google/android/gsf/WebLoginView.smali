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


# static fields
.field private static final TAG:Ljava/lang/String; = "WebLoginView"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mBottomBar:Landroid/view/View;

.field private mCallback:Lcom/google/android/gsf/WebLoginView$Callback;

.field private mCancelButton:Landroid/view/View;

.field private mDomainName:Ljava/lang/String;

.field private mIsLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mStartUrl:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/gsf/WebLoginView$Callback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    .line 92
    iput-object p2, p0, Lcom/google/android/gsf/WebLoginView;->mProgressView:Landroid/view/View;

    .line 93
    iput-object p3, p0, Lcom/google/android/gsf/WebLoginView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 95
    iput-object p9, p0, Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;

    .line 96
    iput-object p4, p0, Lcom/google/android/gsf/WebLoginView;->mBackButton:Landroid/view/View;

    .line 97
    iput-object p5, p0, Lcom/google/android/gsf/WebLoginView;->mCancelButton:Landroid/view/View;

    .line 98
    iput-object p6, p0, Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;

    .line 99
    iput-object p7, p0, Lcom/google/android/gsf/WebLoginView;->mTitleTextView:Landroid/widget/TextView;

    .line 100
    iput-object p8, p0, Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView;->setupOptionsAndCallbacks()V

    .line 102
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mCancelButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/WebLoginView;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/WebLoginView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private doLogin()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mBackButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView;->mStartUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    .line 128
    return-void
.end method

.method private setupOptionsAndCallbacks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;-><init>(Lcom/google/android/gsf/WebLoginView;Lcom/google/android/gsf/WebLoginView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gsf/WebLoginView$MyChromeClient;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/WebLoginView$MyChromeClient;-><init>(Lcom/google/android/gsf/WebLoginView;Lcom/google/android/gsf/WebLoginView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 156
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 162
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 164
    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/gsf/WebLoginView;->mStartUrl:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/google/android/gsf/WebLoginView;->mDomainName:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView;->doLogin()V

    .line 114
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z

    .line 138
    :cond_0
    return-void
.end method
