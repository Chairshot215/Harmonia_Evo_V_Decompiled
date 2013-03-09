.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_SIZE:I = 0xa

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljava/util/Vector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Vector;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector;->elementCount:I

    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;
    .locals 1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private grow(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    sget-boolean v1, Ljava/util/Vector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le v1, p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method private growBy(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v2, :cond_1

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v2

    if-nez v0, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    add-int/2addr v0, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    div-int v2, p1, v2

    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    mul-int v0, v2, v3

    if-ge v0, p1, :cond_2

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method private growByOne()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v2, :cond_1

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    return-void

    :cond_1
    iget v0, p0, Ljava/util/Vector;->capacityIncrement:I

    goto :goto_0
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    :cond_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_4

    :try_start_0
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v5, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v5, 0x0

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v5, v6

    sub-int v3, v4, v5

    if-lez v3, :cond_1

    invoke-direct {p0, v3}, Ljava/util/Vector;->growBy(I)V

    :cond_1
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v5, p1

    if-lez v0, :cond_2

    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int v7, p1, v4

    invoke-static {v5, p1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move v2, p1

    :goto_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 p1, v2, 0x1

    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, p1

    goto :goto_1

    :cond_3
    :try_start_4
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v5, v4

    iput v5, p0, Ljava/util/Vector;->elementCount:I

    iget v5, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x1

    move p1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v5}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v5

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit p0

    throw v5

    :catchall_1
    move-exception v5

    move p1, v2

    goto :goto_2
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
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {p0, v0, p1}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z
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

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    :cond_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized copyInto([Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v0}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, p1, :cond_0

    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int v0, v1, v2

    if-le p1, v0, :cond_2

    :goto_1
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    :cond_1
    :try_start_0
    instance-of v9, p1, Ljava/util/List;

    if-eqz v9, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Ljava/util/Vector;->elementCount:I

    if-eq v9, v10, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v4, 0x1

    aget-object v1, v9, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4

    if-nez v2, :cond_5

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    move v7, v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    move v0, p2

    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_2
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertElementAt(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    monitor-enter p0

    if-ltz p2, :cond_2

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v1, :cond_2

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    :cond_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v1, p2

    if-lez v0, :cond_1

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v1, p2

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p2, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I
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

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v1, :cond_4

    if-eqz p1, :cond_1

    move v0, p2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_2
    if-ltz v0, :cond_3

    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p2, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v2, p1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v2, p1

    if-lez v1, :cond_0

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v2}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized removeAllElements()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .locals 4

    monitor-enter p0

    if-ltz p1, :cond_1

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v0, v1, p1

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected removeRange(II)V
    .locals 5

    const/4 v4, 0x0

    if-ltz p1, :cond_2

    if-gt p1, p2, :cond_2

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v1, :cond_2

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v2, p2, p1

    sub-int v0, v1, v2

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v0, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Ljava/util/Vector;->elementCount:I

    :goto_1
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, p1, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput p1, p0, Ljava/util/Vector;->elementCount:I

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z
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

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p2, v0}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->ensureCapacity(I)V

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    array-length v3, p1

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    array-length v3, p1

    if-ge v2, v3, :cond_1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    if-nez v3, :cond_0

    const-string v3, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    mul-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_1

    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-ne v3, p0, :cond_3

    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized trimToSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-direct {p0, v0}, Ljava/util/Vector;->grow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
