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
.field private mContext:Landroid/content/Context;

.field private final mDipScale:F

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLoadingMessage:Ljava/lang/String;

.field private mPrettyUrl:Ljava/lang/String;

.field private mProgressBar:Landroid/view/View;

.field private mReceivedResponse:Z

.field private mSecureUrl:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mUnsuccessfulMessage:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLoadingMessage:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mDipScale:F

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/common/GoogleWebContentHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/common/GoogleWebContentHelper;->handleWebViewCompletion(Z)V

    return-void
.end method

.method private declared-synchronized ensureViews()V
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/google/android/common/GoogleWebContentHelper;->initializeViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, ""

    .line 218
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized handleWebViewCompletion(Z)V
    .locals 2
    .parameter

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mReceivedResponse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mReceivedResponse:Z

    .line 303
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    move-object v1, v0

    .line 307
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    .line 311
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    move-object v1, v0

    goto :goto_1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private initializeViews()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v4, 0x3f00

    const/16 v7, 0x11

    const/4 v6, -0x2

    .line 225
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    .line 226
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 228
    const/high16 v0, 0x4100

    iget v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mDipScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 229
    const/high16 v1, 0x4120

    iget v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mDipScale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 230
    const/high16 v2, 0x4140

    iget v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mDipScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 235
    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLoadingMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 240
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 242
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 245
    invoke-virtual {v4, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 246
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 251
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 253
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 258
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLoadingMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iput-object v4, p0, Lcom/google/android/common/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    .line 276
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    .line 279
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 281
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/common/GoogleWebContentHelper$MyWebViewClient;-><init>(Lcom/google/android/common/GoogleWebContentHelper;Lcom/google/android/common/GoogleWebContentHelper$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 282
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    .line 288
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 290
    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mUnsuccessfulMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    return-void

    .line 266
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 268
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 269
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 271
    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iput-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/android/common/GoogleWebContentHelper;->ensureViews()V

    .line 195
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public handleKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 180
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDataWithFailUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/common/GoogleWebContentHelper;->ensureViews()V

    .line 166
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object p0
.end method

.method public loadUrl()Lcom/google/android/common/GoogleWebContentHelper;
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/common/GoogleWebContentHelper;->ensureViews()V

    .line 155
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mSecureUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 156
    return-object p0
.end method

.method public setLoadingMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mLoadingMessage:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 4
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 130
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/common/GoogleWebContentHelper;->mPrettyUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mUnsuccessfulMessage:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/common/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mSecureUrl:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/google/android/common/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mPrettyUrl:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public setUrlsFromGservices(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    invoke-static {v0, p1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/common/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mSecureUrl:Ljava/lang/String;

    .line 98
    invoke-static {v0, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/common/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/GoogleWebContentHelper;->mPrettyUrl:Ljava/lang/String;

    .line 100
    return-object p0
.end method
