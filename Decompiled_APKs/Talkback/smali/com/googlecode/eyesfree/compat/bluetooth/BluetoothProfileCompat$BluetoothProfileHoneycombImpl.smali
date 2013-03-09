.class Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;
.super Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileStubImpl;
.source "BluetoothProfileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothProfileHoneycombImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newServiceListener(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;)Ljava/lang/Object;
    .locals 1
    .parameter "listener"

    .prologue
    .line 44
    new-instance v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;-><init>(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;)V

    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb;->newServiceListener(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
