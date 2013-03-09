.class public Lcom/android/browser/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/IntentHandler$UrlData;
    }
.end annotation


# static fields
.field static final EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData; = null

.field static final GOOGLE_SEARCH_SOURCE_SUGGEST:Ljava/lang/String; = "browser-suggest"

.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/android/browser/Controller;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mTabControl:Lcom/android/browser/TabControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/IntentHandler;->EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    .line 64
    iget-object v0, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    .line 65
    invoke-virtual {p2}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 66
    return-void
.end method

.method protected static getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;
    .locals 14
    .parameter "intent"

    .prologue
    .line 228
    const-string v1, ""

    .line 229
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    .line 230
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 231
    .local v4, preloaded:Lcom/android/browser/PreloadedTabControl;
    const/4 v5, 0x0

    .line 232
    .local v5, preloadedSearchBoxQuery:Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x10

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_1

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "com.android.browser.headers"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 241
    .local v11, pairs:Landroid/os/Bundle;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 243
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    .restart local v2       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 246
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #pairs:Landroid/os/Bundle;
    :cond_1
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, id:Ljava/lang/String;
    const-string v0, "searchbox_query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-static {}, Lcom/android/browser/Preloader;->getInstance()Lcom/android/browser/Preloader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/browser/Preloader;->getPreloadedTab(Ljava/lang/String;)Lcom/android/browser/PreloadedTabControl;

    move-result-object v4

    .line 280
    .end local v6           #action:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    return-object v0

    .line 256
    .restart local v6       #action:Ljava/lang/String;
    :cond_3
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :cond_4
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_2

    .line 263
    invoke-static {v1}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v12, "&source=android-browser-suggest&"

    .line 266
    .local v12, searchSource:Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const/4 v13, 0x0

    .line 268
    .local v13, source:Ljava/lang/String;
    const-string v0, "app_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 269
    .local v7, appData:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 270
    const-string v0, "source"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 272
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    const-string v13, "unknown"

    .line 275
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&source=android-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z
    .locals 5
    .parameter "activity"
    .parameter "controller"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 290
    if-nez p2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v3

    .line 292
    :cond_1
    const/4 v2, 0x0

    .line 293
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string v3, "app_data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent_extra_data_key"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v2, v3, v4}, Lcom/android/browser/IntentHandler;->handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 301
    :cond_3
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    :cond_4
    const-string v3, "query"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .parameter "activity"
    .parameter "controller"
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v4, 0x0

    .line 319
    if-nez p2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v4

    .line 323
    :cond_1
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 328
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 335
    .local v1, newUrl:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 339
    :cond_2
    new-instance v5, Lcom/android/browser/IntentHandler$1;

    invoke-direct {v5, v0, v1}, Lcom/android/browser/IntentHandler$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/browser/IntentHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    :cond_3
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 349
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v2, :cond_0

    .line 350
    invoke-interface {v2, p0, v3, p3, p4}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 352
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    .line 69
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    .line 72
    .local v4, current:Lcom/android/browser/Tab;
    if-nez v4, :cond_2

    .line 74
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    .line 75
    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v4}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 83
    .local v5, flags:I
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/high16 v11, 0x10

    and-int/2addr v11, v5

    if-nez v11, :cond_0

    .line 88
    const-string v11, "show_bookmarks"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 89
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    sget-object v12, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v11, v12}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    const-string v12, "search"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    invoke-virtual {v11}, Landroid/app/SearchManager;->stopSearch()V

    .line 96
    const-string v11, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 98
    .local v1, activateVoiceSearch:Z
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz v1, :cond_0

    .line 104
    :cond_4
    invoke-virtual {v4}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 105
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v11, "query"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 112
    :cond_5
    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 114
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, logIntent:Landroid/content/Intent;
    const-string v11, "extra_event"

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v11, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    .end local v6           #logIntent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-static {v11, v12, p1}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 133
    invoke-static {p1}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v10

    .line 134
    .local v10, urlData:Lcom/android/browser/IntentHandler$UrlData;
    invoke-virtual {v10}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 135
    new-instance v10, Lcom/android/browser/IntentHandler$UrlData;

    .end local v10           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v10       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_7
    const-string v11, "create_new_tab"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 140
    :cond_8
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v10}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v7

    .line 141
    .local v7, t:Lcom/android/browser/Tab;
    goto/16 :goto_0

    .line 152
    .end local v7           #t:Lcom/android/browser/Tab;
    :cond_9
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, appId:Ljava/lang/String;
    iget-object v11, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "javascript:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 157
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v10}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 160
    :cond_a
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    :cond_b
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 165
    if-nez v1, :cond_c

    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 166
    :cond_c
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v2}, Lcom/android/browser/TabControl;->getTabFromAppId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 167
    .local v3, appTab:Lcom/android/browser/Tab;
    if-eqz v3, :cond_d

    .line 168
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v3, v10}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0

    .line 174
    .end local v3           #appTab:Lcom/android/browser/Tab;
    :cond_d
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/browser/TabControl;->findTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 175
    .restart local v3       #appTab:Lcom/android/browser/Tab;
    if-eqz v3, :cond_e

    .line 177
    invoke-virtual {v3, v2}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 178
    if-eq v4, v3, :cond_0

    .line 179
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v3}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto/16 :goto_0

    .line 188
    :cond_e
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v10}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v8

    .line 189
    .local v8, tab:Lcom/android/browser/Tab;
    if-eqz v8, :cond_0

    .line 190
    invoke-virtual {v8, v2}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x40

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    .line 192
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/browser/Tab;->setCloseOnBack(Z)V

    goto/16 :goto_0

    .line 197
    .end local v3           #appTab:Lcom/android/browser/Tab;
    .end local v8           #tab:Lcom/android/browser/Tab;
    :cond_f
    invoke-virtual {v10}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16

    iget-object v11, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "about:debug"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 199
    const-string v11, "about:debug.dom"

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 200
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 201
    :cond_10
    const-string v11, "about:debug.dom.file"

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 202
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 203
    :cond_11
    const-string v11, "about:debug.render"

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 204
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 205
    :cond_12
    const-string v11, "about:debug.render.file"

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 206
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 207
    :cond_13
    const-string v11, "about:debug.display"

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 208
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 209
    :cond_14
    const-string v11, "about:debug.nav"

    iget-object v12, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 210
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_0

    .line 212
    :cond_15
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 217
    :cond_16
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v4}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 221
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 222
    iget-object v11, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v11, v4, v10}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_0
.end method
