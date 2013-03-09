.class public Lcom/android/browser/preferences/InvertedContrastPreview;
.super Lcom/android/browser/preferences/WebViewPreview;
.source "InvertedContrastPreview.java"


# static fields
.field static final IMG_ROOT:Ljava/lang/String; = "content://com.android.browser.home/res/raw/"

.field static final THUMBS:[Ljava/lang/String;


# instance fields
.field mHtml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thumb_google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thumb_amazon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thumb_cnn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumb_espn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thumb_bbc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thumb_nytimes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "thumb_weatherchannel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thumb_picasa"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/preferences/InvertedContrastPreview;->THUMBS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/preferences/WebViewPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/browser/preferences/WebViewPreview;->init(Landroid/content/Context;)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "<html><body style=\"width: 1000px\">"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, builder:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/android/browser/preferences/InvertedContrastPreview;->THUMBS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 62
    .local v4, thumb:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    const-string v5, "<br />"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const-string v5, "<img src=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v5, "content://com.android.browser.home/res/raw/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v5, "\" />&nbsp;"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    .end local v4           #thumb:Ljava/lang/String;
    :cond_1
    const-string v5, "</body></html>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/preferences/InvertedContrastPreview;->mHtml:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected updatePreview()V
    .locals 6

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/browser/preferences/InvertedContrastPreview;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/android/browser/preferences/InvertedContrastPreview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 80
    .local v1, ws:Landroid/webkit/WebSettings;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 81
    .local v0, bs:Lcom/android/browser/BrowserSettings;
    const-string v3, "inverted"

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInvertedRendering()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "true"

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "inverted_contrast"

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/android/browser/preferences/InvertedContrastPreview;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/preferences/InvertedContrastPreview;->mHtml:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    const-string v2, "false"

    goto :goto_1
.end method
