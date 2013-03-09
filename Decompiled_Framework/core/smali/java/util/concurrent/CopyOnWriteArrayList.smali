.class public Ljava/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;,
        Ljava/util/concurrent/CopyOnWriteArrayList$Slice;,
        Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$300(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V

    return-void
.end method

.method static synthetic access$600(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Collection;ZII)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I

    move-result v0

    return v0
.end method

.method static containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2

    if-nez p0, :cond_1

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_2
    if-ge v0, p3, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2

    if-nez p0, :cond_1

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-lt v0, p2, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeOrRetain(Ljava/util/Collection;ZII)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;ZII)I"
        }
    .end annotation

    const/4 v5, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    aget-object v6, v6, v0

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-static {v6, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v0

    add-int/lit8 v1, v0, 0x1

    move v4, v3

    :goto_1
    if-ge v1, p4, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    aget-object v6, v6, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, p2, :cond_4

    add-int/lit8 v3, v4, 0x1

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    aget-object v6, v6, v1

    aput-object v6, v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    iget-object v7, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v7, v7

    sub-int/2addr v7, p4

    invoke-static {v6, p4, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v6, v6

    sub-int/2addr v6, p4

    add-int v3, v4, v6

    array-length v6, v2

    if-ge v3, v6, :cond_2

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v6, v6

    array-length v7, v2

    sub-int v5, v6, v7

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    :cond_3
    return v5

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private removeRange(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v1, v1

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, p2

    invoke-static {v1, p2, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    array-length v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v0, p1

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v1, v1

    aput-object p1, v0, v1

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v3, v3

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v4, v1

    add-int/2addr v4, p1

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, p1

    invoke-static {v3, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAllAbsent(Ljava/util/Collection;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v8, v8

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    move-object v2, v7

    array-length v4, v2

    const/4 v3, 0x0

    move v1, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v2, v3

    const/4 v8, 0x0

    iget-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v9, v1

    invoke-static {v6, v5, v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v8, v8

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v8, v1

    aput-object v6, v5, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    const/4 v8, 0x0

    iget-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v9, v1

    invoke-static {v5, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    :cond_1
    iput-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized addIfAbsent(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v8, p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v8, :cond_2

    if-eq p0, p1, :cond_0

    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v9, p1, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    :goto_0
    return v6

    :cond_2
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    move v6, v7

    goto :goto_0

    :cond_4
    move v7, v6

    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method final getArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {p1, v0, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    if-ltz p1, :cond_0

    array-length v2, v1

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;-><init>([Ljava/lang/Object;II)V

    #setter for: Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->index:I
    invoke-static {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;->access$002(Ljava/util/concurrent/CopyOnWriteArrayList$CowIterator;I)I

    return-object v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    aget-object v0, v1, p1

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-direct {p0, p1, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeOrRetain(Ljava/util/Collection;ZII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    array-length v1, v0

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", list size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;

    invoke-direct {v1, p0, v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList$CowSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_0

    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
