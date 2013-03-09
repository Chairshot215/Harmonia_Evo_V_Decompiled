.class Ljava/util/ArrayList$ArrayListIterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private remaining:I

.field private removalIndex:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->size:I

    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList$ArrayListIterator;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    if-eqz v0, :cond_0

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

    iget-object v0, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    iget v2, v0, Ljava/util/AbstractList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    iget-object v2, v0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v3, v0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    aget-object v2, v2, v3

    return-object v2
.end method

.method public remove()V
    .locals 4

    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    if-gez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ljava/util/ArrayList$ArrayListIterator;->remaining:I

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v3, v2, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v3

    const/4 v2, -0x1

    iput v2, p0, Ljava/util/ArrayList$ArrayListIterator;->removalIndex:I

    iget-object v2, p0, Ljava/util/ArrayList$ArrayListIterator;->this$0:Ljava/util/ArrayList;

    iget v3, v2, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/AbstractList;->modCount:I

    iput v3, p0, Ljava/util/ArrayList$ArrayListIterator;->expectedModCount:I

    return-void
.end method
