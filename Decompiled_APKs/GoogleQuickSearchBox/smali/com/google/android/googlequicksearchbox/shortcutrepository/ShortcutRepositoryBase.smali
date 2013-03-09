.class public abstract Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;
.super Ljava/lang/Object;
.source "ShortcutRepositoryBase.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;


# instance fields
.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

.field private final mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/googlequicksearchbox/Clock;Landroid/database/DataSetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "refresher"
    .parameter "uiThread"
    .parameter "executor"
    .parameter "clock"
    .parameter "searchHistoryChangedObservable"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 56
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    .line 57
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mUiThread:Landroid/os/Handler;

    .line 58
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 59
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 60
    iput-object p7, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    .line 61
    return-void
.end method

.method protected static createNameToSourcesMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, sources:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/android/googlequicksearchbox/Source;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 117
    .local v0, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 118
    .local v2, s:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 120
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Source;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    return-object v0
.end method

.method public getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    return-object v0
.end method

.method public getUiThread()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method protected isCompatibleWithSources(Ljava/util/Map;Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter "name"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, sources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;>;"
    const/4 v1, 0x0

    .line 96
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/Source;

    .line 97
    .local v0, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    invoke-interface {v0, p3}, Lcom/google/android/googlequicksearchbox/Source;->isVersionCodeCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected notifyChange()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mSearchHistoryChangedObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 67
    :cond_0
    return-void
.end method

.method public reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isShortcuttable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher;->markShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryBase;->reportClickAtTime(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected abstract reportClickAtTime(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;J)V
.end method
