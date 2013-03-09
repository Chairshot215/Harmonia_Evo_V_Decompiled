.class public Ljava/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/util/AbstractQueue;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

.field private static final serialVersionUID:J = 0x2bafb2a664c708cL

.field private static final tailOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->headOffset:J

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "tail"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailOffset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    move-object v4, v3

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    move-object v1, v4

    :cond_2
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    move-object v3, v2

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    move-object v3, v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v9, 0x0

    :goto_1
    return v9

    :cond_3
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v5, v7

    :cond_4
    :goto_2
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v6, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v9, :cond_5

    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    if-ne v5, v6, :cond_8

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v7, v8, :cond_7

    move-object v5, v8

    :goto_3
    move-object v7, v8

    goto :goto_2

    :cond_7
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_3

    :cond_8
    if-eq v5, v7, :cond_a

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v7, v8, :cond_9

    move-object v5, v8

    move-object v7, v8

    :goto_4
    goto :goto_2

    :cond_9
    move-object v7, v8

    :cond_a
    move-object v5, v6

    goto :goto_4
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_1
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v2, v0

    :goto_0
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_4

    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    if-eqz v1, :cond_3

    :goto_2
    return-object v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    if-eq v2, v3, :cond_0

    move-object v2, v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v3

    :cond_0
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v2, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eq v1, v3, :cond_1

    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    :cond_1
    const/4 v5, 0x1

    return v5

    :cond_2
    if-ne v1, v2, :cond_4

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v3, v4, :cond_3

    move-object v1, v4

    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_1

    :cond_4
    if-eq v1, v3, :cond_6

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eq v3, v4, :cond_5

    move-object v1, v4

    move-object v3, v4

    :goto_2
    goto :goto_0

    :cond_5
    move-object v3, v4

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v2, v0

    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    return-object v1

    :cond_2
    if-eq v2, v3, :cond_0

    move-object v2, v3

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v2, v0

    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v2, v0, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    move-object v3, v2

    goto :goto_1

    :cond_3
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_4

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v4

    goto :goto_2

    :cond_4
    if-eq v2, v3, :cond_0

    move-object v2, v3

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_1
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0
.end method

.method final succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    move v3, v2

    :goto_0
    if-eqz v4, :cond_0

    array-length v6, p1

    if-ge v3, v6, :cond_0

    iget-object v1, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_5

    add-int/lit8 v2, v3, 0x1

    aput-object v1, p1, v3

    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    move v3, v2

    goto :goto_0

    :cond_0
    if-nez v4, :cond_2

    array-length v6, p1

    if-ge v3, v6, :cond_1

    const/4 v6, 0x0

    aput-object v6, p1, v3

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_4

    iget-object v1, v5, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v5

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method final updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    if-eq p1, p2, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    :cond_0
    return-void
.end method
