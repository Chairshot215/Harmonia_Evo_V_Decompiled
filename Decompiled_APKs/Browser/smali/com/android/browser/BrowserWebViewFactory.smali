.class public Lcom/android/browser/BrowserWebViewFactory;
.super Ljava/lang/Object;
.source "BrowserWebViewFactory.java"

# interfaces
.implements Lcom/android/browser/WebViewFactory;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/browser/BrowserWebViewFactory;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public createSubWebView(Z)Landroid/webkit/WebView;
    .locals 1
    .parameter "privateBrowsing"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserWebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public createWebView(Z)Landroid/webkit/WebView;
    .locals 3
    .parameter "privateBrowsing"

    .prologue
    .line 47
    const/4 v1, 0x0

    const v2, 0x1010085

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/browser/BrowserWebViewFactory;->instantiateWebView(Landroid/util/AttributeSet;IZ)Landroid/webkit/WebView;

    move-result-object v0

    .line 48
    .local v0, w:Landroid/webkit/WebView;
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserWebViewFactory;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 49
    return-object v0
.end method

.method protected initWebViewSettings(Landroid/webkit/WebView;)V
    .locals 6
    .parameter "w"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 53
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 54
    const/high16 v5, 0x200

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 55
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 58
    iget-object v5, p0, Lcom/android/browser/BrowserWebViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    .line 62
    .local v2, supportsMultiTouch:Z
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 66
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 67
    .local v1, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/browser/BrowserSettings;->startManagingSettings(Landroid/webkit/WebSettings;)V

    .line 68
    return-void

    .end local v1           #s:Lcom/android/browser/BrowserSettings;
    .end local v2           #supportsMultiTouch:Z
    :cond_1
    move v2, v3

    .line 59
    goto :goto_0

    .restart local v2       #supportsMultiTouch:Z
    :cond_2
    move v4, v3

    .line 62
    goto :goto_1
.end method

.method protected instantiateWebView(Landroid/util/AttributeSet;IZ)Landroid/webkit/WebView;
    .locals 2
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 37
    new-instance v0, Lcom/android/browser/BrowserWebView;

    iget-object v1, p0, Lcom/android/browser/BrowserWebViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/browser/BrowserWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-object v0
.end method
