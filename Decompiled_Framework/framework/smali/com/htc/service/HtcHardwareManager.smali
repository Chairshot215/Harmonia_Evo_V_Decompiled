.class public Lcom/htc/service/HtcHardwareManager;
.super Ljava/lang/Object;
.source "HtcHardwareManager.java"


# static fields
.field public static final MODE_BEATS_BT:I = 0x1

.field public static final MODE_BEATS_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcHardwareManager"


# instance fields
.field private mService:Landroid/os/IHtcHardwareService;


# direct methods
.method public constructor <init>(Landroid/os/IHtcHardwareService;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    return-void
.end method


# virtual methods
.method public getCapsLedState()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getCapsLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HtcHardwareManager"

    const-string v2, "getCapsLedState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFnLedState()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getFnLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HtcHardwareManager"

    const-string v2, "getFnLedState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHeadsetType()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "HtcHardwareManager"

    const-string v2, "getHeadsetType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "error_state"

    goto :goto_0
.end method

.method public isSupportBeats()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioManager;->isSupportBeats()Z

    move-result v0

    return v0
.end method

.method public setBeatsState(ZZLjava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->setBeatsState(ZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcHardwareManager"

    const-string v3, "audioService.setBeatsState: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBeatsState(ZZLjava/lang/String;I)V
    .locals 4

    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IAudioService;->setBeatsStateWithHeadsetMode(ZZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcHardwareManager"

    const-string v3, "audioService.setBeatsState: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHeadsetTTYType(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcHardwareManager;->mService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->setHeadsetTTYType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcHardwareManager"

    const-string/jumbo v2, "setHeadsetTTYType: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
