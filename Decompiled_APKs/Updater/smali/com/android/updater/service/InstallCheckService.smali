.class public Lcom/android/updater/service/InstallCheckService;
.super Landroid/app/Service;
.source "InstallCheckService.java"


# static fields
.field public static final INSTALL_CHECK_ERROR_BATTERY_LOW:I = 0x0

.field public static final INSTALL_CHECK_ERROR_KEY:Ljava/lang/String; = "install_check_error"

.field public static final INSTALL_CHECK_ERROR_STORAGE_FULL:I = 0x1

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | InstallCheckService"


# instance fields
.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;

    .line 30
    new-instance v0, Lcom/android/updater/service/InstallCheckService$1;

    invoke-direct {v0, p0}, Lcom/android/updater/service/InstallCheckService$1;-><init>(Lcom/android/updater/service/InstallCheckService;)V

    iput-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/service/InstallCheckService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/updater/service/InstallCheckService;->checkUpdateFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/updater/service/InstallCheckService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/service/InstallCheckService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/updater/service/InstallCheckService;->checkInternalStorage()Z

    move-result v0

    return v0
.end method

.method private checkInternalStorage()Z
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getAvailableInternalStorage()J

    move-result-wide v0

    .line 130
    .local v0, availableSize:J
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getStorageBoundary(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 131
    const/4 v2, 0x0

    .line 133
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkUpdateFile()Z
    .locals 5

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, isUpdateFileExist:Z
    iget-object v3, p0, Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;

    const-string v4, "updateFile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, updatePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 142
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, updateFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 148
    .end local v1           #updateFile:Ljava/io/File;
    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/updater/service/InstallCheckService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 124
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/updater/service/InstallCheckService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/updater/service/InstallCheckService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;

    .line 111
    const/4 v0, 0x2

    return v0
.end method
