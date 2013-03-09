.class public Lcom/android/htmlviewer/HTMLViewerActivity;
.super Landroid/app/Activity;
.source "HTMLViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "HTMLViewerActivity"

.field static final MAXFILESIZE:I = 0x1fa0


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 74
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/htmlviewer/HTMLViewerActivity;->requestWindowFeature(I)Z

    .line 76
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    .line 77
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v5}, Lcom/android/htmlviewer/HTMLViewerActivity;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;

    invoke-direct {v6, p0}, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;-><init>(Lcom/android/htmlviewer/HTMLViewerActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 83
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 84
    .local v3, s:Landroid/webkit/WebSettings;
    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 85
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 86
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 87
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 88
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 92
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/htmlviewer/HTMLViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 102
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.htmlfileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, contentUri:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, intentType:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_2
    iget-object v5, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0           #contentUri:Ljava/lang/String;
    .end local v2           #intentType:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 128
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 134
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 135
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 136
    return-void
.end method
