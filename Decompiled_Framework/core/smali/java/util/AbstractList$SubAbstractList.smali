.class Ljava/util/AbstractList$SubAbstractList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubAbstractList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final fullList:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private offset:I

.field private size:I


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iput p2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_2

    if-ltz p1, :cond_1

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-gt p1, v1, :cond_1

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    iget v3, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList$SubAbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    iget v3, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    invoke-direct {v0, v1, p0, v2, v3}, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/AbstractList$SubAbstractList;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_1

    if-ltz p1, :cond_0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method protected removeRange(II)V
    .locals 3

    if-eq p1, p2, :cond_0

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method sizeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    :goto_0
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    goto :goto_0
.end method
