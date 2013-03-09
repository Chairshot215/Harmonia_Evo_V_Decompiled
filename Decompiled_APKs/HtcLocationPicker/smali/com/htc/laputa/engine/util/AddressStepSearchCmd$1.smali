.class Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;
.super Ljava/lang/Object;
.source "AddressStepSearchCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/CmdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->exec()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/AddressStepSearchCmd;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/AddressStepSearchCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;->this$0:Lcom/htc/laputa/engine/util/AddressStepSearchCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyComplete(II)V
    .locals 2
    .parameter "errCode"
    .parameter "taskId"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;->this$0:Lcom/htc/laputa/engine/util/AddressStepSearchCmd;

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->COMPLETE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    iput-object v1, v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    .line 185
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;->this$0:Lcom/htc/laputa/engine/util/AddressStepSearchCmd;

    iget-object v1, v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mCompleteNotification:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;->this$0:Lcom/htc/laputa/engine/util/AddressStepSearchCmd;

    iget-object v0, v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mCompleteNotification:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
