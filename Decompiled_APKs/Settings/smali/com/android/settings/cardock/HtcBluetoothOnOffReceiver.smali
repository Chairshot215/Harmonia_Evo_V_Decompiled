.class public final Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;
.super Lcom/android/settings/cardock/HtcAbstractReceiver;
.source "HtcBluetoothOnOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;,
        Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnBluetoothOnOffListener:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/cardock/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v2, 0xa

    .line 79
    iget-object v1, p0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;-><init>(Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;)V

    .line 85
    .local v0, params:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;->state:I

    .line 88
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;->previousState:I

    .line 92
    iget-object v1, p0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;->onBluetoothOnOffChanged(Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 73
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setOnBluetoothOnOffListener(Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    .line 104
    return-void
.end method
