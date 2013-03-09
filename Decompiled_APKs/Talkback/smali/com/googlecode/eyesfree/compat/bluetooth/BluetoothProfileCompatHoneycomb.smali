.class Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb;
.super Ljava/lang/Object;
.source "BluetoothProfileCompatHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static newServiceListener(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;)Ljava/lang/Object;
    .locals 1
    .parameter "bridge"

    .prologue
    .line 37
    new-instance v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$1;

    invoke-direct {v0, p0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$1;-><init>(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;)V

    return-object v0
.end method
