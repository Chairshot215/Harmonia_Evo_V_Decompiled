.class public Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;
.super Ljava/lang/Object;
.source "BatchObjectFinder.java"


# static fields
.field private static final CAPACITY:I = 0x40

.field private static sInstance:Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;


# instance fields
.field private mFxNames:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->mFxNames:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->sInstance:Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    invoke-direct {v0}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;-><init>()V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->sInstance:Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    .line 35
    :cond_0
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->sInstance:Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized find(Lcom/htc/fusion/fx/FxObject;Ljava/util/Map;)V
    .locals 6
    .parameter "root"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/FxObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/fusion/fx/FxObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    :cond_0
    const-class v3, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incorrect input arguments: root="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", results="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    monitor-exit p0

    return-void

    .line 47
    :cond_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 48
    .local v0, N:I
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->mFxNames:[Ljava/lang/String;

    array-length v3, v3

    if-le v0, v3, :cond_3

    .line 49
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->mFxNames:[Ljava/lang/String;

    .line 50
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->mFxNames:[Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->mFxNames:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/htc/fusion/fx/FxObject;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 52
    .local v1, fxObjects:[Lcom/htc/fusion/fx/FxObject;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 53
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->mFxNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    aget-object v4, v1, v2

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v0           #N:I
    .end local v1           #fxObjects:[Lcom/htc/fusion/fx/FxObject;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
