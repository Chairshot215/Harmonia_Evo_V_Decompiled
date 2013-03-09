.class public Lcom/android/browser/PreloadController;
.super Ljava/lang/Object;
.source "PreloadController.java"

# interfaces
.implements Lcom/android/browser/WebViewController;


# static fields
.field private static final LOGD_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "PreloadController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PreloadController;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 229
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 267
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 257
    return-void
.end method

.method public createSubWindow(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 79
    return-void
.end method

.method public dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 234
    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "tab"
    .parameter "isReload"

    .prologue
    .line 140
    return-void
.end method

.method public endActionMode()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/PreloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 277
    return-void
.end method

.method public hideCustomView()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "tab"
    .parameter "url"
    .parameter "useragent"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "contentLength"

    .prologue
    .line 159
    return-void
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "tab"
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 118
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 97
    .local v0, view:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 103
    .end local v0           #view:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "tab"
    .parameter "view"
    .parameter "favicon"

    .prologue
    .line 84
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 90
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 108
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tab"
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 152
    return-void
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 0
    .parameter "tab"
    .parameter "title"

    .prologue
    .line 113
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "tab"
    .parameter "view"

    .prologue
    .line 74
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 135
    return-void
.end method

.method public onUpdatedSecurityState(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 214
    return-void
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 193
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    return-void
.end method

.method public openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "parent"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public revertVoiceSearchMode(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 203
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 262
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 272
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .parameter "tab"
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 165
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 188
    return-void
.end method

.method public switchToTab(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "tab"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method
