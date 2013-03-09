.class public Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;
.super Ljava/lang/Object;
.source "BluetoothProfileCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;,
        Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileStubImpl;,
        Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;,
        Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;
    }
.end annotation


# static fields
.field public static final A2DP:I = 0x2

.field static final CLASS_BluetoothProfile:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final HEADSET:I = 0x1

.field public static final HEALTH:I = 0x3

.field private static final IMPL:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl; = null

.field private static final METHOD_getConnectedDevices:Ljava/lang/reflect/Method; = null

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;-><init>()V

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->IMPL:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;

    .line 69
    :goto_0
    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->CLASS_BluetoothProfile:Ljava/lang/Class;

    .line 72
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->CLASS_BluetoothProfile:Ljava/lang/Class;

    const-string v1, "getConnectedDevices"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 71
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->METHOD_getConnectedDevices:Ljava/lang/reflect/Method;

    .line 29
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileStubImpl;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileStubImpl;-><init>()V

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->IMPL:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->IMPL:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;

    return-object v0
.end method

.method public static getConnectedDevices(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v3, 0x0

    sget-object v4, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->METHOD_getConnectedDevices:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 116
    invoke-static {p0, v3, v4, v5}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 119
    .local v2, results:Ljava/util/List;,"Ljava/util/List<*>;"
    if-nez v2, :cond_1

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 130
    :cond_0
    return-object v0

    .line 123
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 123
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v0, output:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, result:Ljava/lang/Object;
    new-instance v4, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;

    invoke-direct {v4, v1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
