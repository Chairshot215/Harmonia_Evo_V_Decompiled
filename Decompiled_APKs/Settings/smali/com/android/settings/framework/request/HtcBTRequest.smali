.class public final Lcom/android/settings/framework/request/HtcBTRequest;
.super Ljava/lang/Object;
.source "HtcBTRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDiscoverableTimeout(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 26
    .local v0, BTMgr:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "com.htc.intent.action.SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
