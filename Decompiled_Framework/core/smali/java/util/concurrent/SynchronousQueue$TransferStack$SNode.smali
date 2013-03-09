.class final Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SNode"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final matchOffset:J

.field private static final nextOffset:J


# instance fields
.field item:Ljava/lang/Object;

.field volatile match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field mode:I

.field volatile next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "next"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->nextOffset:J

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "match"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->matchOffset:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->nextOffset:J

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

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tryCancel()V
    .locals 6

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->matchOffset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->matchOffset:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    iput-object v4, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v0, p1, :cond_2

    move v0, v7

    :goto_1
    move v7, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
