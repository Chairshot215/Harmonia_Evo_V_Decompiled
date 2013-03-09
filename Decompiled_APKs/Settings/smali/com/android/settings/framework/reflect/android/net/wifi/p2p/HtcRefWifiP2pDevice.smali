.class public final Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;
.super Ljava/lang/Object;
.source "HtcRefWifiP2pDevice.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sIsCreatedGroupCached:Ljava/lang/Boolean;

.field private static sIsCreatedGroupMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreateGroupOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->sIsCreatedGroupCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 34
    const-string v1, "android.net.wifi.p2p.WifiP2pDevice"

    const-string v3, "getCreateGroupOwner"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->sIsCreatedGroupMethod:Ljava/lang/ref/SoftReference;

    .line 38
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->sIsCreatedGroupCached:Ljava/lang/Boolean;

    .line 41
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->sIsCreatedGroupCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    sget-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->sIsCreatedGroupMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 43
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 45
    const-string v1, "android.net.wifi.p2p.WifiP2pDevice"

    const-string v3, "getCreateGroupOwner"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->sIsCreatedGroupMethod:Ljava/lang/ref/SoftReference;

    .line 50
    :cond_1
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 54
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return v2

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 38
    goto :goto_0

    .line 53
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/android/net/wifi/p2p/HtcRefWifiP2pDevice;->TAG:Ljava/lang/String;

    const-string v3, "WifiP2pDevice.getCreateGroupOwner() doesn\'t exist."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
