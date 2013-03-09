.class Lcom/htc/dockmode/bluetooth/DeskDockService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeskDockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/DeskDockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/bluetooth/DeskDockService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, state:I
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    move v2, v3

    :goto_0
    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothEnabled:Z
    invoke-static {v5, v2}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$502(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z

    .line 187
    .end local v1           #state:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothHeadsetState:I
    invoke-static {v2}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$600(Lcom/htc/dockmode/bluetooth/DeskDockService;)I

    move-result v2

    if-eq v2, v7, :cond_1

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothA2dpState:I
    invoke-static {v2}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$700(Lcom/htc/dockmode/bluetooth/DeskDockService;)I

    move-result v2

    if-eq v2, v7, :cond_1

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothA2dpState:I
    invoke-static {v2}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$700(Lcom/htc/dockmode/bluetooth/DeskDockService;)I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_5

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothConnected:Z
    invoke-static {v2, v3}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$802(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z

    .line 198
    :goto_2
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
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    const-string v5, "android.bluetooth.profile.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothHeadsetState:I
    invoke-static {v2, v5}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$602(Lcom/htc/dockmode/bluetooth/DeskDockService;I)I

    goto :goto_1

    .line 181
    :cond_4
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothA2dpState:I
    invoke-static {v2, v5}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$702(Lcom/htc/dockmode/bluetooth/DeskDockService;I)I

    goto :goto_1

    .line 192
    :cond_5
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothConnected:Z
    invoke-static {v2, v4}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$802(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z

    goto :goto_2
.end method
