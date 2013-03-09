.class public Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;
.super Ljava/lang/Object;
.source "HtcPhoneService.java"

# interfaces
.implements Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "HtcPhoneService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPhoneService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 63
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private performPhoneAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->getPhoneService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 54
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->performHtcPhoneAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public answerCall()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->performPhoneAction(I)V

    .line 31
    return-void
.end method

.method public answerCallByVoice()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x6

    .line 93
    .local v0, ACTION_ANSWER_AS_VOICE_CALL:I
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->performPhoneAction(I)V

    .line 95
    return-void
.end method

.method public phoneUIReady()V
    .locals 3

    .prologue
    .line 79
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v1, "HtcPhoneService"

    const-string v2, "phoneUIReady"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x5

    .line 84
    .local v0, ACTION_PHONE_UI_READY:I
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->performPhoneAction(I)V

    goto :goto_0
.end method

.method public rejectCall()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->performPhoneAction(I)V

    .line 37
    return-void
.end method

.method public sameService(Lcom/htc/lockscreen/telephony/PhoneState;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 69
    iget-object v0, p1, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->performPhoneAction(I)V

    .line 49
    return-void
.end method

.method public silent()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;->performPhoneAction(I)V

    .line 43
    return-void
.end method

.method public startService()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public stopService()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
