.class Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
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

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    return-void
.end method

.method private advance()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v5, :cond_0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_1

    iput-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    :goto_1
    return-object v4

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method
