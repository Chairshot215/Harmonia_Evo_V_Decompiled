.class public interface abstract Lcom/android/browser/WebViewController;
.super Ljava/lang/Object;
.source "WebViewController.java"


# virtual methods
.method public abstract activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract attachSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
.end method

.method public abstract closeTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract createSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract dismissSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
.end method

.method public abstract endActionMode()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDefaultVideoPoster()Landroid/graphics/Bitmap;
.end method

.method public abstract getTabControl()Lcom/android/browser/TabControl;
.end method

.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWebViewFactory()Lcom/android/browser/WebViewFactory;
.end method

.method public abstract hideAutoLogin(Lcom/android/browser/Tab;)V
.end method

.method public abstract hideCustomView()V
.end method

.method public abstract onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onPageFinished(Lcom/android/browser/Tab;)V
.end method

.method public abstract onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onProgressChanged(Lcom/android/browser/Tab;)V
.end method

.method public abstract onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
.end method

.method public abstract onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
.end method

.method public abstract onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract onUpdatedSecurityState(Lcom/android/browser/Tab;)V
.end method

.method public abstract onUserCanceledSsl(Lcom/android/browser/Tab;)V
.end method

.method public abstract openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
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
.end method

.method public abstract openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
.end method

.method public abstract openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
.end method

.method public abstract revertVoiceSearchMode(Lcom/android/browser/Tab;)V
.end method

.method public abstract setupAutoFill(Landroid/os/Message;)V
.end method

.method public abstract shouldCaptureThumbnails()Z
.end method

.method public abstract shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method

.method public abstract shouldShowErrorConsole()Z
.end method

.method public abstract showAutoLogin(Lcom/android/browser/Tab;)V
.end method

.method public abstract showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.end method

.method public abstract showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract switchToTab(Lcom/android/browser/Tab;)Z
.end method
