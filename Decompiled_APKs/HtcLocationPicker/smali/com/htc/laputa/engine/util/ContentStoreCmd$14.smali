.class Lcom/htc/laputa/engine/util/ContentStoreCmd$14;
.super Landroid/os/Handler;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;
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
    .line 783
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$14;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$14;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    #getter for: Lcom/htc/laputa/engine/util/ContentStoreCmd;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$000(Lcom/htc/laputa/engine/util/ContentStoreCmd;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 795
    :goto_0
    return-void

    .line 788
    :pswitch_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$14;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/htc/laputa/engine/util/ContentStoreCmd;->notifyItemBundleListener(IILandroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$700(Lcom/htc/laputa/engine/util/ContentStoreCmd;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 791
    :pswitch_1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$14;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/htc/laputa/engine/util/ContentStoreCmd;->notifyCommandBundleListener(IILandroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v0}, Lcom/htc/laputa/engine/util/ContentStoreCmd;->access$800(Lcom/htc/laputa/engine/util/ContentStoreCmd;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
