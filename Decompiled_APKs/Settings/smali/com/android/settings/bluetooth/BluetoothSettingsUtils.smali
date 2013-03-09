.class public Lcom/android/settings/bluetooth/BluetoothSettingsUtils;
.super Ljava/lang/Object;
.source "BluetoothSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothSettingsUtils"

.field private static mActivity:Landroid/app/Activity;

.field private static mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

.field private static mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static checkUnmountState()Z
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->isMediaMounted()Z

    move-result v0

    .line 69
    .local v0, mounted:Z
    const-string v1, "BluetoothSettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUnmountState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->isMediaShared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

    const v2, 0x7f0c017d

    invoke-interface {v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;->disableFtpSharePreference(I)V

    .line 77
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 74
    :cond_1
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

    const v2, 0x20c00a1

    invoke-interface {v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;->disableFtpSharePreference(I)V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static declared-synchronized isMediaMounted()Z
    .locals 3

    .prologue
    .line 63
    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized isMediaShared()Z
    .locals 3

    .prologue
    .line 58
    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, state:Ljava/lang/String;
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static releaseListener(Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;)V
    .locals 3
    .parameter "controller"

    .prologue
    const/4 v2, 0x0

    .line 48
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    invoke-interface {p0}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 50
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    sput-object v2, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    .line 52
    sput-object v2, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

    .line 53
    sput-object v2, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    :cond_0
    return-void
.end method

.method public static requestListener(Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 22
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    sput-object p0, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mController:Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;

    .line 27
    invoke-interface {p0}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    .line 28
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$1;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils$1;-><init>()V

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->checkUnmountState()Z

    .line 45
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
