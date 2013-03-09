.class public Lcom/htc/tracker/ObjectTracker;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/tracker/ObjectTracker$Visitor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/htc/tracker/ObjectTracker;


# instance fields
.field private mKey:Ljava/lang/Object;

.field private final mTempVisitors:Ljava/util/WeakHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisitors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashSet;

    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    return-void
.end method

.method public static getInstance()Lcom/htc/tracker/ObjectTracker;
    .locals 1

    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/tracker/ObjectTracker;

    invoke-direct {v0}, Lcom/htc/tracker/ObjectTracker;-><init>()V

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    :cond_0
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashSet;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKey(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/WeakHashSet;

    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashSet;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized track(Ljava/lang/Object;Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/util/WeakHashSet;

    invoke-direct {v2}, Ljava/util/WeakHashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/WeakHashSet;

    move-object v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2
.end method

.method public declared-synchronized visit(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/tracker/ObjectTracker$Visitor;

    invoke-interface {v2}, Lcom/htc/tracker/ObjectTracker$Visitor;->visit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
