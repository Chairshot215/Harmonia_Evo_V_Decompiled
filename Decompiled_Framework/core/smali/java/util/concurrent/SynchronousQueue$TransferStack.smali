.class final Ljava/util/concurrent/SynchronousQueue$TransferStack;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    }
.end annotation


# static fields
.field static final DATA:I = 0x1

.field static final FULFILLING:I = 0x2

.field static final REQUEST:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J


# instance fields
.field volatile head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->headOffset:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    return-void
.end method

.method static isFulfilling(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-direct {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput p3, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    iput-object p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    return-object p0
.end method


# virtual methods
.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 10

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz p2, :cond_3

    sget v6, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    :cond_1
    iget-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v3, :cond_5

    return-object v3

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_3
    sget v6, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v8, v4, v1

    sub-long/2addr p3, v8

    move-wide v1, v4

    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-gtz v8, :cond_6

    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    goto :goto_1

    :cond_6
    if-lez v6, :cond_8

    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v6, v6, -0x1

    :goto_2
    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    if-nez v8, :cond_9

    iput-object v7, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    goto :goto_1

    :cond_9
    if-nez p2, :cond_a

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-wide/16 v8, 0x3e8

    cmp-long v8, p3, v8

    if-lez v8, :cond_0

    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    iget-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    iget v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v0, :cond_1

    iget v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    if-ne v6, v3, :cond_8

    :cond_1
    if-eqz p2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v4, p1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4, p2, p3, p4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v1

    if-ne v1, v4, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V

    :cond_4
    :goto_1
    return-object v5

    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v0, :cond_6

    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v5, v4, :cond_6

    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    :cond_6
    if-nez v3, :cond_7

    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    :cond_8
    iget v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    :cond_9
    or-int/lit8 v6, v3, 0x2

    invoke-static {v4, p1, v0, v6}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_2
    iget-object v1, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-nez v1, :cond_a

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    const/4 v4, 0x0

    goto :goto_0

    :cond_a
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    if-nez v3, :cond_b

    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    :cond_b
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    :cond_c
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_2

    :cond_d
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-nez v1, :cond_e

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0

    :cond_e
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0
.end method
