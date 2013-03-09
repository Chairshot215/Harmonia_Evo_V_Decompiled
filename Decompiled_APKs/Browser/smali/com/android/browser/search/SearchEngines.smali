.class public Lcom/android/browser/search/SearchEngines;
.super Ljava/lang/Object;
.source "SearchEngines.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngines"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/browser/search/SearchEngines;->getDefaultSearchEngine(Landroid/content/Context;)Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 57
    .local v0, defaultSearchEngine:Lcom/android/browser/search/SearchEngine;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    .end local v0           #defaultSearchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_0
    :goto_0
    return-object v0

    .line 61
    .restart local v0       #defaultSearchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/browser/search/SearchEngines;->getSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngineInfo;

    move-result-object v1

    .line 62
    .local v1, searchEngineInfo:Lcom/android/browser/search/SearchEngineInfo;
    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lcom/android/browser/search/OpenSearchSearchEngine;

    .end local v0           #defaultSearchEngine:Lcom/android/browser/search/SearchEngine;
    invoke-direct {v0, p0, v1}, Lcom/android/browser/search/OpenSearchSearchEngine;-><init>(Landroid/content/Context;Lcom/android/browser/search/SearchEngineInfo;)V

    goto :goto_0
.end method

.method public static getDefaultSearchEngine(Landroid/content/Context;)Lcom/android/browser/search/SearchEngine;
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInstantSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/browser/InstantSearchEngine;

    invoke-static {p0}, Lcom/android/browser/search/DefaultSearchEngine;->create(Landroid/content/Context;)Lcom/android/browser/search/DefaultSearchEngine;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/InstantSearchEngine;-><init>(Landroid/content/Context;Lcom/android/browser/search/SearchEngine;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/browser/search/DefaultSearchEngine;->create(Landroid/content/Context;)Lcom/android/browser/search/DefaultSearchEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngineInfo;
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lcom/android/browser/search/SearchEngineInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/search/SearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    const-string v1, "SearchEngines"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load search engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSearchEngineInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v4, searchEngineInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/search/SearchEngineInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 45
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f08005a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, searchEngines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 47
    aget-object v2, v5, v0

    .line 48
    .local v2, name:Ljava/lang/String;
    new-instance v1, Lcom/android/browser/search/SearchEngineInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/search/SearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .local v1, info:Lcom/android/browser/search/SearchEngineInfo;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v1           #info:Lcom/android/browser/search/SearchEngineInfo;
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-object v4
.end method
