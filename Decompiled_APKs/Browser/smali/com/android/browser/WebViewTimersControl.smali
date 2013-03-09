.class public Lcom/android/browser/WebViewTimersControl;
.super Ljava/lang/Object;
.source "WebViewTimersControl.java"


# static fields
.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "WebViewTimersControl"

.field private static sInstance:Lcom/android/browser/WebViewTimersControl;


# instance fields
.field private mBrowserActive:Z

.field private mPrerenderActive:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/browser/WebViewTimersControl;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebViewTimersControl.get() called on wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    sget-object v0, Lcom/android/browser/WebViewTimersControl;->sInstance:Lcom/android/browser/WebViewTimersControl;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/android/browser/WebViewTimersControl;

    invoke-direct {v0}, Lcom/android/browser/WebViewTimersControl;-><init>()V

    sput-object v0, Lcom/android/browser/WebViewTimersControl;->sInstance:Lcom/android/browser/WebViewTimersControl;

    .line 47
    :cond_1
    sget-object v0, Lcom/android/browser/WebViewTimersControl;->sInstance:Lcom/android/browser/WebViewTimersControl;

    return-object v0
.end method

.method private maybePauseTimers(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "wv"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/browser/WebViewTimersControl;->mBrowserActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/WebViewTimersControl;->mPrerenderActive:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 62
    const-string v0, "WebViewTimersControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing webview timers, view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Landroid/webkit/WebView;->pauseTimers()V

    .line 65
    :cond_0
    return-void
.end method

.method private resumeTimers(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "wv"

    .prologue
    .line 54
    const-string v0, "WebViewTimersControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming webview timers, view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public onBrowserActivityPause(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "wv"

    .prologue
    .line 74
    const-string v0, "WebViewTimersControl"

    const-string v1, "onBrowserActivityPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebViewTimersControl;->mBrowserActive:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/android/browser/WebViewTimersControl;->maybePauseTimers(Landroid/webkit/WebView;)V

    .line 77
    return-void
.end method

.method public onBrowserActivityResume(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "wv"

    .prologue
    .line 68
    const-string v0, "WebViewTimersControl"

    const-string v1, "onBrowserActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebViewTimersControl;->mBrowserActive:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/browser/WebViewTimersControl;->resumeTimers(Landroid/webkit/WebView;)V

    .line 71
    return-void
.end method

.method public onPrerenderDone(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "wv"

    .prologue
    .line 86
    const-string v0, "WebViewTimersControl"

    const-string v1, "onPrerenderDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebViewTimersControl;->mPrerenderActive:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/android/browser/WebViewTimersControl;->maybePauseTimers(Landroid/webkit/WebView;)V

    .line 89
    return-void
.end method

.method public onPrerenderStart(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "wv"

    .prologue
    .line 80
    const-string v0, "WebViewTimersControl"

    const-string v1, "onPrerenderStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebViewTimersControl;->mPrerenderActive:Z

    .line 82
    invoke-direct {p0, p1}, Lcom/android/browser/WebViewTimersControl;->resumeTimers(Landroid/webkit/WebView;)V

    .line 83
    return-void
.end method
