.class public Lcom/android/browser/preferences/FontSizePreview;
.super Lcom/android/browser/preferences/WebViewPreview;
.source "FontSizePreview.java"


# static fields
.field static final HTML_FORMAT:Ljava/lang/String; = "<!DOCTYPE html><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><style type=\"text/css\">p { margin: 2px auto;}</style><body><p style=\"font-size: 4pt\">%s</p><p style=\"font-size: 8pt\">%s</p><p style=\"font-size: 10pt\">%s</p><p style=\"font-size: 14pt\">%s</p><p style=\"font-size: 18pt\">%s</p></body></html>"


# instance fields
.field mHtml:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f08005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, visualNames:[Ljava/lang/Object;
    const-string v2, "<!DOCTYPE html><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><style type=\"text/css\">p { margin: 2px auto;}</style><body><p style=\"font-size: 4pt\">%s</p><p style=\"font-size: 8pt\">%s</p><p style=\"font-size: 10pt\">%s</p><p style=\"font-size: 14pt\">%s</p><p style=\"font-size: 18pt\">%s</p></body></html>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/FontSizePreview;->mHtml:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected setupWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;->setupWebView(Landroid/webkit/WebView;)V

    .line 70
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method protected updatePreview()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/browser/preferences/FontSizePreview;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/FontSizePreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 61
    .local v7, ws:Landroid/webkit/WebSettings;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    .line 62
    .local v6, bs:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 63
    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 64
    iget-object v0, p0, Lcom/android/browser/preferences/FontSizePreview;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/preferences/FontSizePreview;->mHtml:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
