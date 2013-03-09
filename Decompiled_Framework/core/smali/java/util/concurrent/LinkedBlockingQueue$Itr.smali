.class Ljava/util/concurrent/LinkedBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
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
.field private current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1

    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    #getter for: Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    invoke-static {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private nextNode(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-ne v0, p1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #getter for: Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    invoke-static {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v1

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :cond_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_0

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
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextNode(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public remove()V
    .locals 5

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #getter for: Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    invoke-static {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v2

    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    :goto_0
    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_2

    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-void

    :cond_2
    move-object v2, v1

    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v3
.end method
