.class public Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;
.super Landroid/widget/FrameLayout;
.source "SimpleAlertDialogWebView.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public configureView(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arguments"

    .prologue
    .line 42
    const-string v1, "url_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->mUrl:Ljava/lang/String;

    .line 43
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 44
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/SimpleAlertDialogWebView$1;-><init>(Lcom/google/android/finsky/billing/SimpleAlertDialogWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    return-void
.end method
