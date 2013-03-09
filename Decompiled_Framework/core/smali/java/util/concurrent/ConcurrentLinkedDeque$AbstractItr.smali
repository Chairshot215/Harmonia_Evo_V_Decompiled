.class abstract Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->advance()V

    return-void
.end method

.method private advance()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->advance()V

    return-object v0
.end method

.method abstract nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-void
.end method

.method abstract startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method
