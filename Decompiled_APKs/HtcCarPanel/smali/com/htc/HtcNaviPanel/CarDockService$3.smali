.class Lcom/htc/HtcNaviPanel/CarDockService$3;
.super Landroid/content/BroadcastReceiver;
.source "CarDockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/CarDockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/CarDockService;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/CarDockService;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, state:I
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    move v2, v3

    :goto_0
    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothEnabled:Z
    invoke-static {v5, v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$602(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z

    .line 189
    .end local v1           #state:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothHeadsetState:I
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$700(Lcom/htc/HtcNaviPanel/CarDockService;)I

    move-result v2

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothA2dpState:I
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$800(Lcom/htc/HtcNaviPanel/CarDockService;)I

    move-result v2

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothA2dpState:I
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$800(Lcom/htc/HtcNaviPanel/CarDockService;)I

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothPbapState:I
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$900(Lcom/htc/HtcNaviPanel/CarDockService;)I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z
    invoke-static {v2, v3}, Lcom/htc/HtcNaviPanel/CarDockService;->access$1002(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z

    .line 198
    :goto_2
    const-string v2, "CarDockService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothEnabled:Z
    invoke-static {v4}, Lcom/htc/HtcNaviPanel/CarDockService;->access$600(Lcom/htc/HtcNaviPanel/CarDockService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z
    invoke-static {v4}, Lcom/htc/HtcNaviPanel/CarDockService;->access$1000(Lcom/htc/HtcNaviPanel/CarDockService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .restart local v1       #state:I
    :cond_2
    move v2, v4

    .line 177
    goto :goto_0

    .line 178
    .end local v1           #state:I
    :cond_3
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothHeadsetState:I
    invoke-static {v2, v5}, Lcom/htc/HtcNaviPanel/CarDockService;->access$702(Lcom/htc/HtcNaviPanel/CarDockService;I)I

    goto :goto_1

    .line 181
    :cond_4
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothA2dpState:I
    invoke-static {v2, v5}, Lcom/htc/HtcNaviPanel/CarDockService;->access$802(Lcom/htc/HtcNaviPanel/CarDockService;I)I

    goto :goto_1

    .line 184
    :cond_5
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    const-string v5, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothPbapState:I
    invoke-static {v2, v5}, Lcom/htc/HtcNaviPanel/CarDockService;->access$902(Lcom/htc/HtcNaviPanel/CarDockService;I)I

    goto/16 :goto_1

    .line 195
    :cond_6
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService$3;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z
    invoke-static {v2, v4}, Lcom/htc/HtcNaviPanel/CarDockService;->access$1002(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z

    goto :goto_2
.end method
