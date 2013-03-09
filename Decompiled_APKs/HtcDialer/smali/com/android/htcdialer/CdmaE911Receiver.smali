.class public Lcom/android/htcdialer/CdmaE911Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CdmaE911Receiver.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CdmaE911Receiver"

.field static final exitEmergencyButton:Z = true


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private hasRegistered:Z

.field private intentFilter:Landroid/content/IntentFilter;

.field private mEnterEmergencyMode:Z

.field private phoneType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->hasRegistered:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->mEnterEmergencyMode:Z

    .line 40
    iput-object p1, p0, Lcom/android/htcdialer/CdmaE911Receiver;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->handler:Landroid/os/Handler;

    .line 42
    iput v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->phoneType:I

    .line 43
    return-void
.end method

.method private phoneTypeUpdate()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/htcdialer/CdmaE911Receiver;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->phoneType:I

    .line 48
    const-string v0, "CdmaE911Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneTypeUpdate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->phoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method public isEmergencyMode()Z
    .locals 3

    .prologue
    .line 119
    const-string v0, "CdmaE911Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergencyMode, mEnterEmergencyMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->mEnterEmergencyMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->mEnterEmergencyMode:Z

    return v0
.end method

.method public onListenChanging(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 53
    if-eqz p1, :cond_2

    .line 55
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->hasRegistered:Z

    if-nez v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/android/htcdialer/CdmaE911Receiver;->phoneTypeUpdate()V

    .line 57
    iget v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->phoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->intentFilter:Landroid/content/IntentFilter;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htcdialer/CdmaE911Receiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->hasRegistered:Z

    .line 64
    const-string v0, "CdmaE911Receiver"

    const-string v1, "register Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->hasRegistered:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    const-string v0, "CdmaE911Receiver"

    const-string v1, "unregister Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaE911Receiver;->hasRegistered:Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "CdmaE911Receiver"

    const-string v3, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->phoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 91
    const-string v2, "phoneinECMState"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->mEnterEmergencyMode:Z

    .line 93
    iget-object v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->handler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    const-string v2, "CdmaE911Receiver"

    const-string v3, "Enter emergency call back mode after call disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->mEnterEmergencyMode:Z

    .line 97
    iget-object v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/htcdialer/CdmaE911Receiver;->handler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    const-string v2, "CdmaE911Receiver"

    const-string v3, "exit emergency call back mode after call disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "CdmaE911Receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "CdmaE911Receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/htcdialer/CdmaE911Receiver;->phoneType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phones"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
