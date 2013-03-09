.class public final Lcom/sonyericsson/audioeffectservice/AudioEffectService;
.super Landroid/app/Service;
.source "AudioEffectService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioEffectService"

.field private static mXLoudAdapter:Lcom/sonyericsson/audioeffectservice/XLoudAdapter;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mDeadObjectHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;

    invoke-direct {v0}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;-><init>()V

    sput-object v0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mXLoudAdapter:Lcom/sonyericsson/audioeffectservice/XLoudAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    .line 51
    new-instance v0, Lcom/sonyericsson/audioeffectservice/AudioEffectService$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/audioeffectservice/AudioEffectService$1;-><init>(Lcom/sonyericsson/audioeffectservice/AudioEffectService;)V

    iput-object v0, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mDeadObjectHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/sonyericsson/audioeffectservice/XLoudAdapter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mXLoudAdapter:Lcom/sonyericsson/audioeffectservice/XLoudAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/audioeffectservice/AudioEffectService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->getServiceAndLink()V

    return-void
.end method

.method private getServiceAndLink()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 115
    iput-object v4, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    .line 118
    :cond_0
    const-string v1, "media.audio_flinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceAndLink : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object v4, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "AudioEffectService"

    const-string v1, "binderDied : AudioFlinger is dead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mDeadObjectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mDeadObjectHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    const-string v0, "AudioEffectService"

    const-string v1, "AudioEffectService is destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->getServiceAndLink()V

    .line 77
    :cond_0
    sget-object v0, Lcom/sonyericsson/audioeffectservice/AudioEffectService;->mXLoudAdapter:Lcom/sonyericsson/audioeffectservice/XLoudAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/audioeffectservice/XLoudAdapter;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    .line 78
    const/4 v0, 0x2

    return v0
.end method
