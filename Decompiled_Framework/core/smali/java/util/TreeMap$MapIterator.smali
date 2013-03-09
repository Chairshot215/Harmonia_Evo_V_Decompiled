.class abstract Ljava/util/TreeMap$MapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected last:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected next:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    iput v0, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    iput-object p2, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    iput v0, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    return-void
.end method

.method protected stepBackward()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    iget v1, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    return-object v0
.end method

.method protected stepForward()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->modCount:I

    iget v1, p0, Ljava/util/TreeMap$MapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$MapIterator;->next:Ljava/util/TreeMap$Node;

    iget-object v0, p0, Ljava/util/TreeMap$MapIterator;->last:Ljava/util/TreeMap$Node;

    return-object v0
.end method
