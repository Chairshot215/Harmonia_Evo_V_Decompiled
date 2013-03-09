.class public Lcom/htc/fm/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"


# static fields
.field public static final AND_NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final AND_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final AND_PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final AND_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final COMMANDFILTER:Landroid/content/IntentFilter; = null

.field public static final CONCURRENCE_RX_TURNOFF:I = 0x3

.field public static final CONCURRENCE_RX_TURNON:I = 0x2

.field public static final CONCURRENCE_TX_ENABLE:I = 0x4

.field public static final CONCURRENCE_TX_TURNOFF:I = 0x1

.field public static final CONCURRENCE_TX_TURNON:I = 0x0

.field private static final FADEIN:I = 0x4

.field private static final FFRW_REPEAT_FF:I = 0x1

.field private static final FFRW_REPEAT_NONE:I = 0x0

.field private static final FFRW_REPEAT_RW:I = 0x2

.field private static final FF_RW:I = 0x5

.field private static final FMRADIOSERVICE_STATUS:I = 0x1

.field public static final FM_CMD_COMPLETE:Ljava/lang/String; = "com.htc.music.fmseekcomplete"

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.next"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.pause"

.field public static final PLAYBACK_RINGTONE:Ljava/lang/String; = "android.htc.intent.action.PLAYBACK_RINGTONE"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.previous"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "FMRadioService"

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.togglepause"

.field private static final VOLUME_MUTE:I = 0x0

.field private static final VOLUME_RESUME:I = 0x1

.field private static final WHAT_FFSEEK_DOWN:I = 0x1

.field private static final WHAT_FFSEEK_UP:I

.field private static final WHAT_SERVICE_COMMAND_STOP:I

.field public static mQuickBootPoweroff:Z

.field private static mUnplugtoturnoff:Z


# instance fields
.field private UIExist:Z

.field private mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBinder:Lcom/htc/fm/IFMRadioService$Stub;

.field private mCursor:Landroid/database/Cursor;

.field private mFFRWRepeat:I

.field mFFSeekHandler:Landroid/os/Handler;

.field private mFMBinded:Z

.field mFMConcurrenceMsgHandler:Landroid/os/Handler;

.field private mFMController:Lcom/htc/fm/FMTunerController;

.field private mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

.field private mFMServiceCommandHandler:Landroid/os/Handler;

.field private mFMVolume:I

.field private mFMVolumeHandler:Landroid/os/Handler;

.field private mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

.field private mFreq:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private mPausedByTransientLossOfFocus:Z

.field private mResumeAfterCall:Z

.field private mRxRequestFreq:I

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mTxRequestFreq:I

.field private mTxTuner:Lcom/htc/fm/ITxTuner;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeBe4Mute:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private m_nCmdState:I

.field private misFirsttimeHeadsetplug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/htc/fm/FMRadioService;->getCommandFilter()Landroid/content/IntentFilter;

    move-result-object v0

    sput-object v0, Lcom/htc/fm/FMRadioService;->COMMANDFILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 472
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 65
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMRadioService;->mServiceStartId:I

    .line 69
    iput v1, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    .line 71
    iput-boolean v1, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    .line 76
    iput v1, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    .line 78
    iput v1, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    .line 79
    iput v1, p0, Lcom/htc/fm/FMRadioService;->mFMVolume:I

    .line 84
    iput-boolean v1, p0, Lcom/htc/fm/FMRadioService;->UIExist:Z

    .line 85
    iput-boolean v3, p0, Lcom/htc/fm/FMRadioService;->misFirsttimeHeadsetplug:Z

    .line 255
    new-instance v0, Lcom/htc/fm/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$1;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;

    .line 315
    new-instance v0, Lcom/htc/fm/FMRadioService$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$2;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 352
    new-instance v0, Lcom/htc/fm/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$3;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMServiceCommandHandler:Landroid/os/Handler;

    .line 373
    new-instance v0, Lcom/htc/fm/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$4;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    iput-boolean v3, p0, Lcom/htc/fm/FMRadioService;->mIsScreenOn:Z

    .line 725
    iput-boolean v1, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    .line 726
    const v0, 0x155cc

    iput v0, p0, Lcom/htc/fm/FMRadioService;->mFreq:I

    .line 995
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    .line 1118
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

    .line 1208
    new-instance v0, Lcom/htc/fm/FMRadioService$6;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$6;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    .line 1452
    new-instance v0, Lcom/htc/fm/FMRadioService$7;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$7;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mBinder:Lcom/htc/fm/IFMRadioService$Stub;

    .line 1759
    new-instance v0, Lcom/htc/fm/FMRadioService$8;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$8;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1872
    new-instance v0, Lcom/htc/fm/FMRadioService$9;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadioService$9;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    .line 1939
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    .line 1940
    sget v0, Lcom/htc/fm/FMDef;->TX_FREQUENCE_START:I

    iput v0, p0, Lcom/htc/fm/FMRadioService;->mTxRequestFreq:I

    .line 1941
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    iput v0, p0, Lcom/htc/fm/FMRadioService;->mRxRequestFreq:I

    .line 473
    return-void
.end method

.method private DelayDestroyServiceInUnbind()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 868
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMServiceCommandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMServiceCommandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMServiceCommandHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 871
    const-string v1, "FMRadioService"

    const-string v2, "[DelayDestroyServiceInUnbind] send WHAT_SERVICE_COMMAND_STOP"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private IsUIExist()Z
    .locals 3

    .prologue
    .line 1859
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetUIStatus] UIExist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/FMRadioService;->UIExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->UIExist:Z

    return v0
.end method

.method private TriggerUIToNextChannel()V
    .locals 3

    .prologue
    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.RemoteControl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1135
    return-void
.end method

.method private TriggerUIToPreviousChannel()V
    .locals 3

    .prologue
    .line 1138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.RemoteControl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1141
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/fm/FMRadioService;->mFMVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->fmTurnOff()V

    return-void
.end method

.method static synthetic access$1102(Lcom/htc/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/fm/FMRadioService;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->reloadPresets()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->isOnAirplane()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->UIExist:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/fm/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->misFirsttimeHeadsetplug:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/fm/FMRadioService;->misFirsttimeHeadsetplug:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->IsUIExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/fm/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadioService;->turnOn(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/fm/FMRadioService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/fm/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/fm/FMRadioService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->mute()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/fm/FMRadioService;->mTxRequestFreq:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/fm/FMRadioService;->mRxRequestFreq:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fm/FMRadioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fm/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/fm/FMRadioService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->DelayDestroyServiceInUnbind()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/fm/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    return v0
.end method

.method private broadcastTxCmdState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.TXcmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2212
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2213
    return-void
.end method

.method private broadcastTxState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 2203
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService] broadcastState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.TXstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2206
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2207
    return-void
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 2

    .prologue
    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, mSeeking:Z
    iget v1, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1234
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->stopFFRWRepeat()V

    .line 1235
    :cond_0
    return-void
.end method

.method private createFMController()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/fm/FMUtils;->reflectsetAudioPath()V

    .line 112
    new-instance v1, Lcom/htc/fm/FMTunerController;

    invoke-direct {v1, p0}, Lcom/htc/fm/FMTunerController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    goto :goto_0
.end method

.method private createPresetAdapter()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

    if-nez v0, :cond_0

    .line 1121
    new-instance v0, Lcom/htc/fm/FMPresetAdapter;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMPresetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

    .line 1122
    :cond_0
    return-void
.end method

.method private fmTurnOff()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->createFMController()V

    .line 158
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v1}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v0

    .line 159
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 163
    :cond_0
    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 165
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService][FMTuner] Do not need to turn off when state is turn off"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService] fmTurnOff - start mFMBinded("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/16 v1, 0x8

    const-string v2, "FMRadioService"

    invoke-static {v1, v2}, Lcom/htc/fm/FMUtils;->showStack(ILjava/lang/String;)Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v1}, Lcom/htc/fm/FMTunerController;->turnOff()V

    .line 176
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->IsUIExist()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V

    .line 182
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/fm/FMRadioService;->stopForeground(Z)V

    .line 183
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->DelayDestroyServiceInUnbind()V

    .line 185
    iget-boolean v1, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->IsUIExist()Z

    move-result v1

    if-nez v1, :cond_4

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcfm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static getCommandFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.fm.servicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.htc.intent.action.PLAYBACK_RINGTONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method private getFMBtsUtils()Lcom/htc/fm/IFMBtsUtils;
    .locals 3

    .prologue
    .line 985
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    if-nez v1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.htc.fm.FMBtsUtils"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/IFMBtsUtils;

    iput-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    return-object v1

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQuickBootPoweroff()Z
    .locals 1

    .prologue
    .line 1449
    sget-boolean v0, Lcom/htc/fm/FMRadioService;->mQuickBootPoweroff:Z

    return v0
.end method

.method public static getUnplugtoturnoffFlag()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/htc/fm/FMRadioService;->mUnplugtoturnoff:Z

    return v0
.end method

.method private initSystemServicesState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 508
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 509
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 511
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 512
    .local v2, status:Landroid/app/Notification;
    invoke-virtual {p0, v4, v2}, Lcom/htc/fm/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 513
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 514
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 515
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 516
    return-void
.end method

.method private isOnAirplane()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadTxTuner(Ljava/lang/String;)Lcom/htc/fm/ITxTuner;
    .locals 4
    .parameter "classPath"

    .prologue
    .line 1946
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fm/ITxTuner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    .local v0, Tuner:Lcom/htc/fm/ITxTuner;
    :goto_0
    return-object v0

    .line 1948
    .end local v0           #Tuner:Lcom/htc/fm/ITxTuner;
    :catch_0
    move-exception v1

    .line 1949
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1950
    .restart local v0       #Tuner:Lcom/htc/fm/ITxTuner;
    const-string v2, "FMRadioService"

    const-string v3, "[loadTxTuner] This project may not need TxClass"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 247
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fm/FMRadioService;->mFMVolume:I

    .line 248
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService][FMTuner] mute() - Volume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMRadioService;->mFMVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    return-void
.end method

.method private pauseOtherPlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1737
    new-instance v0, Landroid/content/Intent;

    const-string v3, "kkbox.media.action.pause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1741
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1742
    .local v1, mAudioManager:Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 1744
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1745
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 1749
    .local v2, result:I
    if-nez v2, :cond_0

    .line 1750
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/htc/fm/FMRadioService;->mFMVolume:I

    .line 1751
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1755
    .end local v2           #result:I
    :cond_0
    return-void
.end method

.method private registerMediabutton(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 2219
    if-eqz p1, :cond_0

    .line 2221
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2222
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/fm/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2223
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcfm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2231
    :goto_0
    return-void

    .line 2227
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2228
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/fm/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2229
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private reloadPresets()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] reloadPresets()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->reloadPresets()V

    goto :goto_0
.end method

.method private resetAudioPath()V
    .locals 3

    .prologue
    .line 999
    const-string v1, "FMRadioService"

    const-string v2, "[FM]!!!! @@@@ service.resetAudioPath() - start"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    if-nez v1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.htc.fm.FMBtsUtils"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/IFMBtsUtils;

    iput-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    if-nez v1, :cond_1

    .line 1012
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/fm/IFMBtsUtils;->resetAudioPath(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :goto_1
    const-string v1, "FMRadioService"

    const-string v2, "!!!! @@@@ service.resetAudioPath() - end"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private restorePresetAdapter()V
    .locals 2

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->createPresetAdapter()V

    .line 1126
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 1127
    return-void
.end method

.method private setUnplugtoturnoffFlag(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 241
    sput-boolean p1, Lcom/htc/fm/FMRadioService;->mUnplugtoturnoff:Z

    .line 242
    return-void
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    return-void
.end method

.method private stopFFRWRepeat()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1228
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    .line 1229
    return-void
.end method

.method private turnOn(I)V
    .locals 8
    .parameter "freq"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 121
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService] fmTurnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start mFMBinded("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->createFMController()V

    .line 123
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iput p1, p0, Lcom/htc/fm/FMRadioService;->mRxRequestFreq:I

    .line 130
    const-string v1, "FMRadioService"

    const-string v2, "[turnOn] FM Tx is not turn off"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->pauseOtherPlayer()V

    .line 137
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService] [AudioHardware] FMUtils.setAudioPath(FMDef.AUDIO_PATH_DISABLE)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 139
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService] [AudioHardware] fmTurnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - mAudioPath("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getAudioPath()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v1, p1}, Lcom/htc/fm/FMTunerController;->turnOn(I)V

    .line 143
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 144
    .local v0, status:Landroid/app/Notification;
    invoke-virtual {p0, v4, v0}, Lcom/htc/fm/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 147
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService] [registerMediaButtonEventReceiver] when turn on"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, v4}, Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V

    goto :goto_0
.end method


# virtual methods
.method public DestroyFMTxTuner()V
    .locals 2

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0}, Lcom/htc/fm/ITxTuner;->Destroy()V

    .line 1967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    .line 1971
    :goto_0
    return-void

    .line 1970
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "[DestroyFMTxTuner] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetUIExist(Z)V
    .locals 3
    .parameter "exist"

    .prologue
    .line 1840
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SetUIExist] UIExist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iput-boolean p1, p0, Lcom/htc/fm/FMRadioService;->UIExist:Z

    .line 1844
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] [registerMediaButtonEventReceiver] when SetUIExist"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] [unregisterMediaButtonEventReceiver] when SetUIExist"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V

    goto :goto_0
.end method

.method public createFMTxTuner()V
    .locals 2

    .prologue
    .line 1956
    const-string v0, "com.htc.fm.TxTuner"

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->loadTxTuner(Ljava/lang/String;)Lcom/htc/fm/ITxTuner;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    .line 1957
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, p0}, Lcom/htc/fm/ITxTuner;->iniTx(Landroid/content/Context;)V

    .line 1961
    :goto_0
    return-void

    .line 1960
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "[createFMTxTuner] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public diableAudio()V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->disableAudio()V

    goto :goto_0
.end method

.method public enableTx()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1974
    const-string v0, "FMRadioService"

    const-string v1, "[enableTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_2

    .line 1977
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1979
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    const-string v0, "FMRadioService"

    const-string v1, "[enableTx] FM Rx is not turn off"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1983
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1995
    :goto_0
    return-void

    .line 1986
    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxState(I)V

    .line 1987
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0}, Lcom/htc/fm/ITxTuner;->enableTx()Z

    goto :goto_0

    .line 1990
    :cond_1
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableTx] TX\'s state is not TurnOff. State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1993
    :cond_2
    const-string v0, "FMRadioService"

    const-string v1, "[enableTx] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ffSeekDown()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1204
    return-void
.end method

.method public ffSeekUp()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1200
    return-void
.end method

.method public getAirModeWarningMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1290
    const/4 v0, 0x1

    .line 1291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getAudioMode()I

    move-result v0

    goto :goto_0
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1049
    const/4 v0, 0x2

    .line 1051
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getAudioPath()I

    move-result v0

    goto :goto_0
.end method

.method public getBand()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1296
    sget v0, Lcom/htc/fm/FMDef;->BAND:I

    .line 1297
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getBand()I

    move-result v0

    goto :goto_0
.end method

.method public getCmdState()I
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1063
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return v0

    .line 1066
    :cond_0
    iget v0, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    if-eqz v0, :cond_1

    .line 1067
    iget v0, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstPresetId()I
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1411
    const/4 v0, -0x1

    .line 1412
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getFirstPresetId()I

    move-result v0

    goto :goto_0
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1075
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 1077
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getFrequency()I

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1302
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 1303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getFrequency()I

    move-result v0

    goto :goto_0
.end method

.method public getHeadsetWarningMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresetId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1308
    const/4 v0, -0x1

    .line 1309
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getPresetId()I

    move-result v0

    goto :goto_0
.end method

.method public getRawRssi()I
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1089
    const/4 v0, -0x1

    .line 1091
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getRawRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getRdsData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1096
    const-string v0, ""

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getRdsData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRdsPTYData()I
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getRdsPTYData()I

    move-result v0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1082
    const/4 v0, -0x1

    .line 1084
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1056
    const/4 v0, 0x0

    .line 1058
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public getStateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1417
    const/4 v0, 0x0

    .line 1418
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getStateMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTxAudioMode()I
    .locals 2

    .prologue
    .line 2154
    const-string v0, "FMRadioService"

    const-string v1, "[getTxAudioMode]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v0

    .line 2161
    :goto_0
    return v0

    .line 2160
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTxCmdState()I
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 2166
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2168
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTxCmdState]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v2, v3}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, v3}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v0

    .line 2174
    :goto_0
    return v0

    .line 2173
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTxFrequency()I
    .locals 2

    .prologue
    .line 2141
    const-string v0, "FMRadioService"

    const-string v1, "[getTxFrequency]:"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v0

    .line 2148
    :goto_0
    return v0

    .line 2147
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    sget v0, Lcom/htc/fm/FMDef;->TX_FREQUENCE_START:I

    goto :goto_0
.end method

.method public getTxScanFreq(I)I
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 2192
    const-string v0, "FMRadioService"

    const-string v1, "[getTxScanFreq]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/ITxTuner;->getTxScanFreq(I)I

    move-result v0

    .line 2199
    :goto_0
    return v0

    .line 2198
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTxState()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2127
    const-string v0, "FMRadioService"

    const-string v1, "[getTxState]:"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2130
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTxState] state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v2, v3}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, v3}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v0

    .line 2135
    :goto_0
    return v0

    .line 2134
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBroadcasting()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->isStatusOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1437
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 2

    .prologue
    .line 1357
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1358
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRdsEnabled()Z
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->isRdsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRssiEnabled()Z
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTxMute()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2180
    const-string v2, "FMRadioService"

    const-string v3, "[isTxMute]"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v2, :cond_1

    .line 2183
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/htc/fm/ITxTuner;->getTxInfo(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2187
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2183
    goto :goto_0

    .line 2186
    :cond_1
    const-string v0, "FMRadioService"

    const-string v2, "mTxTuner is null"

    invoke-static {v0, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2187
    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 1172
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] service.next() - start"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v1

    .line 1176
    .local v1, status:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_2

    .line 1180
    :cond_0
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService] not handle remote key event on turn off"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_1
    :goto_0
    return-void

    .line 1184
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->restorePresetAdapter()V

    .line 1185
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

    sget v3, Lcom/htc/fm/FMDef;->Frequency:I

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMPresetAdapter;->next(I)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1186
    .local v0, preset:Lcom/htc/fm/Preset;
    if-eqz v0, :cond_1

    .line 1188
    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 1189
    invoke-static {p0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 1190
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 1192
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->TriggerUIToNextChannel()V

    .line 1193
    iget v2, v0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadioService;->tune(I)V

    .line 1194
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService] service.next() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService] service.next() - end"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 566
    iget v1, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    .line 568
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "FMRadio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    iput-boolean v4, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    .line 574
    :cond_0
    sput-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    .line 576
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService][FMTuner] FMRadio is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService] try to remove WHAT_SERVICE_COMMAND_STOP"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMServiceCommandHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    invoke-virtual {p0, v4}, Lcom/htc/fm/FMRadioService;->SetUIExist(Z)V

    .line 586
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mBinder:Lcom/htc/fm/IFMRadioService$Stub;

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 618
    const-string v0, "FMRadioService"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 621
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] life onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 482
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] [registerMediaButtonEventReceiver] when onCreate"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->registerMediabutton(Z)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->registerAirplaneModeListener()V

    .line 489
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->initSystemServicesState()V

    .line 491
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] IntentFilter register"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/htc/fm/FMRadioService;->COMMANDFILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->createFMController()V

    .line 496
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->createFMTxTuner()V

    .line 499
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 500
    const-string v0, "FMRadioService"

    const-string v1, "[onCreate] send WHAT_SERVICE_COMMAND_STOP"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->DelayDestroyServiceInUnbind()V

    .line 504
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] life onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "FMRadioService"

    const-string v1, "[FMRadioService] Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->turnOff()V

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->DestroyFMTxTuner()V

    .line 535
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 542
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 552
    iput-object v2, p0, Lcom/htc/fm/FMRadioService;->mCursor:Landroid/database/Cursor;

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService;->stopForeground(Z)V

    .line 559
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 560
    const-string v0, "FMRadioService"

    const-string v1, "onDestroy finished"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public onPresetUpdated(I)V
    .locals 1
    .parameter "rowId"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMTunerController;->onPresetUpdated(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 592
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService] life onRebind()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget v1, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    .line 596
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "FMRadio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    iput-boolean v4, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    .line 602
    :cond_0
    sput-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    .line 604
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadioService] life FMRadio is onRebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0, v4}, Lcom/htc/fm/FMRadioService;->SetUIExist(Z)V

    .line 610
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService] try to remove WHAT_SERVICE_COMMAND_STOP onRebind"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mFMServiceCommandHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const-wide/16 v7, 0x104

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 730
    const-string v3, "FMRadioService"

    const-string v4, "[FMRadioService] life onStart()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iput p2, p0, Lcom/htc/fm/FMRadioService;->mServiceStartId:I

    .line 733
    if-nez p1, :cond_1

    .line 734
    const-string v3, "FMRadioService"

    const-string v4, "intent NULL"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "FMRadioService"

    const-string v4, "[FMRadioService][FMTuner] onStart() - MediaMode:FM"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 758
    :cond_2
    const-string v3, "FMRadioService"

    const-string v4, "CMDNEXT"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->next()V

    goto :goto_0

    .line 760
    :cond_3
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 761
    :cond_4
    const-string v3, "FMRadioService"

    const-string v4, "CMDPREVIOUS"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->prev()V

    goto :goto_0

    .line 763
    :cond_5
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 764
    :cond_6
    const-string v3, "FMRadioService"

    const-string v4, "CMDTOGGLEPAUSE"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 766
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto :goto_0

    .line 768
    :cond_7
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->play()V

    goto :goto_0

    .line 770
    :cond_8
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 771
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto :goto_0

    .line 772
    :cond_a
    const-string v3, "play"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 773
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->play()V

    goto/16 :goto_0

    .line 774
    :cond_b
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 775
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto/16 :goto_0

    .line 776
    :cond_c
    const-string v3, "ffstart"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 777
    const-string v3, "FMRadioService"

    const-string v4, "CMDFFSTART"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    .line 779
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 780
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 781
    .end local v2           #msg:Landroid/os/Message;
    :cond_d
    const-string v3, "rwstart"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 782
    const-string v3, "FMRadioService"

    const-string v4, "CMDRWSTART"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    .line 784
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 785
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/fm/FMRadioService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 786
    .end local v2           #msg:Landroid/os/Message;
    :cond_e
    const-string v3, "ffstop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "rwstop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 787
    :cond_f
    const-string v3, "FMRadioService"

    const-string v4, "CMDFF/RWSTOP"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iput v5, p0, Lcom/htc/fm/FMRadioService;->mFFRWRepeat:I

    goto/16 :goto_0

    .line 789
    :cond_10
    const-string v3, "resume"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    const-string v3, "FMRadioService"

    const-string v4, "CMDRESUME"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-boolean v3, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    if-eqz v3, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->startAndFadeIn()V

    .line 795
    iput-boolean v5, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x0

    .line 626
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService][FMTuner] onStartCommand mFMBinded("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mIsScreenOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/FMRadioService;->mIsScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iput p3, p0, Lcom/htc/fm/FMRadioService;->mServiceStartId:I

    .line 629
    if-nez p1, :cond_0

    .line 630
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand intent NULL"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_0
    return v5

    .line 634
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, action:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, cmd:Ljava/lang/String;
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService][FMTuner] onStartCommand action("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cmd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 663
    :cond_1
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDNEXT"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->next()V

    .line 720
    :cond_2
    :goto_1
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand IDLE_DELAY - send"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_3
    const-string v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 666
    :cond_4
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDPREVIOUS"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->prev()V

    goto :goto_1

    .line 668
    :cond_5
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 669
    :cond_6
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 672
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDTOGGLEPAUSE - 1"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto :goto_1

    .line 675
    :cond_7
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDTOGGLEPAUSE - 2"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getFreq()I

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/htc/fm/FMRadioService;->mFreq:I

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getFreq()I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 678
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getFreq()I

    move-result v2

    iput v2, p0, Lcom/htc/fm/FMRadioService;->mFreq:I

    .line 680
    :cond_8
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mFreq:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadioService;->turnOn(I)V

    goto :goto_1

    .line 682
    :cond_9
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 683
    :cond_a
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDPAUSE"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 685
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto/16 :goto_1

    .line 687
    :cond_b
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mFreq:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadioService;->turnOn(I)V

    goto/16 :goto_1

    .line 689
    :cond_c
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 690
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDPLAY"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 692
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto/16 :goto_1

    .line 694
    :cond_d
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mFreq:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadioService;->turnOn(I)V

    goto/16 :goto_1

    .line 696
    :cond_e
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 697
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDSTOP"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->pause()V

    goto/16 :goto_1

    .line 699
    :cond_f
    const-string v2, "ffstart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 700
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDFFSTART"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->ffSeekUp()V

    goto/16 :goto_1

    .line 702
    :cond_10
    const-string v2, "rwstart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 703
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDRWSTART"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->ffSeekDown()V

    goto/16 :goto_0

    .line 706
    :cond_11
    const-string v2, "ffstop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "rwstop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 707
    :cond_12
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDFF/RWSTOP"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 711
    :cond_13
    const-string v2, "resume"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] onStartCommand CMDRESUME"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-boolean v2, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    if-eqz v2, :cond_2

    .line 714
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->startAndFadeIn()V

    .line 715
    iput-boolean v5, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    goto/16 :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 802
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, action:Ljava/lang/String;
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService][FMTuner]] FMRadio is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    if-eqz v0, :cond_0

    const-string v2, "FMRadio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->restorePresetAdapter()V

    .line 808
    iput-boolean v6, p0, Lcom/htc/fm/FMRadioService;->mFMBinded:Z

    .line 813
    :cond_0
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    if-gtz v2, :cond_2

    .line 814
    const-string v2, "FMRadioService"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_1
    :goto_0
    return v5

    .line 819
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v2}, Lcom/htc/fm/FMTunerController;->isStatusOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 821
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 822
    .local v1, audioManager:Landroid/media/AudioManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/htc/fm/MediaButtonIntentReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 827
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_3
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    .line 828
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService][FMTuner]] FMRadio is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    if-gtz v2, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z

    if-eqz v2, :cond_5

    .line 835
    :cond_4
    const-string v2, "FMRadioService"

    const-string v3, "onUnbind isBroadcasting() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] setRssiOff()"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    if-nez v2, :cond_1

    .line 839
    sput-boolean v6, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    .line 841
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->DelayDestroyServiceInUnbind()V

    goto :goto_0

    .line 847
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v2

    if-eq v2, v5, :cond_6

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 849
    :cond_6
    const-string v2, "FMRadioService"

    const-string v3, "onUnbind! Tx is still turn on"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mServiceInUse:I

    if-nez v2, :cond_1

    .line 851
    sput-boolean v6, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    goto/16 :goto_0

    .line 858
    :cond_7
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->DelayDestroyServiceInUnbind()V

    .line 860
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner]] finished"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1025
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    .line 1026
    .local v0, state:I
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_2

    .line 1027
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->resetAudioPath()V

    .line 1031
    if-ne v0, v2, :cond_1

    .line 1033
    const-string v1, "FMRadioService"

    const-string v2, "pause in turning on"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/fm/FMUtils;->TurnOffAtTurningOn:Z

    .line 1037
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->turnOff()V

    .line 1040
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->checkIfStopFFRWRepeat()V

    .line 1041
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 980
    const-string v0, "FMRadioService"

    const-string v1, "play()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    return-void
.end method

.method public prev()V
    .locals 5

    .prologue
    .line 1145
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] service.prev() - start"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v1

    .line 1149
    .local v1, status:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_2

    .line 1153
    :cond_0
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService] not handle remote key event on turn off"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_1
    :goto_0
    return-void

    .line 1157
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->restorePresetAdapter()V

    .line 1158
    iget-object v2, p0, Lcom/htc/fm/FMRadioService;->mFMPresetAdapter:Lcom/htc/fm/FMPresetAdapter;

    sget v3, Lcom/htc/fm/FMDef;->Frequency:I

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMPresetAdapter;->previous(I)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1159
    .local v0, preset:Lcom/htc/fm/Preset;
    if-eqz v0, :cond_1

    .line 1161
    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 1162
    invoke-static {p0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 1163
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 1165
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->TriggerUIToPreviousChannel()V

    .line 1166
    iget v2, v0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadioService;->tune(I)V

    .line 1167
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService][FMTuner] service.prev() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v2, "FMRadioService"

    const-string v3, "[FMRadioService][FMTuner] service.prev() - end"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAirplaneModeListener()V
    .locals 2

    .prologue
    .line 877
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Lcom/htc/fm/FMRadioService$5;

    invoke-direct {v1, p0}, Lcom/htc/fm/FMRadioService$5;-><init>(Lcom/htc/fm/FMRadioService;)V

    iput-object v1, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 967
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 968
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/htc/fm/FMRadioService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/fm/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 972
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public scan()V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->scan()V

    goto :goto_0
.end method

.method public scan(I)V
    .locals 1
    .parameter "nChans"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1396
    :goto_0
    return-void

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMTunerController;->scan(I)V

    goto :goto_0
.end method

.method public scanTx(I)V
    .locals 2
    .parameter "nChans"

    .prologue
    .line 2054
    const-string v0, "FMRadioService"

    const-string v1, "[scanTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2058
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/ITxTuner;->scanTx(I)Z

    .line 2065
    :goto_0
    return-void

    .line 2063
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "[scanTx] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekDown()V
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->seekDown()V

    goto :goto_0
.end method

.method public seekUp()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->seekUp()V

    goto :goto_0
.end method

.method public setAudoPrescanEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1434
    :goto_0
    return-void

    .line 1432
    :cond_0
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService][FMTuner] setAutoPrescanEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMTunerController;->setAudoPrescanEnabled(Z)V

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 1238
    invoke-static {p1}, Lcom/htc/fm/FMUtils;->setBand(I)V

    .line 1239
    return-void
.end method

.method public setHeadsetOut()V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setHeadsetOut()V

    goto :goto_0
.end method

.method public setMono()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setMono()V

    goto :goto_0
.end method

.method public setMonoTx()V
    .locals 2

    .prologue
    .line 2095
    const-string v0, "FMRadioService"

    const-string v1, "[setMonoTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2097
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0}, Lcom/htc/fm/ITxTuner;->setMonoTx()V

    .line 2103
    :cond_0
    return-void
.end method

.method public setMute()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1243
    const/16 v2, 0x12

    iput v2, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    .line 1244
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1245
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1246
    .local v1, volume:I
    if-lez v1, :cond_0

    .line 1247
    iput v1, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    .line 1248
    :cond_0
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService] setMute() mVolumeBe4Mute("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const/16 v2, 0x8

    invoke-virtual {v0, v6, v5, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1250
    iput v5, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    .line 1251
    return-void
.end method

.method public setMuteTx()V
    .locals 2

    .prologue
    .line 2073
    const-string v0, "FMRadioService"

    const-string v1, "[setMuteTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2075
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/fm/ITxTuner;->setTxMute(Z)V

    .line 2082
    :goto_0
    return-void

    .line 2080
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "[setMuteTx] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRdsOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setRdsOff()V

    goto :goto_0
.end method

.method public setRdsOn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setRdsOn()V

    goto :goto_0
.end method

.method public setRssiOff()V
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setRssiOff()V

    goto :goto_0
.end method

.method public setRssiOn()V
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setRssiOn()V

    goto :goto_0
.end method

.method public setSpeakerOut()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setSpeakerOut()V

    goto :goto_0
.end method

.method public setStereo()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->setStereo()V

    goto :goto_0
.end method

.method public setStereoTx()V
    .locals 2

    .prologue
    .line 2106
    const-string v0, "FMRadioService"

    const-string v1, "[setStereoTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2109
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0}, Lcom/htc/fm/ITxTuner;->setStereoTx()V

    .line 2114
    :cond_0
    return-void
.end method

.method public setUnMute()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1254
    const/16 v2, 0x13

    iput v2, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    .line 1255
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1256
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1257
    .local v1, volume:I
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@# setUnMute() mVolumeBe4Mute("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    if-lez v1, :cond_0

    .line 1259
    iput v1, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    .line 1261
    :cond_0
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    if-gtz v2, :cond_1

    .line 1262
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    .line 1264
    :cond_1
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@# setUnMute() mVolumeBe4Mute("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget v2, p0, Lcom/htc/fm/FMRadioService;->mVolumeBe4Mute:I

    const/16 v3, 0x8

    invoke-virtual {v0, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1267
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/fm/FMRadioService;->m_nCmdState:I

    .line 1268
    return-void
.end method

.method public setUnMuteTx()V
    .locals 2

    .prologue
    .line 2085
    const-string v0, "FMRadioService"

    const-string v1, "[setUnMuteTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2087
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/fm/ITxTuner;->setTxMute(Z)V

    .line 2092
    :cond_0
    return-void
.end method

.method public setVolumeTx(I)V
    .locals 2
    .parameter "nVolume"

    .prologue
    .line 2117
    const-string v0, "FMRadioService"

    const-string v1, "[setVolumeTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2120
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/ITxTuner;->setVolumeTx(I)V

    .line 2124
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->stopScan()V

    goto :goto_0
.end method

.method public stopScanTx()V
    .locals 2

    .prologue
    .line 2068
    const-string v0, "FMRadioService"

    const-string v1, "[stopScanTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2070
    return-void
.end method

.method public tune(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMTunerController;->tune(I)V

    goto :goto_0
.end method

.method public tuneTx(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 2043
    const-string v0, "FMRadioService"

    const-string v1, "[tuneTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxCmdState(I)V

    .line 2045
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/ITxTuner;->tuneTx(I)Z

    .line 2052
    :goto_0
    return-void

    .line 2050
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "[tuneTx] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public turnOff()V
    .locals 3

    .prologue
    .line 1015
    const-string v1, "FMRadioService"

    const-string v2, "[FMRadioService] turnOff"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->fmTurnOff()V

    .line 1017
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadioService;->stopForeground(Z)V

    .line 1018
    invoke-direct {p0}, Lcom/htc/fm/FMRadioService;->getFMBtsUtils()Lcom/htc/fm/IFMBtsUtils;

    move-result-object v0

    .line 1019
    .local v0, fmBtsUtils:Lcom/htc/fm/IFMBtsUtils;
    if-eqz v0, :cond_0

    .line 1020
    invoke-interface {v0, p0}, Lcom/htc/fm/IFMBtsUtils;->cancelNotification(Landroid/content/Context;)V

    .line 1021
    :cond_0
    return-void
.end method

.method public turnOffTx()V
    .locals 3

    .prologue
    .line 2025
    const-string v0, "FMRadioService"

    const-string v1, "[turnOffTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_2

    .line 2029
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2031
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxState(I)V

    .line 2032
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0}, Lcom/htc/fm/ITxTuner;->turnOffTx()Z

    .line 2040
    :goto_0
    return-void

    .line 2035
    :cond_1
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[turnOffTx] TX\'s state is not TurnOn. State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2038
    :cond_2
    const-string v0, "FMRadioService"

    const-string v1, "[turnOffTx] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public turnOnTx(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const-wide/16 v2, 0x0

    .line 1998
    const-string v0, "FMRadioService"

    const-string v1, "[turnOnTx]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    if-eqz v0, :cond_3

    .line 2002
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2004
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    iput p1, p0, Lcom/htc/fm/FMRadioService;->mTxRequestFreq:I

    .line 2007
    const-string v0, "FMRadioService"

    const-string v1, "[turnOnTx] FM Rx is not turn off"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2009
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2022
    :goto_0
    return-void

    .line 2012
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadioService;->broadcastTxState(I)V

    .line 2013
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mTxTuner:Lcom/htc/fm/ITxTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/ITxTuner;->turnOnTx(I)Z

    goto :goto_0

    .line 2016
    :cond_2
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[turnOnTx] TX\'s state is not TurnOff. State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2019
    :cond_3
    const-string v0, "FMRadioService"

    const-string v1, "[turnOnTx] mTxTuner is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCmdStateComplete(I)V
    .locals 1
    .parameter "cmdState"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    if-nez v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0, p1}, Lcom/htc/fm/FMTunerController;->updateCmdStateComplete(I)V

    goto :goto_0
.end method
