.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$1;,
        Ljava/util/PriorityQueue$PriorityIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final DEFAULT_CAPACITY_RATIO:I = 0x2

.field private static final DEFAULT_INIT_CAPACITY_RATIO:D = 1.1

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

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

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    instance-of v0, p1, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/SortedSet;

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/PriorityQueue;)I
    .locals 1

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method static synthetic access$200(Ljava/util/PriorityQueue;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/PriorityQueue;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->removeAt(I)V

    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private getFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v0, p1, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    return-void
.end method

.method private getFromSortedSet(Ljava/util/SortedSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private growToSize(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private initSize(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAt(I)V
    .locals 3

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->siftDown(I)V

    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private siftDown(I)V
    .locals 4

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v2, p1

    :goto_0
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v0, v2, 0x1

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v1, v2, p1

    return-void

    :cond_2
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    move p1, v0

    goto :goto_0
.end method

.method private siftUp(I)V
    .locals 4

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v3, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    invoke-direct {p0, v0, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v2, v3, p1

    return-void

    :cond_1
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v0, v3, p1

    move p1, v1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/PriorityQueue$PriorityIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$PriorityIterator;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->growToSize(I)V

    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->siftUp(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v0, v1, v2

    invoke-direct {p0, v2}, Ljava/util/PriorityQueue;->removeAt(I)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method
