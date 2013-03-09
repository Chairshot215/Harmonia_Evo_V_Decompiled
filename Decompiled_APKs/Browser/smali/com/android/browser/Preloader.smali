.class public Lcom/android/browser/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Preloader$PreloaderSession;
    }
.end annotation


# static fields
.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser.preloader"

.field private static final PRERENDER_TIMEOUT_MILLIS:I = 0x7530

.field private static sInstance:Lcom/android/browser/Preloader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/browser/BrowserWebViewFactory;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mSession:Lcom/android/browser/Preloader$PreloaderSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Preloader;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/browser/Preloader;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    .line 55
    new-instance v0, Lcom/android/browser/BrowserWebViewFactory;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Preloader;->mFactory:Lcom/android/browser/BrowserWebViewFactory;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/Preloader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/Preloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/Preloader;)Lcom/android/browser/BrowserWebViewFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/Preloader;->mFactory:Lcom/android/browser/BrowserWebViewFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/Preloader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/Preloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/Preloader;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/browser/Preloader;->sInstance:Lcom/android/browser/Preloader;

    return-object v0
.end method

.method private getSession(Ljava/lang/String;)Lcom/android/browser/Preloader$PreloaderSession;
    .locals 3
    .parameter "id"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "browser.preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new preload session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/android/browser/Preloader$PreloaderSession;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Preloader$PreloaderSession;-><init>(Lcom/android/browser/Preloader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    .line 63
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    invoke-virtual {v1}, Lcom/android/browser/Preloader$PreloaderSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewTimersControl;->onPrerenderStart(Landroid/webkit/WebView;)V

    .line 65
    iget-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    .line 73
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    #getter for: Lcom/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/Preloader$PreloaderSession;->access$000(Lcom/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "browser.preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning existing preload session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "browser.preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing session in progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    #getter for: Lcom/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/Preloader$PreloaderSession;->access$000(Lcom/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Lcom/android/browser/Preloader;

    invoke-direct {v0, p0}, Lcom/android/browser/Preloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/Preloader;->sInstance:Lcom/android/browser/Preloader;

    .line 45
    return-void
.end method

.method private takeSession(Ljava/lang/String;)Lcom/android/browser/Preloader$PreloaderSession;
    .locals 2
    .parameter "id"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, s:Lcom/android/browser/Preloader$PreloaderSession;
    iget-object v1, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    #getter for: Lcom/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/Preloader$PreloaderSession;->access$000(Lcom/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/Preloader;->mSession:Lcom/android/browser/Preloader$PreloaderSession;

    .line 83
    :cond_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->cancelTimeout()V

    .line 87
    :cond_1
    return-object v0
.end method


# virtual methods
.method public cancelSearchBoxPreload(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/browser/Preloader;->getSession(Ljava/lang/String;)Lcom/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 111
    .local v0, s:Lcom/android/browser/Preloader$PreloaderSession;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->touch()V

    .line 113
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->getTabControl()Lcom/android/browser/PreloadedTabControl;

    move-result-object v1

    .line 114
    .local v1, tab:Lcom/android/browser/PreloadedTabControl;
    invoke-virtual {v1}, Lcom/android/browser/PreloadedTabControl;->searchBoxCancel()V

    .line 116
    .end local v1           #tab:Lcom/android/browser/PreloadedTabControl;
    :cond_0
    return-void
.end method

.method public discardPreload(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/browser/Preloader;->takeSession(Ljava/lang/String;)Lcom/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 120
    .local v0, s:Lcom/android/browser/Preloader$PreloaderSession;
    if-eqz v0, :cond_1

    .line 121
    const-string v2, "browser.preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard preload session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/browser/WebViewTimersControl;->onPrerenderDone(Landroid/webkit/WebView;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->getTabControl()Lcom/android/browser/PreloadedTabControl;

    move-result-object v1

    .line 124
    .local v1, t:Lcom/android/browser/PreloadedTabControl;
    invoke-virtual {v1}, Lcom/android/browser/PreloadedTabControl;->destroy()V

    .line 128
    .end local v1           #t:Lcom/android/browser/PreloadedTabControl;
    :goto_1
    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_1
    const-string v2, "browser.preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored discard request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPreloadedTab(Ljava/lang/String;)Lcom/android/browser/PreloadedTabControl;
    .locals 4
    .parameter "id"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/browser/Preloader;->takeSession(Ljava/lang/String;)Lcom/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 136
    .local v0, s:Lcom/android/browser/Preloader$PreloaderSession;
    const-string v1, "browser.preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing preload session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->getTabControl()Lcom/android/browser/PreloadedTabControl;

    move-result-object v1

    goto :goto_0
.end method

.method public handlePreloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "url"
    .parameter
    .parameter "searchBoxQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/browser/Preloader;->getSession(Ljava/lang/String;)Lcom/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 93
    .local v0, s:Lcom/android/browser/Preloader$PreloaderSession;
    if-nez v0, :cond_0

    .line 94
    const-string v2, "browser.preloader"

    const-string v3, "Discarding preload request, existing session in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->touch()V

    .line 100
    invoke-virtual {v0}, Lcom/android/browser/Preloader$PreloaderSession;->getTabControl()Lcom/android/browser/PreloadedTabControl;

    move-result-object v1

    .line 101
    .local v1, tab:Lcom/android/browser/PreloadedTabControl;
    if-eqz p4, :cond_1

    .line 102
    invoke-virtual {v1, p2, p3}, Lcom/android/browser/PreloadedTabControl;->loadUrlIfChanged(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    invoke-virtual {v1, p4}, Lcom/android/browser/PreloadedTabControl;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/android/browser/PreloadedTabControl;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
