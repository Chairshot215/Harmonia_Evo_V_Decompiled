.class Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;
.super Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;
.source "MultiUserCoordinatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/installer/MultiUserCoordinatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    invoke-direct {p0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->notifyReleased(Ljava/lang/String;)V

    return-void
.end method

.method private notifyReleased(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    .line 196
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 199
    .local v3, listeners:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;->packageReleased(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Could not notify listener for user %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listeners:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #listeners:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;>;"
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    return-void
.end method

.method private notifyTaken(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    .line 179
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 180
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 182
    .local v3, listeners:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;->packageAcquired(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Could not notify listener for user %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listeners:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #listeners:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/UserHandle;Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;>;>;"
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    return-void
.end method


# virtual methods
.method public acquirePackage(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->DEBUG_FORCE_BUSY_WITH_DELAY:Z
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$100(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mDebugPackageJustReleased:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$200(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1$1;-><init>(Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;Ljava/lang/String;)V

    const-wide/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :goto_0
    return v2

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mDebugPackageJustReleased:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$202(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 99
    .local v0, callerHandle:Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v5, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 101
    .local v1, owner:Landroid/os/UserHandle;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    const-string v3, "User=%s requested=%s granted=false owned by=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    monitor-exit v4

    goto :goto_0

    .line 109
    .end local v1           #owner:Landroid/os/UserHandle;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 106
    .restart local v1       #owner:Landroid/os/UserHandle;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "User=%s requested=%s granted=true"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->notifyTaken(Ljava/lang/String;)V

    move v2, v3

    .line 111
    goto :goto_0
.end method

.method public registerListener(Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 69
    .local v0, callerHandle:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    monitor-exit v2

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseAllPackages()V
    .locals 10

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 151
    .local v0, callerHandle:Landroid/os/UserHandle;
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 152
    .local v5, releasedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 154
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    monitor-exit v7

    .line 173
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 159
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/UserHandle;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v6, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "User=%s removed=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v6, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 165
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/UserHandle;>;"
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/UserHandle;>;>;"
    .end local v4           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/UserHandle;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    .restart local v4       #packageName:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->notifyReleased(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releasePackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 120
    .local v0, callerHandle:Landroid/os/UserHandle;
    const/4 v1, 0x1

    .line 121
    .local v1, notifyReleased:Z
    iget-object v3, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 123
    .local v2, owner:Landroid/os/UserHandle;
    if-nez v2, :cond_1

    .line 126
    const-string v3, "User=%s released=%s *** was not previously acquired"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->notifyReleased(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void

    .line 128
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;->this$0:Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    #getter for: Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "User=%s released=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    .end local v2           #owner:Landroid/os/UserHandle;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 134
    .restart local v2       #owner:Landroid/os/UserHandle;
    :cond_2
    :try_start_2
    const-string v3, "User=%s released=%s *** owned by=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method
