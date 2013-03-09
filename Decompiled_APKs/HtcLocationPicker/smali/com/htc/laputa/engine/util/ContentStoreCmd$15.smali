.class Lcom/htc/laputa/engine/util/ContentStoreCmd$15;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;->runStoreCommandA(ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$15;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 3
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$15;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runStoreCommandA onRetReceive err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$15;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$400(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$15;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$400(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 848
    return-void
.end method
