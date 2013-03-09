.class public Lcom/android/browser/PreloadedTabControl;
.super Ljava/lang/Object;
.source "PreloadedTabControl.java"


# static fields
.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "PreloadedTabControl"


# instance fields
.field private mDestroyed:Z

.field private mLastQuery:Ljava/lang/String;

.field final mTab:Lcom/android/browser/Tab;


# direct methods
.method public constructor <init>(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "PreloadedTabControl"

    const-string v1, "PreloadedTabControl.<init>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PreloadedTabControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/browser/PreloadedTabControl;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;

    return-object p1
.end method

.method private maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V
    .locals 3
    .parameter "query"
    .parameter "sb"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    if-eqz p2, :cond_1

    .line 45
    const-string v0, "PreloadedTabControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing searchbox query to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    .line 47
    invoke-interface {p2, p1}, Landroid/webkit/SearchBox;->setQuery(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/android/browser/PreloadedTabControl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/PreloadedTabControl$1;-><init>(Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/webkit/SearchBox;->onchange(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "PreloadedTabControl"

    const-string v1, "Cannot set query: no searchbox interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "PreloadedTabControl"

    const-string v1, "PreloadedTabControl.destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/PreloadedTabControl;->mDestroyed:Z

    .line 145
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->destroy()V

    .line 146
    return-void
.end method

.method public getTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "PreloadedTabControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public loadUrlIfChanged(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, currentUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    const-string v1, "PreloadedTabControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUrlIfChanged\nnew: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/PreloadedTabControl;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    :cond_1
    return-void

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public searchBoxCancel()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    .line 110
    .local v0, sb:Landroid/webkit/SearchBox;
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/PreloadedTabControl;->mLastQuery:Ljava/lang/String;

    .line 112
    new-instance v1, Lcom/android/browser/PreloadedTabControl$3;

    invoke-direct {v1, p0}, Lcom/android/browser/PreloadedTabControl$3;-><init>(Lcom/android/browser/PreloadedTabControl;)V

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->oncancel(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method public searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .parameter "query"
    .parameter "fallbackUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, fallbackHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v1

    .line 71
    .local v1, sb:Landroid/webkit/SearchBox;
    if-nez v1, :cond_0

    .line 73
    const-string v2, "PreloadedTabControl"

    const-string v3, "No searchbox, cannot submit query"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 105
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/browser/PreloadedTabControl;->maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V

    .line 77
    const-string v2, "PreloadedTabControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Submitting query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, currentUrl:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/PreloadedTabControl$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/android/browser/PreloadedTabControl$2;-><init>(Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/webkit/SearchBox;->onsubmit(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 105
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/browser/PreloadedTabControl;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/PreloadedTabControl;->maybeSetQuery(Ljava/lang/String;Landroid/webkit/SearchBox;)V

    .line 66
    return-void
.end method
