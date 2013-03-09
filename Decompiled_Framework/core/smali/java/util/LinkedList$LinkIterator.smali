.class final Ljava/util/LinkedList$LinkIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TET;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field link:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TET;>;"
        }
    .end annotation
.end field

.field pos:I


# direct methods
.method constructor <init>(Ljava/util/LinkedList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TET;>;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    if-ltz p2, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :goto_0
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_2

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :goto_1
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    if-lt v0, p2, :cond_2

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->size:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    return v0
.end method

.method public remove()V
    .locals 4

    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :cond_0
    iput-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljava/util/LinkedList;->size:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_2
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iput-object p1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
