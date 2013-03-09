.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "next"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->nextOffset:J

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "item"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->itemOffset:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    iput-boolean p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    return-void
.end method


# virtual methods
.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->itemOffset:J

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

.method casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .locals 6

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->nextOffset:J

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

.method isCancelled()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOffList()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tryCancel(Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
