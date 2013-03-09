.class Lcom/google/android/videochat/CallAudioHelper;
.super Ljava/lang/Object;
.source "CallAudioHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/CallAudioHelper$4;
    }
.end annotation


# instance fields
.field private mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field private mAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializationLock:Ljava/lang/Object;

.field private mIsInitialized:Z

.field private mOnAudioStateChangedListener:Ljava/lang/Runnable;

.field private mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field private mSavedMuteState:Z

.field private mSavedSpeakerphoneState:Z

.field private mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private onBluetoothTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "callbackHandler"
    .parameter "onAudioStateChangedListener"

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mIsInitialized:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mInitializationLock:Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    .line 64
    new-instance v0, Lcom/google/android/videochat/CallAudioHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallAudioHelper$1;-><init>(Lcom/google/android/videochat/CallAudioHelper;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->onBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/google/android/videochat/CallAudioHelper$2;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallAudioHelper$2;-><init>(Lcom/google/android/videochat/CallAudioHelper;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Lcom/google/android/videochat/CallAudioHelper$3;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallAudioHelper$3;-><init>(Lcom/google/android/videochat/CallAudioHelper;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object p1, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/google/android/videochat/CallAudioHelper;->mHandler:Landroid/os/Handler;

    .line 208
    iput-object p3, p0, Lcom/google/android/videochat/CallAudioHelper;->mOnAudioStateChangedListener:Ljava/lang/Runnable;

    .line 209
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 212
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/videochat/CallAudioHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->onBluetoothTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/videochat/CallAudioHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/videochat/CallAudioHelper;)Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/videochat/CallAudioHelper;Lcom/google/android/videochat/CallState$AudioDeviceState;)Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/videochat/CallAudioHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/videochat/CallAudioHelper;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/videochat/CallAudioHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/videochat/CallAudioHelper;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/videochat/CallAudioHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->usePendingAudioDeviceState()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/videochat/CallAudioHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->hasEarpiece()Z

    move-result v0

    return v0
.end method

.method private cancelBluetoothTimer()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "Canceling bluetooth timer"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->onBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method private hasEarpiece()Z
    .locals 3

    .prologue
    .line 530
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 532
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 536
    const/4 v0, 0x3

    const-string v1, "vclib:CallAudioHelper"

    invoke-static {v0, v1, p1}, Lcom/google/android/videochat/util/LogUtil;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 540
    const/4 v0, 0x6

    const-string v1, "vclib:CallAudioHelper"

    invoke-static {v0, v1, p1}, Lcom/google/android/videochat/util/LogUtil;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private onBluetoothTimeout()V
    .locals 2

    .prologue
    .line 421
    const-string v0, "Starting or stopping Bluetooth timed out"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V

    .line 426
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "We thought BT had timed out, but it\'s actually on; updating state."

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->loge(Ljava/lang/String;)V

    .line 431
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 437
    :goto_1
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 435
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->usePendingAudioDeviceState()V

    goto :goto_1

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    const-string v0, "We thought BT had timed out, but it\'s actually off; updating state."

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->loge(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->usePendingAudioDeviceState()V

    .line 448
    :goto_2
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V

    goto :goto_0

    .line 446
    :cond_1
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    goto :goto_2

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerForBluetoothIntentBroadcast()V
    .locals 3

    .prologue
    .line 285
    const-string v1, "registerForBluetoothIntentBroadcast"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    return-void
.end method

.method private registerForWiredHeadsetIntentBroadcast()V
    .locals 3

    .prologue
    .line 298
    const-string v1, "registerForWiredHeadsetIntentBroadcast"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    return-void
.end method

.method private reportUpdate()V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportUpdate: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mOnAudioStateChangedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mOnAudioStateChangedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 349
    :cond_0
    return-void
.end method

.method private setSpeakerphoneOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 458
    .local v0, wasOn:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerphoneOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), wasOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 461
    if-ne v0, p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private startBluetoothTimer()V
    .locals 4

    .prologue
    .line 411
    const-string v0, "Starting bluetooth timer"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->onBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    return-void
.end method

.method private turnOffBluetooth()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 387
    const-string v1, "turnOffBluetooth"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eq v1, v2, :cond_0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffBluetooth: state is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot turn off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 407
    :goto_0
    return v0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    const-string v1, "turnOffBluetooth: SCO is already off, we were out of sync"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->loge(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->usePendingAudioDeviceState()V

    .line 399
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V

    goto :goto_0

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V

    .line 404
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 405
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 406
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->startBluetoothTimer()V

    .line 407
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private turnOnBluetooth()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 358
    const-string v1, "turnOnBluetooth"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-ne v1, v2, :cond_1

    .line 361
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnBluetooth: state is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot turn on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 377
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    const-string v1, "turnOnBluetooth: SCO is already on, we were out of sync"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->loge(Ljava/lang/String;)V

    .line 369
    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V

    .line 374
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 375
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 376
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->startBluetoothTimer()V

    .line 377
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterForBluetoothIntentBroadcast()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "unregisterForBluetoothIntentBroadcast"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    return-void
.end method

.method private unregisterForWiredHeadsetIntentBroadcast()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "unregisterForWiredHeadsetIntentBroadcast"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    return-void
.end method

.method private usePendingAudioDeviceState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 472
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    sget-object v2, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usePendingAudioDeviceState: there\'s no pending state or it was WH, but has beenunplugged; defaulting to speakerphone. Pending state was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->loge(Ljava/lang/String;)V

    .line 478
    iput-object v3, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 479
    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 480
    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usePendingAudioDeviceState: using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 486
    iput-object v3, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 487
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public deinitAudio()V
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 265
    monitor-exit v1

    .line 282
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v0, "deinitAudio: turn off BT SCO"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 270
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->cancelBluetoothTimer()V

    .line 272
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->unregisterForWiredHeadsetIntentBroadcast()V

    .line 273
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->unregisterForBluetoothIntentBroadcast()V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deinitAudio: set mute back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedMuteState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", speakerphone back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedSpeakerphoneState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedMuteState:Z

    invoke-virtual {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->setMute(Z)V

    .line 278
    iget-boolean v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedSpeakerphoneState:Z

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mIsInitialized:Z

    .line 281
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioDeviceState()Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method

.method public getAudioDevices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initAudio()V
    .locals 4

    .prologue
    .line 224
    iget-object v2, p0, Lcom/google/android/videochat/CallAudioHelper;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 226
    monitor-exit v2

    .line 256
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/videochat/CallAudioHelper;->isMute()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedMuteState:Z

    .line 231
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedSpeakerphoneState:Z

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved mute = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedMuteState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", speakerphone = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/android/videochat/CallAudioHelper;->mSavedSpeakerphoneState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 238
    const-string v1, "initAudio: turning speakerphone on by default"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    .line 240
    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 242
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->registerForBluetoothIntentBroadcast()V

    .line 243
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->registerForWiredHeadsetIntentBroadcast()V

    .line 246
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 247
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 249
    const-string v1, "BT device was connected at start of call, turning SCO on..."

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDevices:Ljava/util/Set;

    sget-object v3, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 254
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mIsInitialized:Z

    .line 255
    monitor-exit v2

    goto :goto_0

    .end local v0           #btAdapter:Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 491
    sget-object v0, Lcom/google/android/videochat/CallAudioHelper$4;->$SwitchMap$com$google$android$videochat$CallSession$AudioDevice:[I

    invoke-virtual {p1}, Lcom/google/android/videochat/CallSession$AudioDevice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V

    .line 523
    return-void

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 495
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->turnOnBluetooth()Z

    goto :goto_0

    .line 498
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->turnOffBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 503
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 501
    :cond_0
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    goto :goto_1

    .line 506
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->turnOffBluetooth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 511
    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 509
    :cond_1
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    goto :goto_2

    .line 514
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->turnOffBluetooth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->EARPIECE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mPendingAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 519
    :goto_3
    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallAudioHelper;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 517
    :cond_2
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->EARPIECE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    goto :goto_3

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/android/videochat/CallAudioHelper;->isMute()Z

    move-result v0

    .line 314
    .local v0, wasMute:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wasMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallAudioHelper;->log(Ljava/lang/String;)V

    .line 316
    if-ne v0, p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CallAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 321
    invoke-direct {p0}, Lcom/google/android/videochat/CallAudioHelper;->reportUpdate()V

    goto :goto_0
.end method
