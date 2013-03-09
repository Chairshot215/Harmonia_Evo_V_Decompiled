.class public Lcom/android/htcdialer/CdmaPhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CdmaPhoneStateReceiver.java"


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_CDMA_PHONE:Z = false

.field private static final TAG:Ljava/lang/String; = "CdmaPhoneStateReceiver"


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private hasRegistered:Z

.field private intentFilter:Landroid/content/IntentFilter;

.field public isPowerSaveMode:Z

.field private leavePowerSaveSend:Z

.field private phoneType:I

.field private phoneTypeDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->SUPPORT_CDMA_PHONE:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->handler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneType:I

    .line 60
    return-void
.end method

.method private phoneTypeUpdate()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneType:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneTypeDetected:Z

    .line 67
    return-void
.end method


# virtual methods
.method public leavePowerSaveModeRequest()V
    .locals 4

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->isPowerSaveMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveSend:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveSend:Z

    .line 125
    :cond_0
    return-void
.end method

.method public leavePowerSaveModeSend()V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->isPowerSaveMode:Z

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->leavePowerSaveSend:Z

    .line 140
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onListenChanging(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 71
    if-eqz p1, :cond_3

    .line 73
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->hasRegistered:Z

    if-nez v0, :cond_2

    .line 74
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneTypeDetected:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneTypeUpdate()V

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->hasRegistered:Z

    .line 94
    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    iget-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->hasRegistered:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->hasRegistered:Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 149
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 150
    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 151
    .local v4, state:Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->htcGetCdmaRadioPowerSaveMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->isPowerSaveMode:Z

    .line 153
    iget-object v5, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->handler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    .end local v1           #data:Landroid/os/Bundle;
    .end local v4           #state:Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const-string v5, "phoneName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, phoneName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->handler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v3           #phoneName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 162
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public radioChange(Ljava/lang/String;)Z
    .locals 5
    .parameter "changeTo"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, newPhoneType:I
    if-eqz p1, :cond_0

    .line 101
    const-string v4, "CDMA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const/4 v1, 0x2

    .line 108
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneType:I

    if-eq v1, v4, :cond_3

    move v0, v2

    .line 109
    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 110
    iput v1, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneType:I

    .line 111
    iput-boolean v2, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneTypeDetected:Z

    .line 112
    iget v2, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->phoneType:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 113
    iput-boolean v3, p0, Lcom/android/htcdialer/CdmaPhoneStateReceiver;->isPowerSaveMode:Z

    .line 116
    :cond_1
    return v0

    .line 104
    .end local v0           #changed:Z
    :cond_2
    const-string v4, "GSM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 108
    goto :goto_1
.end method
