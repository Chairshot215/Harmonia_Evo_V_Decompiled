.class Lcom/htc/laputa/engine/util/ContentStoreCmd$13;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;->action(Lcom/htc/laputa/engine/util/ContentExtrasItem;ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/CmdBundleListener;)Z
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
    .line 738
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$13;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

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
    .line 740
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$13;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$400(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$13;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$400(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 741
    return-void
.end method
