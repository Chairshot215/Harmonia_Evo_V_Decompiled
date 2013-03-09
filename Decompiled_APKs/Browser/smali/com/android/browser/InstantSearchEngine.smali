.class public Lcom/android/browser/InstantSearchEngine;
.super Ljava/lang/Object;
.source "InstantSearchEngine.java"

# interfaces
.implements Lcom/android/browser/search/SearchEngine;
.implements Lcom/android/browser/UI$DropdownChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;,
        Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;
    }
.end annotation


# static fields
.field private static final COLUMNS_WITHOUT_DESCRIPTION:[Ljava/lang/String; = null

.field private static final COLUMN_INDEX_ICON:I = 0x2

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_QUERY:I = 0x1

.field private static final COLUMN_INDEX_TEXT_1:I = 0x3

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "Browser.InstantSearchEngine"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mHeight:I

.field private mInstantBaseUrl:Ljava/lang/String;

.field private final mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

.field private mSearchBox:Landroid/webkit/SearchBox;

.field private final mWrapped:Lcom/android/browser/search/SearchEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/InstantSearchEngine;->COLUMNS_WITHOUT_DESCRIPTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/search/SearchEngine;)V
    .locals 2
    .parameter "context"
    .parameter "wrapped"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;-><init>(Lcom/android/browser/InstantSearchEngine;Lcom/android/browser/InstantSearchEngine$1;)V

    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/InstantSearchEngine;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/InstantSearchEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getInstantBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/browser/InstantSearchEngine;->COLUMNS_WITHOUT_DESCRIPTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentWebview()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInstantBaseUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mInstantBaseUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 339
    const-string v1, "{CID}"

    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/provider/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mInstantBaseUrl:Ljava/lang/String;

    .line 345
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mInstantBaseUrl:Ljava/lang/String;

    return-object v1
.end method

.method private isInstantPage()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v0

    .line 198
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v5

    .line 202
    :cond_1
    iget-object v6, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v6}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, currentUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 206
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, host:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 211
    const-string v6, "www.google."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/search"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/webhp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private loadInstantPage()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/browser/InstantSearchEngine$1;

    invoke-direct {v1, p0}, Lcom/android/browser/InstantSearchEngine$1;-><init>(Lcom/android/browser/InstantSearchEngine;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method private rescaleHeight(I)I
    .locals 3
    .parameter "height"

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v0

    .line 310
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    .line 311
    const/4 p1, 0x0

    .line 319
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 314
    .restart local p1
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    .line 315
    .local v1, scale:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 316
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0
.end method

.method private switchSearchboxIfNeeded()V
    .locals 4

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;

    move-result-object v0

    .line 179
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v1

    .line 184
    .local v1, searchBox:Landroid/webkit/SearchBox;
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eq v1, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget-object v3, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-interface {v2, v3}, Landroid/webkit/SearchBox;->removeSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 187
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-virtual {v2}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->clear()V

    .line 189
    :cond_2
    iput-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    .line 190
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget-object v3, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-interface {v2, v3}, Landroid/webkit/SearchBox;->addSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->removeSearchBoxListener(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-virtual {v0}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->clear()V

    .line 290
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 291
    return-void
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "google"

    return-object v0
.end method

.method public getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "context"
    .parameter "query"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 239
    if-nez p2, :cond_0

    .line 272
    :goto_0
    return-object v0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->isInstantPage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->loadInstantPage()V

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->switchSearchboxIfNeeded()V

    .line 249
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, p0}, Lcom/android/browser/Controller;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 251
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-nez v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    iget v2, p0, Lcom/android/browser/InstantSearchEngine;->mHeight:I

    invoke-interface {v1, v3, v3, v3, v2}, Landroid/webkit/SearchBox;->setDimensions(IIII)V

    .line 256
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1, v0}, Landroid/webkit/SearchBox;->onresize(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    .line 264
    :goto_1
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1, p2}, Landroid/webkit/SearchBox;->setQuery(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1, v0}, Landroid/webkit/SearchBox;->onchange(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    new-instance v0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1, v3}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    goto :goto_1

    .line 272
    :cond_4
    new-instance v0, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;

    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mListener:Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;

    invoke-virtual {v1, p2}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->tryWaitForSuggestions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/InstantSearchEngine$SuggestionsCursor;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onNewDropdownDimensions(I)V
    .locals 3
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/browser/InstantSearchEngine;->rescaleHeight(I)I

    move-result v0

    .line 326
    .local v0, rescaledHeight:I
    iget v1, p0, Lcom/android/browser/InstantSearchEngine;->mHeight:I

    if-eq v0, v1, :cond_0

    .line 327
    iput v0, p0, Lcom/android/browser/InstantSearchEngine;->mHeight:I

    .line 328
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v1, v2, v2, v2, v0}, Landroid/webkit/SearchBox;->setDimensions(IIII)V

    .line 330
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/webkit/SearchBox;->onresize(Landroid/webkit/SearchBox$SearchBoxListener;)V

    .line 333
    :cond_0
    return-void
.end method

.method public setController(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/InstantSearchEngine;->mController:Lcom/android/browser/Controller;

    .line 61
    return-void
.end method

.method public startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "query"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->switchSearchboxIfNeeded()V

    .line 81
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/InstantSearchEngine;->isInstantPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mWrapped:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    invoke-interface {v0, p2}, Landroid/webkit/SearchBox;->setQuery(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->setVerbatim(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine;->mSearchBox:Landroid/webkit/SearchBox;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/SearchBox;->onsubmit(Landroid/webkit/SearchBox$SearchBoxListener;)V

    goto :goto_0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public supportsVoiceSearch()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantSearchEngine {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wantsEmptyQuery()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method
