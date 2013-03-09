.class final Ljava/util/concurrent/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
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
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

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

    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    #calls: Ljava/util/concurrent/PriorityBlockingQueue;->removeEQ(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->access$000(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    return-void
.end method
