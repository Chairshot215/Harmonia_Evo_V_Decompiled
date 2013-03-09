.class public Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;
.super Ljava/lang/Object;
.source "BluetoothAdapterCompat.java"


# static fields
.field private static final CLASS_BluetoothAdapter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_closeProfileProxy:Ljava/lang/reflect/Method;

.field private static final METHOD_getBondedDevices:Ljava/lang/reflect/Method;

.field private static final METHOD_getDefaultAdapter:Ljava/lang/reflect/Method;

.field private static final METHOD_getProfileProxy:Ljava/lang/reflect/Method;

.field private static final METHOD_isEnabled:Ljava/lang/reflect/Method;


# instance fields
.field private final mReceiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    const-string v0, "android.bluetooth.BluetoothAdapter"

    .line 32
    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->CLASS_BluetoothAdapter:Ljava/lang/Class;

    .line 35
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->CLASS_BluetoothAdapter:Ljava/lang/Class;

    const-string v1, "getProfileProxy"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    .line 36
    sget-object v3, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;->CLASS_ServiceListenerCompat:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 34
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_getProfileProxy:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->CLASS_BluetoothAdapter:Ljava/lang/Class;

    const-string v1, "closeProfileProxy"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 39
    sget-object v3, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->CLASS_BluetoothProfile:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 37
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_closeProfileProxy:Ljava/lang/reflect/Method;

    .line 41
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->CLASS_BluetoothAdapter:Ljava/lang/Class;

    const-string v1, "getDefaultAdapter"

    new-array v2, v4, [Ljava/lang/Class;

    .line 40
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_getDefaultAdapter:Ljava/lang/reflect/Method;

    .line 43
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->CLASS_BluetoothAdapter:Ljava/lang/Class;

    const-string v1, "getBondedDevices"

    new-array v2, v4, [Ljava/lang/Class;

    .line 42
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_getBondedDevices:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->CLASS_BluetoothAdapter:Ljava/lang/Class;

    const-string v1, "isEnabled"

    new-array v2, v4, [Ljava/lang/Class;

    .line 44
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_isEnabled:Ljava/lang/reflect/Method;

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->mReceiver:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static declared-synchronized getDefaultAdapter()Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;

    monitor-enter v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_getDefaultAdapter:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;

    invoke-direct {v1, v0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public closeProfileProxy(ILjava/lang/Object;)V
    .locals 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->mReceiver:Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_closeProfileProxy:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v3, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->mReceiver:Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_getBondedDevices:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 94
    invoke-static {v3, v4, v5, v6}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 97
    .local v2, results:Ljava/util/Set;,"Ljava/util/Set<*>;"
    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 107
    :goto_0
    return-object v3

    .line 101
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v0, output:Ljava/util/Set;,"Ljava/util/Set<Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, result:Ljava/lang/Object;
    new-instance v4, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;

    invoke-direct {v4, v1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->mReceiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getProfileProxy(Landroid/content/Context;Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;I)Z
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->mReceiver:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_getProfileProxy:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 129
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->mReceiver:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothAdapterCompat;->METHOD_isEnabled:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
