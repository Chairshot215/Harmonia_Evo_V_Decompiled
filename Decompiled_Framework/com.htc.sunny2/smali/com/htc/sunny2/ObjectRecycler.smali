.class public Lcom/htc/sunny2/ObjectRecycler;
.super Ljava/lang/Object;
.source "ObjectRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final locker:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private recycledObjects:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ObjectRecycler"

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->locker:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/htc/sunny2/ObjectRecycler;->name:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunny2/Queue;

    invoke-direct {v0, p1}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    return-void
.end method


# virtual methods
.method public obtain()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/ObjectRecycler;->locker:Ljava/lang/Integer;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    invoke-virtual {v1}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/ObjectRecycler;->locker:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->name:Ljava/lang/String;

    const-string v2, "recycledObjects.add() NG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
