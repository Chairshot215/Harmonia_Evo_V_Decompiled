.class public Lcom/google/android/talk/SettingsCache;
.super Ljava/lang/Object;
.source "SettingsCache.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/google/android/talk/SettingsCache;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mAccountsChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mSettingsQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/SettingsCache;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/talk/SettingsCache$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/SettingsCache$1;-><init>(Lcom/google/android/talk/SettingsCache;)V

    iput-object v0, p0, Lcom/google/android/talk/SettingsCache;->mAccountsChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/google/android/talk/SettingsCache;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/SettingsCache;->mSettingsQueryMap:Ljava/util/Map;

    .line 90
    iget-object v0, p0, Lcom/google/android/talk/SettingsCache;->mAccountsChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/talk/SettingsCache;->sInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/SettingsCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/talk/SettingsCache;->reset()V

    return-void
.end method

.method public static destroyAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v0, Lcom/google/android/talk/SettingsCache;->sInstance:Lcom/google/android/talk/SettingsCache;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/google/android/talk/SettingsCache;->sInstance:Lcom/google/android/talk/SettingsCache;

    invoke-direct {v0}, Lcom/google/android/talk/SettingsCache;->reset()V

    .line 97
    sget-object v0, Lcom/google/android/talk/SettingsCache;->sInstance:Lcom/google/android/talk/SettingsCache;

    iput-object v1, v0, Lcom/google/android/talk/SettingsCache;->mSettingsQueryMap:Ljava/util/Map;

    .line 98
    sput-object v1, Lcom/google/android/talk/SettingsCache;->sInstance:Lcom/google/android/talk/SettingsCache;

    .line 100
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/google/android/talk/SettingsCache;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/talk/SettingsCache;->sInstance:Lcom/google/android/talk/SettingsCache;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 103
    sget-object v1, Lcom/google/android/talk/SettingsCache;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    new-instance v0, Lcom/google/android/talk/SettingsCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/SettingsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/talk/SettingsCache;->sInstance:Lcom/google/android/talk/SettingsCache;

    .line 105
    sput-object p1, Lcom/google/android/talk/SettingsCache;->mHandler:Landroid/os/Handler;

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized reset()V
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/SettingsCache;->mSettingsQueryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .line 58
    .local v1, queryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    invoke-virtual {v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;>;"
    .end local v1           #queryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 60
    .restart local v0       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/SettingsCache;->mSettingsQueryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 6
    .parameter "accountId"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/SettingsCache;->mSettingsQueryMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .line 73
    .local v0, queryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .end local v0           #queryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    iget-object v1, p0, Lcom/google/android/talk/SettingsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v5, Lcom/google/android/talk/SettingsCache;->mHandler:Landroid/os/Handler;

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;-><init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V

    .line 81
    .restart local v0       #queryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    iget-object v1, p0, Lcom/google/android/talk/SettingsCache;->mSettingsQueryMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-object v0

    .line 72
    .end local v0           #queryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
