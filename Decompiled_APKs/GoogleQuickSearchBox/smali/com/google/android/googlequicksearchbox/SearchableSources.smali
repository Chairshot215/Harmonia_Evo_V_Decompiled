.class public Lcom/google/android/googlequicksearchbox/SearchableSources;
.super Ljava/lang/Object;
.source "SearchableSources.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Sources;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private final mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mInternalSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservable:Landroid/database/DataSetObservable;

.field private final mSearchManager:Landroid/app/SearchManager;

.field private mSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Ljava/util/List;Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 1
    .parameter "context"
    .parameter "uiThread"
    .parameter "iconLoaderExecutor"
    .parameter
    .parameter "suggestionFilterProvider"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/QsbContext;",
            "Landroid/os/Handler;",
            "Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;",
            "Lcom/google/android/googlequicksearchbox/Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p4, internalSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mObservable:Landroid/database/DataSetObservable;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 71
    const-string v0, "search"

    invoke-virtual {p1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSearchManager:Landroid/app/SearchManager;

    .line 72
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mUiThread:Landroid/os/Handler;

    .line 73
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 74
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mInternalSources:Ljava/util/List;

    .line 75
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

    .line 76
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSourceList:Ljava/util/List;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, sources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mObservable:Landroid/database/DataSetObservable;

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    .line 82
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 83
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSearchManager:Landroid/app/SearchManager;

    .line 84
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mUiThread:Landroid/os/Handler;

    .line 85
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 86
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 87
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mInternalSources:Ljava/util/List;

    .line 88
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSourceList:Ljava/util/List;

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Source;

    .line 95
    .local v1, source:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 96
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 98
    .end local v1           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    return-void
.end method

.method private addSearchableSources()V
    .locals 8

    .prologue
    .line 132
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v6}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, searchables:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    if-nez v2, :cond_0

    .line 134
    const-string v6, "QSB.SearchableSources"

    const-string v7, "getSearchablesInGlobalSearch() returned null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v5, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    .line 141
    .local v1, searchable:Landroid/app/SearchableInfo;
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchableSources;->createSearchableSource(Landroid/app/SearchableInfo;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v3

    .line 142
    .local v3, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v6, v3}, Lcom/google/android/googlequicksearchbox/Config;->isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Source;->isReadable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 146
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 150
    .end local v1           #searchable:Landroid/app/SearchableInfo;
    .end local v3           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_3
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mInternalSources:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/Source;

    .line 151
    .restart local v3       #source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    .end local v3           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_4
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    monitor-enter v7

    .line 156
    :try_start_0
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 157
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 158
    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSourceList:Ljava/util/List;

    .line 159
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private createSearchableSource(Landroid/app/SearchableInfo;)Lcom/google/android/googlequicksearchbox/Source;
    .locals 9
    .parameter "searchable"

    .prologue
    const/4 v8, 0x0

    .line 163
    if-nez p1, :cond_0

    move-object v0, v8

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchableSource;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSources;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSources;->getIconLoaderExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSuggestionFilterProvider:Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/SearchableSource;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "QSB.SearchableSources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 169
    goto :goto_0
.end method

.method private getIconLoaderExecutor()Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method private getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;
    .locals 1
    .parameter "name"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchableSources;->getSourceIfExists(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/Source;

    return-object v0
.end method

.method public getSourceIfExists(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;
    .locals 2
    .parameter "name"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/Source;

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSources()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mSourceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchableSources;->addSearchableSources()V

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchableSources;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 129
    return-void
.end method
