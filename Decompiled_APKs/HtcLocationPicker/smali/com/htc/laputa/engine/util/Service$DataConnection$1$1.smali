.class Lcom/htc/laputa/engine/util/Service$DataConnection$1$1;
.super Lcom/htc/laputa/engine/util/Service$Runnable1;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/Service$DataConnection$1;->notifyComplete(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/laputa/engine/util/Service$Runnable1",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/laputa/engine/util/Service$DataConnection$1;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/Service$DataConnection$1;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$DataConnection$1$1;->this$1:Lcom/htc/laputa/engine/util/Service$DataConnection$1;

    invoke-direct {p0, p2}, Lcom/htc/laputa/engine/util/Service$Runnable1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection$1$1;->this$1:Lcom/htc/laputa/engine/util/Service$DataConnection$1;

    iget-object v0, v0, Lcom/htc/laputa/engine/util/Service$DataConnection$1;->this$0:Lcom/htc/laputa/engine/util/Service$DataConnection;

    #getter for: Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/Service$DataConnection;->access$300(Lcom/htc/laputa/engine/util/Service$DataConnection;)Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$DataConnection$1$1;->this$1:Lcom/htc/laputa/engine/util/Service$DataConnection$1;

    iget-object v0, v0, Lcom/htc/laputa/engine/util/Service$DataConnection$1;->this$0:Lcom/htc/laputa/engine/util/Service$DataConnection;

    #getter for: Lcom/htc/laputa/engine/util/Service$DataConnection;->mEngineListener:Lcom/htc/laputa/engine/util/Service$EngineStatusListener;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/Service$DataConnection;->access$300(Lcom/htc/laputa/engine/util/Service$DataConnection;)Lcom/htc/laputa/engine/util/Service$EngineStatusListener;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$Runnable1;->mValue1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/htc/laputa/engine/util/Service$EngineStatusListener;->onEngineStatusUpdate(I)V

    .line 114
    :cond_0
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
