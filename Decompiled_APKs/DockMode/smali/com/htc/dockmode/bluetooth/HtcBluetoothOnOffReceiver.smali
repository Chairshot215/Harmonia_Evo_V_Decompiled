.class public final Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;
.super Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;
.source "HtcBluetoothOnOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;,
        Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnBluetoothOnOffListener:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/dockmode/bluetooth/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v2, 0xa

    .line 82
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;)V

    .line 88
    .local v0, params:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;->state:I

    .line 90
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;->previousState:I

    .line 94
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    invoke-interface {v1, v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;->onBluetoothOnOffChanged(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 76
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setOnBluetoothOnOffListener(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    .line 105
    return-void
.end method
