.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static unenqueued:Ljava/lang/ref/Reference;


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    const-class v2, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v1, :cond_0

    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    :goto_0
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :cond_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iget-object v0, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iget-object v3, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object v3, v1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method declared-synchronized enqueue(Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    iput-object p1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    :goto_0
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iput-object v0, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, v2, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public remove()Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(J)Ljava/lang/ref/Reference;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-gez v9, :cond_0

    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeout < 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_0
    :try_start_1
    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_0
    monitor-exit p0

    return-object v9

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-eqz v9, :cond_2

    const-wide v9, 0x8637bd05af6L

    cmp-long v9, p1, v9

    if-lez v9, :cond_3

    :cond_2
    const-wide/16 v9, 0x0

    :try_start_2
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V

    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v9

    goto :goto_0

    :cond_3
    const-wide/32 v9, 0xf4240

    mul-long v4, p1, v9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :goto_1
    invoke-virtual {p0, p1, p2, v8}, Ljava/lang/Object;->wait(JI)V

    iget-object v9, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v9

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v0, v9, v6

    sub-long v2, v4, v0

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_4

    const-wide/32 v9, 0xf4240

    div-long p1, v2, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v9, p1

    sub-long v9, v2, v9

    long-to-int v8, v9

    goto :goto_1
.end method
