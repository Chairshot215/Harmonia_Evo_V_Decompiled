.class final Ljava/util/AbstractList$FullListIterator;
.super Ljava/util/AbstractList$SimpleListIterator;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FullListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>.Simple",
        "ListIterator;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;I)V
    .locals 1

    iput-object p1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    invoke-direct {p0, p1}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
