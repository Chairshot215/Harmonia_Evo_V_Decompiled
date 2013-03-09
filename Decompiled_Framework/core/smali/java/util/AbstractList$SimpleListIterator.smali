.class Ljava/util/AbstractList$SimpleListIterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastPosition:I

.field pos:I

.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    iget v0, p1, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I
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

.method public remove()V
    .locals 4

    const/4 v3, -0x1

    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    :cond_2
    iput v3, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
