.class Lcom/htc/dmc/HtcDMC$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$1;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 523
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, action:Ljava/lang/String;
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast Intent received, act:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v3, "com.htc.dmc.setstatesync"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$1;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC;->setStateSync()V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v3, "com.htc.dmc.addtoplaylist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 534
    .local v1, nId:I
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$1;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->AddToPlaylist(I)Z
    invoke-static {v3, v1}, Lcom/htc/dmc/HtcDMC;->access$2100(Lcom/htc/dmc/HtcDMC;I)Z

    goto :goto_0

    .line 536
    .end local v1           #nId:I
    :cond_2
    const-string v3, "com.htc.dmc.showdetails"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, szId:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$1;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v2}, Lcom/htc/dmc/HtcDMC;->RequestDetails(Ljava/lang/String;)V

    goto :goto_0
.end method
