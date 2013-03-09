.class Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;
.super Ljava/lang/Object;
.source "FxTimelineControl.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxTimelineControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;->this$0:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;->this$0:Lcom/htc/fusion/fx/FxTimelineControl;

    const-wide/16 v1, -0x1

    #calls: Lcom/htc/fusion/fx/FxTimelineControl;->waitForPendingFreezes(J)Z
    invoke-static {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->access$100(Lcom/htc/fusion/fx/FxTimelineControl;J)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;->this$0:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    #calls: Lcom/htc/fusion/fx/FxTimelineControl;->waitForPendingFreezes(J)Z
    invoke-static {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->access$100(Lcom/htc/fusion/fx/FxTimelineControl;J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;->this$0:Lcom/htc/fusion/fx/FxTimelineControl;

    const-wide/16 v1, 0x0

    #calls: Lcom/htc/fusion/fx/FxTimelineControl;->waitForPendingFreezes(J)Z
    invoke-static {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->access$100(Lcom/htc/fusion/fx/FxTimelineControl;J)Z

    move-result v0

    return v0
.end method
