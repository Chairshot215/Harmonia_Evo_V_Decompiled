.class final Lcom/android/settings/cardock/HtcBluetoothConnector$3;
.super Ljava/lang/Object;
.source "HtcBluetoothConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cardock/HtcBluetoothConnector;->turnOffBluetoothMonitor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$interval:I

.field final synthetic val$repeatTimes:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/cardock/HtcBluetoothConnector$3;->val$repeatTimes:I

    iput p2, p0, Lcom/android/settings/cardock/HtcBluetoothConnector$3;->val$interval:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 132
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/android/settings/cardock/HtcBluetoothConnector$3;->val$repeatTimes:I

    if-ge v2, v3, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 140
    :cond_0
    :try_start_0
    iget v3, p0, Lcom/android/settings/cardock/HtcBluetoothConnector$3;->val$interval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    .line 145
    .local v1, done:Z
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 150
    .end local v1           #done:Z
    :cond_1
    return-void

    .line 132
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v3

    goto :goto_1
.end method
