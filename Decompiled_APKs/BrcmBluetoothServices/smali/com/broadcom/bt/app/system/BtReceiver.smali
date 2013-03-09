.class public Lcom/broadcom/bt/app/system/BtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processBluetoothServiceStateChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "intent"
    .parameter "action"

    .prologue
    .line 80
    const-string v2, "bt_svc_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, state:I
    const-string v2, "bt_svc_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, svcName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 83
    invoke-static {v1, v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothServiceStateChanged(Ljava/lang/String;I)V

    .line 85
    :cond_0
    return-void
.end method

.method private processBluetoothStateChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "intent"
    .parameter "action"

    .prologue
    .line 46
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 73
    const-string v1, "BtReceiver"

    const-string v2, "***Received Bluetooth Event that can be ignored****"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string v1, "BtReceiver"

    const-string v2, "***Received Bluetooth ON Event****"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->init(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothEnabled()V

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v1, "BtReceiver"

    const-string v2, "***Received Bluetooth TURNING OFF Event****"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothDisabled()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/app/system/BtReceiver;->processBluetoothStateChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v1, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/app/system/BtReceiver;->processBluetoothServiceStateChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
