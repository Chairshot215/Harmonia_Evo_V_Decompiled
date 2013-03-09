.class public Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothAdapter;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static disableFromPowerSaver(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "btAdapter"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disableFromPowerSaver()Z

    move-result v0

    return v0
.end method

.method public static isAudioGatewaySupported(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "btAdapter"

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isAudioGatewaySupported()Z

    move-result v0

    return v0
.end method

.method public static listBondedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Set;
    .locals 1
    .parameter "btAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->listBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
