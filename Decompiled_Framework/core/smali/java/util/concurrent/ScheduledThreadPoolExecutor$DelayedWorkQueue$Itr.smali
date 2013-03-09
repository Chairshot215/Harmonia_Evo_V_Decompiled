.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
.super Ljava/lang/Object;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[Ljava/util/concurrent/RunnableScheduledFuture;

.field cursor:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 1

    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    iput-object p2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->next()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Runnable;
    .locals 3

    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->remove(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    return-void
.end method
