.class Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;
.super Ljava/util/concurrent/FutureTask;
.source "ExecutorCompletionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ExecutorCompletionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final task:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ExecutorCompletionService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/RunnableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p2, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    #getter for: Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Ljava/util/concurrent/ExecutorCompletionService;->access$000(Ljava/util/concurrent/ExecutorCompletionService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
