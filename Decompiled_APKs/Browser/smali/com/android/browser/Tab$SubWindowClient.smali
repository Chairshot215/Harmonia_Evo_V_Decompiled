.class Lcom/android/browser/Tab$SubWindowClient;
.super Landroid/webkit/WebViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubWindowClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebViewClient;

.field private final mController:Lcom/android/browser/WebViewController;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClient;Lcom/android/browser/WebViewController;)V
    .locals 0
    .parameter "client"
    .parameter "controller"

    .prologue
    .line 1306
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1307
    iput-object p1, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    .line 1308
    iput-object p2, p0, Lcom/android/browser/Tab$SubWindowClient;->mController:Lcom/android/browser/WebViewController;

    .line 1309
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 1321
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 1345
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->endActionMode()V

    .line 1316
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1330
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 1360
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
