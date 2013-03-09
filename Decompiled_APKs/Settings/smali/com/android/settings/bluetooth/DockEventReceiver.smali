.class public Lcom/android/settings/bluetooth/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# static fields
.field public static final ACTION_DOCK_SHOW_UI:Ljava/lang/String; = "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DockEventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xa

    .line 38
    if-nez p2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 42
    .local v2, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 43
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 44
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getDockState(Landroid/content/Context;)I

    move-result v3

    .line 50
    .local v3, state:I
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    if-ne v3, v6, :cond_0

    .line 52
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    .local v1, i:Landroid/content/Intent;
    const-class v4, Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 57
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    :cond_4
    invoke-static {p1, v6}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->saveDockState(Landroid/content/Context;I)V

    goto :goto_0
.end method
