.class public Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
.super Ljava/lang/Object;
.source "WriteThroughKeyValueStore.java"

# interfaces
.implements Lcom/google/android/finsky/utils/persistence/KeyValueStore;


# static fields
.field private static final sWriteThread:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

.field private mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mOnCompleteListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V
    .locals 2
    .parameter "backingStore"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    .line 30
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/Set;

    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Lcom/google/android/finsky/utils/persistence/KeyValueStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->handleDataLoaded(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ensureOnMainThread()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to access data off of the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method

.method private ensureReadyAndOnMainThread()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to access data before initializing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureOnMainThread()V

    .line 152
    return-void
.end method

.method private fetchAllFromBackingStoreAsync()V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 174
    return-void
.end method

.method private handleDataLoaded(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, loadedBackingData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    .line 185
    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 186
    .local v1, listener:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 189
    .end local v1           #listener:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 190
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    .line 99
    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/lang/String;)V

    .line 106
    .local v0, operation:Ljava/lang/Runnable;
    sget-object v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 107
    return-void
.end method

.method public fetchAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public forceSynchronousLoad()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureOnMainThread()V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 82
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    .line 92
    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 93
    .local v0, dataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureOnMainThread()V

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->fetchAllFromBackingStoreAsync()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    .line 124
    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 126
    .local v0, mapCopy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 132
    .local v1, operation:Ljava/lang/Runnable;
    sget-object v2, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 133
    return-void
.end method
