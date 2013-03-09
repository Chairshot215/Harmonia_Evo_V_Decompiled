.class Lcom/htc/laputa/engine/util/ContentStoreCmd$2;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;->sendVoucherCode(Ljava/lang/String;Lcom/htc/laputa/engine/util/CmdListener;)I
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
    .line 278
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 6
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$100(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/CmdListener;

    .line 282
    .local v0, listener:Lcom/htc/laputa/engine/util/CmdListener;
    if-nez v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$200(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Lcom/htc/laputa/engine/util/CmdListener;

    move-result-object v0

    .line 284
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    const/4 v3, 0x0

    #setter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mSendVoucherCodeListener:Lcom/htc/laputa/engine/util/CmdListener;
    invoke-static {v2, v3}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$202(Lcom/htc/laputa/engine/util/ContentStoreCmd;Lcom/htc/laputa/engine/util/CmdListener;)Lcom/htc/laputa/engine/util/CmdListener;

    .line 289
    :cond_0
    const-string v2, "2"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 290
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "get null retList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    .line 304
    :cond_2
    :goto_0
    return-void

    .line 298
    :cond_3
    iget-object v3, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    #setter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;
    invoke-static {v3, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$302(Lcom/htc/laputa/engine/util/ContentStoreCmd;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 300
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$300(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$300(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mBundleResult:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$300(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    .line 303
    iget-object v2, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$2;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->mCmdListenerMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$100(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
