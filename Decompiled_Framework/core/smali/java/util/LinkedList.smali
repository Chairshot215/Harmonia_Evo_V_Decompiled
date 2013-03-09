.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Deque;
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$ReverseLinkIterator;,
        Ljava/util/LinkedList$LinkIterator;,
        Ljava/util/LinkedList$Link;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient size:I

.field transient voidLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    new-instance v0, Ljava/util/LinkedList$Link;

    invoke-direct {v0, v1, v1, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addFirstImpl(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v2, 0x1

    return v2
.end method

.method private addLastImpl(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v2, 0x1

    return v2
.end method

.method private getFirstImpl()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method private peekFirstImpl()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Ljava/util/LinkedList;->size:I

    new-instance v3, Ljava/util/LinkedList$Link;

    invoke-direct {v3, v4, v4, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget v0, p0, Ljava/util/LinkedList;->size:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v3, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    return-void
.end method

.method private removeFirstImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_0

    iget-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private removeFirstOccurrenceImpl(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method private removeLastImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_0

    iget-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<TE;>;)Z"
        }
    .end annotation

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v1, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-gt p1, v4, :cond_2

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    :goto_1
    if-le v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-direct {v2, p2, v3, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v4, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->size:I

    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v8, p0, Ljava/util/LinkedList;->size:I

    if-le p1, v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_2
    if-ne p2, p0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iget-object v7, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget v8, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v8, v8, 0x2

    if-ge p1, v8, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_5

    iget-object v7, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v2, p2

    goto :goto_1

    :cond_4
    iget v3, p0, Ljava/util/LinkedList;->size:I

    :goto_3
    if-lt v3, p1, :cond_5

    iget-object v7, v7, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    iget-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v5, Ljava/util/LinkedList$Link;

    const/4 v8, 0x0

    invoke-direct {v5, v1, v7, v8}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v5, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move-object v7, v5

    goto :goto_4

    :cond_6
    iput-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v7, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v8, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v8, v0

    iput v8, p0, Ljava/util/LinkedList;->size:I

    iget v8, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/util/LinkedList$Link;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v4, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move-object v5, v4

    goto :goto_2

    :cond_1
    move-object v2, p1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v6, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v6, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/util/LinkedList;->size:I

    iget v6, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/LinkedList;->size:I

    new-instance v2, Ljava/util/LinkedList$Link;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
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
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    if-eqz p1, :cond_2

    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v2, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v2, :cond_2

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    :goto_1
    if-le v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    if-eqz p1, :cond_2

    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget v1, p0, Ljava/util/LinkedList;->size:I

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    if-eqz p1, :cond_2

    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v4, :cond_2

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    :goto_1
    if-le v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iget v4, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/LinkedList;->size:I

    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v4, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v3, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v3, :cond_2

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget v3, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v3, v3, 0x2

    if-ge p1, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    :goto_1
    if-le v0, p1, :cond_1

    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    iput-object p2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/LinkedList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    iget v4, p0, Ljava/util/LinkedList;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    :goto_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v4, v0, v1

    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget v4, p0, Ljava/util/LinkedList;->size:I

    array-length v5, p1

    if-le v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v4, p0, Ljava/util/LinkedList;->size:I

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    :goto_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v4, p1, v1

    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v1, v2

    goto :goto_0

    :cond_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    const/4 v4, 0x0

    aput-object v4, p1, v1

    :cond_2
    return-object p1
.end method
