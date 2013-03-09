.class public Lcom/htc/android/psclient/UsbConnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectedReceiver.java"


# static fields
.field private static state:I


# instance fields
.field private final INTENT_ASK_ME_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

.field private final INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private buttonType:Ljava/lang/String;

.field private connectedMode:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private hasSetupWizRun:I

.field private isDontAsk:Z

.field private isRosieComplete:I

.field private mContext:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;

.field private rosieWaitTime:I

.field private uiTimer:Ljava/util/Timer;

.field private uiWaitTime:J

.field private usbConnected:Z

.field private usbWaitTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-string v0, "UsbConnectedReceiver"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1770

    iput v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->usbWaitTime:I

    .line 27
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->rosieWaitTime:I

    .line 28
    iput v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->hasSetupWizRun:I

    .line 29
    iput v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->isRosieComplete:I

    .line 31
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiWaitTime:J

    .line 33
    iput-boolean v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I

    .line 39
    const-string v0, "default_type_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    .line 40
    const-string v0, "ask_me_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->INTENT_ASK_ME_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/psclient/UsbConnectedReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->usbConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/psclient/UsbConnectedReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/psclient/UsbConnectedReceiver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/psclient/UsbConnectedReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/psclient/UsbConnectedReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/htc/android/psclient/UsbConnectedReceiver;->state:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->state:I

    return p0
.end method


# virtual methods
.method public closeUSBUI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 405
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 411
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchUSBUI(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 420
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Launch Usb connection UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 423
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 426
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    .line 428
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;

    new-instance v3, Lcom/htc/android/psclient/UsbConnectedReceiver$2;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/UsbConnectedReceiver$2;-><init>(Lcom/htc/android/psclient/UsbConnectedReceiver;)V

    iget-wide v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->uiWaitTime:J

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    move-object v2, p2

    .line 46
    .local v2, mIntent:Landroid/content/Intent;
    const-string v4, "pimSyncPref"

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 47
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    .line 49
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;

    .line 50
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v4, "com.htc.android.omadm.state.change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "dm.lawmo.lockstate"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 54
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "isDeviceLocked"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Device locked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 402
    :goto_1
    return-void

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "isDeviceLocked"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Device unlocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isDeviceLocked"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Device is locked, do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :cond_2
    const-string v4, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, extras:Landroid/os/Bundle;
    const-string v4, "connected"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->usbConnected:Z

    .line 75
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    iput-boolean v7, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->usbConnected:Z

    .line 83
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/psclient/UsbConnectedReceiver$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/htc/android/psclient/UsbConnectedReceiver$1;-><init>(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 401
    .local v3, th:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 79
    .end local v3           #th:Ljava/lang/Thread;
    :cond_5
    iput-boolean v8, p0, Lcom/htc/android/psclient/UsbConnectedReceiver;->usbConnected:Z

    goto :goto_2
.end method
