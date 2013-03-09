.class public Lcom/google/android/finsky/library/LibraryReplicatorsImpl;
.super Ljava/lang/Object;
.source "LibraryReplicatorsImpl.java"

# interfaces
.implements Lcom/google/android/finsky/library/LibraryReplicators;


# instance fields
.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

.field private final mEnableDebugging:Z

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicators$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mReplicators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/library/LibraryReplicator;",
            ">;"
        }
    .end annotation
.end field

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/Libraries;Landroid/os/Handler;Landroid/os/Handler;Z)V
    .locals 1
    .parameter "dfeApiProvider"
    .parameter "sqLiteLibrary"
    .parameter "libraries"
    .parameter "notificationHandler"
    .parameter "backgroundHandler"
    .parameter "enableDebugging"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;

    .line 29
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mListeners:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

    .line 36
    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    .line 37
    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 38
    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mNotificationHandler:Landroid/os/Handler;

    .line 39
    iput-object p5, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mBackgroundHandler:Landroid/os/Handler;

    .line 40
    iput-boolean p6, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mEnableDebugging:Z

    .line 41
    invoke-virtual {p0}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->reinitialize()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->notifyListeners(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized notifyListeners(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    .locals 3
    .parameter "accountLibrary"
    .parameter "libraryId"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/LibraryReplicators$Listener;

    .line 77
    .local v1, listener:Lcom/google/android/finsky/library/LibraryReplicators$Listener;
    invoke-interface {v1, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicators$Listener;->onMutationsApplied(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/finsky/library/LibraryReplicators$Listener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 79
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/finsky/library/LibraryReplicators$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "update"
    .parameter "debugTag"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$4;-><init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 147
    const-string v2, "FinskyLibrary"

    const-string v3, "| LibraryReplicators {"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/google/android/finsky/library/LibraryReplicator;

    .line 149
    .local v1, replicator:Lcom/google/android/finsky/library/LibraryReplicator;
    const-string v2, "|   "

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->dumpState(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v1           #replicator:Lcom/google/android/finsky/library/LibraryReplicator;
    :cond_0
    const-string v2, "FinskyLibrary"

    const-string v3, "| }"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public declared-synchronized reinitialize()V
    .locals 10

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 58
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v8

    .line 59
    .local v8, accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/library/AccountLibrary;

    .line 60
    .local v3, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v3}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    .line 61
    .local v7, account:Landroid/accounts/Account;
    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

    iget-object v2, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/api/DfeApiProvider;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mNotificationHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mBackgroundHandler:Landroid/os/Handler;

    iget-boolean v6, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mEnableDebugging:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryReplicator;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;Z)V

    .line 64
    .local v0, replicator:Lcom/google/android/finsky/library/LibraryReplicator;
    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;

    invoke-direct {v1, p0, v3}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$1;-><init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Lcom/google/android/finsky/library/AccountLibrary;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->addListener(Lcom/google/android/finsky/library/LibraryReplicator$Listener;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mReplicators:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    .end local v0           #replicator:Lcom/google/android/finsky/library/LibraryReplicator;
    .end local v3           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v7           #account:Landroid/accounts/Account;
    .end local v8           #accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 72
    .restart local v8       #accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public replicateAccount(Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "libraryIds"
    .parameter "successRunnable"
    .parameter "debugTag"

    .prologue
    .line 112
    iget-object v6, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$3;-><init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public replicateAllAccounts(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .parameter "successRunnable"
    .parameter "debugTag"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl$2;-><init>(Lcom/google/android/finsky/library/LibraryReplicatorsImpl;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
