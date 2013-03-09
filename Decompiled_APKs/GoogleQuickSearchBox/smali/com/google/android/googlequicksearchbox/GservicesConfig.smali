.class public Lcom/google/android/googlequicksearchbox/GservicesConfig;
.super Lcom/google/android/googlequicksearchbox/Config;
.source "GservicesConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/GservicesConfig$IllegalGservicesKeyException;,
        Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExperimentIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGservicesQueryHandler:Landroid/os/Handler;

.field private final mGservicesQueryThread:Landroid/os/HandlerThread;

.field private final mUpdateCacheTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 374
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device_country"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->EXTRA_KEYS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;)V

    .line 388
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mExperimentIds:Ljava/util/Set;

    .line 390
    new-instance v1, Lcom/google/android/googlequicksearchbox/GservicesConfig$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig$1;-><init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;

    .line 398
    new-instance v1, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;-><init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;Lcom/google/android/googlequicksearchbox/GservicesConfig$1;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Gservices-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    .line 404
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 405
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;

    .line 406
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->updateCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/GservicesConfig;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/GservicesConfig;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static applyExperimentalSettings(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, config:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v1, experimentalConfig:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 796
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 797
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 799
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "qsb:set_for_experiment:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "qsb:set_for_experiment:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, keyToOverride:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qsb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 812
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #keyToOverride:Ljava/lang/String;
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 814
    return-object p0
.end method

.method static determineExperimentIds(ILjava/util/Map;)Ljava/util/Set;
    .locals 8
    .parameter "appVersion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, gservicesConfig:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "qsb:experiment_min_version"

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 762
    .local v3, experimentMinAppVersion:I
    const-string v6, "qsb:experiment_max_version"

    const v7, 0x7fffffff

    invoke-static {p1, v6, v7}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    .line 764
    .local v2, experimentMaxAppVersion:I
    if-lt p0, v3, :cond_0

    if-ge v2, p0, :cond_2

    .line 766
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 780
    :cond_1
    return-object v1

    .line 769
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 770
    .local v1, experimentIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 771
    .local v5, property:Ljava/lang/String;
    const-string v6, "qsb:experiment_id:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 774
    const-string v6, "qsb:experiment_id:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, experimentId:Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 776
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 518
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 521
    .restart local p2
    :cond_1
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    const/4 p2, 0x1

    goto :goto_0

    .line 523
    :cond_2
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getCache()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 443
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 444
    .local v0, before:J
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v0

    .line 446
    .local v2, delay:J
    const-string v5, "QSB.GservicesConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waited "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms for gservices cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v5

    long-to-int v6, v2

    invoke-interface {v5, v6}, Lcom/google/android/googlequicksearchbox/Logger;->logGservicesCacheWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 448
    .end local v0           #before:J
    .end local v2           #delay:J
    :catch_0
    move-exception v4

    .line 449
    .local v4, ie:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "QSB.GservicesConfig"

    const-string v6, "Interrupted while waiting for Gservices cache"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 440
    .end local v4           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 452
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mCache:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v5
.end method

.method private getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCache()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, config:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->verifyKey(Ljava/lang/String;)V

    .line 463
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCache()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getInt(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, gservicesConfig:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 500
    .end local p2
    :goto_0
    return p2

    .line 498
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 505
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 509
    .end local p2
    :goto_0
    return-wide p2

    .line 507
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 514
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "value"
    .parameter "list"

    .prologue
    const/16 v4, 0x2c

    const/4 v2, 0x0

    .line 641
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    :cond_0
    :goto_0
    return v2

    .line 644
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 646
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 648
    if-eqz v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 649
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 651
    .local v0, end:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 652
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateCache()V
    .locals 9

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 418
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "qsb:"

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 419
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/google/android/googlequicksearchbox/GservicesConfig;->EXTRA_KEYS:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 420
    .local v4, key:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 422
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->determineExperimentIds(ILjava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 428
    .local v2, experimentIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 429
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->applyExperimentalSettings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 432
    :cond_2
    monitor-enter p0

    .line 433
    :try_start_0
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mCache:Ljava/util/Map;

    .line 434
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mExperimentIds:Ljava/util/Set;

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit p0

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static verifyKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 485
    const-string v0, "qsb:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->EXTRA_KEYS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    return-void

    .line 488
    :cond_1
    new-instance v0, Lcom/google/android/googlequicksearchbox/GservicesConfig$IllegalGservicesKeyException;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig$IllegalGservicesKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 413
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->close()V

    .line 414
    return-void
.end method

.method public getCompleteServerClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 746
    const-string v0, "qsb:complete_server_client_id"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getCompleteServerClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConcurrentSourceQueries()I
    .locals 2

    .prologue
    .line 532
    const-string v0, "qsb:concurrent_source_queries"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getConcurrentSourceQueries()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDomainCheckServerUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 827
    const-string v0, "qsb:domain_check_server"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getDomainCheckServerUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getExperimentIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCache()Ljava/util/Map;

    .line 822
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mExperimentIds:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFixedSearchDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 888
    const-string v1, "device_country"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, countryCode:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 890
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getFixedSearchDomain()Ljava/lang/String;

    move-result-object v1

    .line 892
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCountryDomainOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHelpUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "activityHelpContext"

    .prologue
    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gqsb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, fromWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gsf/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getHttpConnectTimeout()I
    .locals 2

    .prologue
    .line 736
    const-string v0, "qsb:suggest_http_connect_timeout"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getHttpConnectTimeout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHttpReadTimeout()I
    .locals 2

    .prologue
    .line 741
    const-string v0, "qsb:suggest_http_read_timeout"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getHttpReadTimeout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatencyLogFrequency()I
    .locals 2

    .prologue
    .line 609
    const-string v0, "qsb:latency_log_frequency"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getLatencyLogFrequency()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getManageSearchHistoryUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 713
    const-string v0, "qsb:manage_history_url_format"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getManageSearchHistoryUrlFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxConcurrentSourceQueries()I
    .locals 2

    .prologue
    .line 538
    const-string v0, "qsb:max_concurrent_source_queries"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxConcurrentSourceQueries()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNewSourcesNotificationCount()I
    .locals 2

    .prologue
    .line 718
    const-string v0, "qsb:max_new_sources_notification_count"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxNewSourcesNotificationCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNewSourcesNotificationHours()I
    .locals 2

    .prologue
    .line 724
    const-string v0, "qsb:max_new_sources_notification_hours"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxNewSourcesNotificationHours()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxPromotedSuggestions()I
    .locals 2

    .prologue
    .line 568
    const-string v0, "qsb:max_promoted_suggestions"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxResultsPerSource()I
    .locals 2

    .prologue
    .line 574
    const-string v0, "qsb:max_results_per_source"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxStatAgeMillis()J
    .locals 3

    .prologue
    .line 585
    const-string v0, "qsb:max_stat_age_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxZeroQueryResultsPerSource()I
    .locals 2

    .prologue
    .line 579
    const-string v0, "qsb:max_zero_query_results_per_source"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxZeroQueryResultsPerSource()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaximumSuggestionsAboveSummons()I
    .locals 2

    .prologue
    .line 556
    const-string v0, "qsb:max_suggestions_above_summons"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaximumSuggestionsAboveSummons()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinClicksForSourceRanking()I
    .locals 2

    .prologue
    .line 591
    const-string v0, "qsb:min_clicks_for_source_ranking"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMinClicksForSourceRanking()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinimumSuggestionsAboveSummons()I
    .locals 2

    .prologue
    .line 550
    const-string v0, "qsb:min_suggestions_above_summons"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumSuggestionsAboveSummons()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinimumVisibleSummons()I
    .locals 2

    .prologue
    .line 562
    const-string v0, "qsb:min_visible_summons"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumVisibleSummons()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNewConcurrentSourceQueryDelay()I
    .locals 2

    .prologue
    .line 544
    const-string v0, "qsb:new_concurrent_source_query_delay"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getNewConcurrentSourceQueryDelay()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPublishResultDelayMillis()J
    .locals 3

    .prologue
    .line 621
    const-string v0, "qsb:publish_result_delay_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getPublishResultDelayMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQueryThreadPriority()I
    .locals 2

    .prologue
    .line 597
    const-string v0, "qsb:query_thread_priority"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getQueryThreadPriority()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRefreshSearchHistoryDelay()J
    .locals 3

    .prologue
    .line 832
    const-string v0, "qsb:refresh_search_history_delay"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getRefreshSearchHistoryDelay()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoveFromHistoryButtonDisplayDelay()J
    .locals 3

    .prologue
    .line 882
    const-string v0, "qsb:remove_from_history_button_delay"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getRemoveFromHistoryButtonDisplayDelay()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchBoxPageUrlFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 852
    const-string v0, "qsb:searchbox_page_for_preload_format"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getSearchBoxPageUrlFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceTimeoutMillis()J
    .locals 3

    .prologue
    .line 603
    const-string v0, "qsb:source_timeout_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getSourceTimeoutMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTypingUpdateSuggestionsDelayMillis()J
    .locals 3

    .prologue
    .line 614
    const-string v0, "qsb:typing_update_suggestions_delay_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getTypingUpdateSuggestionsDelayMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoiceSearchInstallUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    const-string v0, "qsb:voice_app_install_uri"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchInstallUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSearchPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 627
    const-string v0, "qsb:voice_app_package_name"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDebuggingEnabled()Z
    .locals 2

    .prologue
    .line 872
    const-string v0, "qsb:debugging_enabled"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->isDebuggingEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDropBoxLoggingEnabled()Z
    .locals 2

    .prologue
    .line 751
    const-string v0, "qsb:write_dropbox_logs"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPsuggestAvailable()Z
    .locals 2

    .prologue
    .line 837
    const-string v0, "qsb:offer_psuggest"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 657
    const-string v2, "qsb:default_sources"

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, trustedNames:Ljava/lang/String;
    const-string v2, "qsb:default_source_uris"

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, trustedUris:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 660
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 663
    :goto_0
    return v2

    .line 660
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 663
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    const-string v1, "qsb:ignored_sources"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, ignored:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 683
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 685
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 681
    .end local v0           #ignored:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSourceTrusted(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 4
    .parameter "source"

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    const-string v2, "qsb:trusted_sources"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, trustedNames:Ljava/lang/String;
    const-string v2, "qsb:trusted_source_uris"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, trustedUris:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 694
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 697
    :goto_0
    monitor-exit p0

    return v2

    .line 694
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 697
    :cond_3
    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->isSourceTrusted(Lcom/google/android/googlequicksearchbox/Source;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 691
    .end local v0           #trustedNames:Ljava/lang/String;
    .end local v1           #trustedUris:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isZeroQuerySource(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 669
    const-string v2, "qsb:zero_query_sources"

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, zeroQueryNames:Ljava/lang/String;
    const-string v2, "qsb:zero_query_source_uris"

    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, zeroQueryUris:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 672
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 675
    :goto_0
    return v2

    .line 672
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 675
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->isZeroQuerySource(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v2

    goto :goto_0
.end method

.method public shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 842
    const-string v1, "qsb:web_history_packages"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, webHistoryPackages:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 844
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 846
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public shouldDedupeUserQuery()Z
    .locals 2

    .prologue
    .line 877
    const-string v0, "qsb:dedupe_user_query"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->shouldDedupeUserQuery()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldFilterGoogleDomainPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 897
    const-string v1, "qsb:google_search_paths"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, ignoredPaths:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 899
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 901
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->shouldFilterGoogleDomainPath(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public shouldPreloadOnMobileNetwork()Z
    .locals 2

    .prologue
    .line 862
    const-string v0, "qsb:preload_on_mobile"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->shouldPreloadOnMobileNetwork()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldPreloadOnWifi()Z
    .locals 2

    .prologue
    .line 857
    const-string v0, "qsb:preload_on_wifi"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->shouldPreloadOnWifi()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldPreloadWhileRoaming()Z
    .locals 2

    .prologue
    .line 867
    const-string v0, "qsb:preload_while_roaming"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->shouldPreloadWhileRoaming()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showSuggestionsForZeroQuery()Z
    .locals 2

    .prologue
    .line 703
    const-string v0, "qsb:show_zero_query_suggestions"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->showSuggestionsForZeroQuery()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showSummonsForZeroQuery()Z
    .locals 2

    .prologue
    .line 708
    const-string v0, "qsb:show_zero_query_shortcuts"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->showSummonsForZeroQuery()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
