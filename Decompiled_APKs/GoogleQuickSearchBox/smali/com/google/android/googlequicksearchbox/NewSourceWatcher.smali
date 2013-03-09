.class public Lcom/google/android/googlequicksearchbox/NewSourceWatcher;
.super Landroid/database/DataSetObserver;
.source "NewSourceWatcher.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;


# static fields
.field static final NEW_SOURCES_NOTIFICATION_KEY:Ljava/lang/String; = "new_sources"


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mKnownSourceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewSourceLabels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;

.field private final mWriteSettingTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)V
    .locals 1
    .parameter "context"
    .parameter "sources"
    .parameter "settings"
    .parameter "config"
    .parameter "executor"
    .parameter "qsbNotificationsSource"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 66
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 67
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 68
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 69
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    .line 70
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mNewSourceLabels:Ljava/util/Set;

    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/Sources;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    new-instance v0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher$1;-><init>(Lcom/google/android/googlequicksearchbox/NewSourceWatcher;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mWriteSettingTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;

    .line 85
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getKnownSourceNames()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    .line 88
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->rememberAllSources()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->onChanged()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/NewSourceWatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->writeKnownSourceNamesSetting()V

    return-void
.end method

.method private getNotificationText1(Ljava/util/Set;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, newSourceLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const v0, 0x7f0b0034

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0b0033

    goto :goto_0
.end method

.method private getNotificationText2(Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, newSourceLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 175
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 176
    .local v1, labels:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v3, :cond_1

    .line 177
    aget-object v2, v1, v4

    .line 182
    :goto_1
    return-object v2

    .end local v1           #labels:[Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 174
    goto :goto_0

    .line 179
    .restart local v1       #labels:[Ljava/lang/String;
    :cond_1
    array-length v2, v1

    if-ne v2, v5, :cond_2

    const v0, 0x7f0b0035

    .line 182
    .local v0, id:I
    :goto_2
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v1, v4

    aput-object v6, v5, v4

    aget-object v4, v1, v3

    aput-object v4, v5, v3

    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 179
    .end local v0           #id:I
    :cond_2
    const v0, 0x7f0b0036

    goto :goto_2
.end method

.method private getSearchableItemsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    return-object v0
.end method

.method private notifyNewSources(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, newSourceLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->source(Lcom/google/android/googlequicksearchbox/Source;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->getNotificationText1(Ljava/util/Set;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->getNotificationText2(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    const-string v1, "_-1"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shortcutId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->getSearchableItemsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->internalIntent(Landroid/content/Intent;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    .line 162
    .local v2, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    const-string v1, "new_sources"

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getMaxNewSourcesNotificationCount()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->getMaxNewSourcesNotificationHours()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->addNotification(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;IILcom/google/android/googlequicksearchbox/QsbNotificationsSource$NotificationListener;)V

    .line 165
    return-void
.end method

.method private rememberAllSources()V
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    .line 141
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Source;

    .line 142
    .local v1, s:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Source;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mWriteSettingTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 146
    return-void
.end method

.method private declared-synchronized writeKnownSourceNamesSetting()V
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setKnownSourceNames(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isNewSource(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isInternalSource()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notificationExpired(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->rememberAllSources()V

    .line 110
    return-void
.end method

.method public onChanged()V
    .locals 5

    .prologue
    .line 115
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 116
    .local v1, newKnownSourceNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mNewSourceLabels:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 117
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 119
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->isNewSource(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mNewSourceLabels:Ljava/util/Set;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    monitor-enter p0

    .line 127
    :try_start_0
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mKnownSourceNames:Ljava/util/Set;

    .line 128
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mWriteSettingTask:Lcom/google/android/googlequicksearchbox/util/NamedTask;

    invoke-interface {v3, v4}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mNewSourceLabels:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mNewSourceLabels:Ljava/util/Set;

    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->notifyNewSources(Ljava/util/Set;)V

    .line 134
    :cond_2
    return-void

    .line 129
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public searchableItemsShown()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->rememberAllSources()V

    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->mQsbNotificationsSource:Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;

    const-string v1, "new_sources"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;->clearSuggestion(Ljava/lang/String;)V

    .line 103
    return-void
.end method
