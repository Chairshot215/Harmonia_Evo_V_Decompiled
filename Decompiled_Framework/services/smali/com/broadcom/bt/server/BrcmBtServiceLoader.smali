.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BrcmBtServiceLoader.java"


# static fields
.field private static final FM_ALWAYS_ON:Z = true

.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static loadServices(Landroid/content/Context;I)V
    .locals 5

    :try_start_0
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Initializing...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.broadcom.bt.app.system"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "system"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "********BT/Fm services configured to run in system process..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "service.brcm.bt.is_sta"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Starting FM services..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onEnabled()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0, p1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadSystemServices(Landroid/content/Context;I)V

    return-void

    :cond_0
    :try_start_1
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "********BT/Fm services configured to run as standalone process..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "service.brcm.bt.is_sta"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Error reading BrcmBluetoothServices package"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static loadSystemServices(Landroid/content/Context;I)V
    .locals 3

    const-string v1, "BrcmBtServiceLoader"

    const-string v2, "Loading bluetooth services as system service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isHidSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "bluetooth_hid"

    new-instance v2, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    const-string v1, "bt_fm_management"

    new-instance v2, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BrcmBtServiceLoader"

    const-string v2, "Error loading bluetooth services"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
