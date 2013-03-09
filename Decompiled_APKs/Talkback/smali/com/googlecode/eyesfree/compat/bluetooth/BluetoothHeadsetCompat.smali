.class public Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;
.super Ljava/lang/Object;
.source "BluetoothHeadsetCompat.java"


# static fields
.field private static final CLASS_BluetoothDevice:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_BluetoothHeadset:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_isAudioConnected:Ljava/lang/reflect/Method;

.field private static final METHOD_startScoUsingVirtualVoiceCall:Ljava/lang/reflect/Method;

.field private static final METHOD_stopScoUsingVirtualVoiceCall:Ljava/lang/reflect/Method;


# instance fields
.field private final mReceiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    const-string v0, "android.bluetooth.BluetoothDevice"

    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothDevice:Ljava/lang/Class;

    .line 27
    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothHeadset:Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothHeadset:Ljava/lang/Class;

    const-string v1, "startScoUsingVirtualVoiceCall"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothDevice:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 28
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->METHOD_startScoUsingVirtualVoiceCall:Ljava/lang/reflect/Method;

    .line 31
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothHeadset:Ljava/lang/Class;

    const-string v1, "stopScoUsingVirtualVoiceCall"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothDevice:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 30
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->METHOD_stopScoUsingVirtualVoiceCall:Ljava/lang/reflect/Method;

    .line 33
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothHeadset:Ljava/lang/Class;

    const-string v1, "isAudioConnected"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->CLASS_BluetoothDevice:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 32
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->METHOD_isAudioConnected:Ljava/lang/reflect/Method;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->mReceiver:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public isAudioConnected(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v5, 0x0

    .line 50
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->mReceiver:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->METHOD_isAudioConnected:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;->getObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public startScoUsingVirtualVoiceCall(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->mReceiver:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->METHOD_startScoUsingVirtualVoiceCall:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;->getObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    .line 64
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public stopScoUsingVirtualVoiceCall(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->mReceiver:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothHeadsetCompat;->METHOD_stopScoUsingVirtualVoiceCall:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;->getObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
