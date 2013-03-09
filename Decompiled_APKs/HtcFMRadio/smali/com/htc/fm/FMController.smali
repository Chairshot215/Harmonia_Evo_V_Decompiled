.class public Lcom/htc/fm/FMController;
.super Ljava/lang/Object;
.source "FMController.java"

# interfaces
.implements Lcom/htc/fm/IFMController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMController$ServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMController"

.field private static final WHAT_FFSEEK_DOWN:I = 0x1

.field private static final WHAT_FFSEEK_UP:I


# instance fields
.field private isUIActive:Z

.field private mBand:I

.field private mBandRequest:I

.field protected mCallback:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDefFreq:I

.field mEventHandler:Landroid/os/Handler;

.field mFFSeekHandler:Landroid/os/Handler;

.field private mFreq:I

.field private mFreqRequest:I

.field private mIsOnBinding:Z

.field private mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

.field private mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

.field private mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

.field private mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

.field private mRawRssi:I

.field private mRds:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:I

.field protected mService:Lcom/htc/fm/IFMRadioService;

.field private mServiceState:I

.field private mVolume:I

.field private mVolumeRequest:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/htc/fm/FMController;->mDefFreq:I

    .line 15
    iput v0, p0, Lcom/htc/fm/FMController;->mFreq:I

    .line 17
    iput v0, p0, Lcom/htc/fm/FMController;->mRssi:I

    .line 19
    iput v0, p0, Lcom/htc/fm/FMController;->mRawRssi:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMController;->isUIActive:Z

    .line 25
    iput-object v2, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    .line 26
    iput-object v2, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    .line 27
    iput-object v2, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    .line 28
    iput-object v2, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    .line 36
    iput v1, p0, Lcom/htc/fm/FMController;->mBand:I

    .line 37
    iput v1, p0, Lcom/htc/fm/FMController;->mBandRequest:I

    .line 39
    iput-boolean v1, p0, Lcom/htc/fm/FMController;->mIsOnBinding:Z

    .line 504
    iput v1, p0, Lcom/htc/fm/FMController;->mServiceState:I

    .line 548
    iput v1, p0, Lcom/htc/fm/FMController;->mFreqRequest:I

    .line 566
    iput v1, p0, Lcom/htc/fm/FMController;->mVolume:I

    .line 574
    iput v1, p0, Lcom/htc/fm/FMController;->mVolumeRequest:I

    .line 579
    new-instance v0, Lcom/htc/fm/FMController$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMController$1;-><init>(Lcom/htc/fm/FMController;)V

    iput-object v0, p0, Lcom/htc/fm/FMController;->mCallback:Landroid/content/ServiceConnection;

    .line 908
    new-instance v0, Lcom/htc/fm/FMController$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMController$2;-><init>(Lcom/htc/fm/FMController;)V

    iput-object v0, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    .line 995
    new-instance v0, Lcom/htc/fm/FMController$3;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMController$3;-><init>(Lcom/htc/fm/FMController;)V

    iput-object v0, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fm/FMController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/htc/fm/FMController;->mIsOnBinding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/fm/FMController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fm/FMController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->dispatchServiceState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/fm/FMController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->dispatchStateEvent(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/fm/FMController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->dispatchCmdStateEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/fm/FMController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/htc/fm/FMController;->isUIActive:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->handleHeadsetAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->handleStateChangedAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->handleCmdStateChangedAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->handleRemoteControlAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnRemoteEventControlListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnEventChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    return-object v0
.end method

.method private bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "FMRadio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.fm"

    const-string v2, "com.htc.fm.FMRadioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 674
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method private dispatchCmdStateEvent(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-nez v0, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1085
    :cond_0
    const-string v0, "FMController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMController] dispatchCmdStateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    sparse-switch p1, :sswitch_data_0

    .line 1204
    :goto_1
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->updateCmdStateComplete(I)V

    goto :goto_0

    .line 1089
    :sswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getBand()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onSetBandComplete(I)V

    goto :goto_1

    .line 1092
    :sswitch_2
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getBandRequest()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onSettingBand(I)V

    goto :goto_1

    .line 1097
    :sswitch_3
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetHeadsetOutComplete()V

    goto :goto_1

    .line 1100
    :sswitch_4
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingHeadsetOut()V

    goto :goto_1

    .line 1103
    :sswitch_5
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetSpeakerOutComplete()V

    goto :goto_1

    .line 1106
    :sswitch_6
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingSpeakerOut()V

    goto :goto_1

    .line 1109
    :sswitch_7
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetMonoComplete()V

    goto :goto_1

    .line 1112
    :sswitch_8
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingMono()V

    goto :goto_1

    .line 1115
    :sswitch_9
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetStereoComplete()V

    goto :goto_1

    .line 1118
    :sswitch_a
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingStereo()V

    goto :goto_1

    .line 1121
    :sswitch_b
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetMuteComplete()V

    goto :goto_1

    .line 1124
    :sswitch_c
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingMute()V

    goto :goto_1

    .line 1127
    :sswitch_d
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetUnMuteComplete()V

    goto :goto_1

    .line 1130
    :sswitch_e
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingUnMute()V

    goto :goto_1

    .line 1133
    :sswitch_f
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetRdsOffComplete()V

    goto :goto_1

    .line 1136
    :sswitch_10
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingRdsOff()V

    goto :goto_1

    .line 1139
    :sswitch_11
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetRdsOnComplete()V

    goto :goto_1

    .line 1142
    :sswitch_12
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingRdsOn()V

    goto :goto_1

    .line 1145
    :sswitch_13
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetRssiOffComplete()V

    goto :goto_1

    .line 1148
    :sswitch_14
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingRssiOff()V

    goto/16 :goto_1

    .line 1151
    :sswitch_15
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetRssiOnComplete()V

    goto/16 :goto_1

    .line 1154
    :sswitch_16
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSettingRssiOn()V

    goto/16 :goto_1

    .line 1157
    :sswitch_17
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getRds()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onRdsDataChanged(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1162
    :sswitch_18
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getRssi()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getRawRssi()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onRssiChanged(II)V

    goto/16 :goto_1

    .line 1165
    :sswitch_19
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onSeekDownComplete(I)V

    goto/16 :goto_1

    .line 1168
    :sswitch_1a
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onSeekUpComplete(I)V

    goto/16 :goto_1

    .line 1171
    :sswitch_1b
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSeekingDown()V

    goto/16 :goto_1

    .line 1174
    :sswitch_1c
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSeekingUp()V

    goto/16 :goto_1

    .line 1177
    :sswitch_1d
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onTuneComplete(I)V

    goto/16 :goto_1

    .line 1180
    :sswitch_1e
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getFreqRequest()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onTuning(I)V

    goto/16 :goto_1

    .line 1183
    :sswitch_1f
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getVolume()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onSetVolumeComplete(I)V

    goto/16 :goto_1

    .line 1186
    :sswitch_20
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getVolumeRequest()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnEventChangedListener;->onSettingVolume(I)V

    goto/16 :goto_1

    .line 1189
    :sswitch_21
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onStartScan()V

    goto/16 :goto_1

    .line 1192
    :sswitch_22
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onScanComplete()V

    goto/16 :goto_1

    .line 1195
    :sswitch_23
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onHeadsetPlugged()V

    goto/16 :goto_1

    .line 1198
    :sswitch_24
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onHeadsetUnPlugged()V

    goto/16 :goto_1

    .line 1201
    :sswitch_25
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onNopresetScanned()V

    goto/16 :goto_1

    .line 1087
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_16
        0x2 -> :sswitch_14
        0x3 -> :sswitch_12
        0x4 -> :sswitch_10
        0x5 -> :sswitch_1e
        0x6 -> :sswitch_1b
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_20
        0x9 -> :sswitch_8
        0xa -> :sswitch_a
        0xb -> :sswitch_c
        0xc -> :sswitch_e
        0xd -> :sswitch_4
        0xe -> :sswitch_6
        0xf -> :sswitch_2
        0x10 -> :sswitch_0
        0x12 -> :sswitch_21
        0x13 -> :sswitch_23
        0x14 -> :sswitch_24
        0x15 -> :sswitch_25
        0x65 -> :sswitch_15
        0x66 -> :sswitch_13
        0x67 -> :sswitch_11
        0x68 -> :sswitch_f
        0x69 -> :sswitch_1d
        0x6a -> :sswitch_1a
        0x6b -> :sswitch_19
        0x6c -> :sswitch_1f
        0x6d -> :sswitch_7
        0x6e -> :sswitch_9
        0x6f -> :sswitch_b
        0x70 -> :sswitch_d
        0x71 -> :sswitch_3
        0x72 -> :sswitch_5
        0x73 -> :sswitch_1
        0x74 -> :sswitch_18
        0x75 -> :sswitch_17
        0x76 -> :sswitch_22
    .end sparse-switch
.end method

.method private dispatchServiceState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1024
    iput p1, p0, Lcom/htc/fm/FMController;->mServiceState:I

    .line 1025
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    if-eqz v0, :cond_0

    .line 1026
    packed-switch p1, :pswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1028
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnServiceStateChangedListener;->onServiceBinding()V

    goto :goto_0

    .line 1032
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnServiceStateChangedListener;->onServiceBinded()V

    goto :goto_0

    .line 1036
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnServiceStateChangedListener;->onServiceUnBinding()V

    goto :goto_0

    .line 1040
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnServiceStateChangedListener;->onServiceUnBinded()V

    goto :goto_0

    .line 1026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private dispatchStateEvent(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1051
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1056
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnStateChangedListener;->onTurnOff()V

    goto :goto_0

    .line 1053
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnStateChangedListener;->onTurnOn(I)V

    goto :goto_0

    .line 1059
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getFreqRequest()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/fm/OnStateChangedListener;->onTurningOn(I)V

    goto :goto_0

    .line 1062
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnStateChangedListener;->onTurningOff()V

    goto :goto_0

    .line 1051
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCmdStateChangedAction(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 826
    if-nez p1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v3

    .line 829
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 833
    const-string v4, "com.htc.fm.cmdstatechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    const-string v4, "state"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 838
    .local v1, cmdState:I
    iget-object v4, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 841
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 842
    .local v2, msg:Landroid/os/Message;
    const-string v3, "com.htc.fm.cmdstatechanged"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 843
    iput v1, v2, Landroid/os/Message;->what:I

    .line 844
    iget-object v3, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private handleHeadsetAction(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 775
    if-nez p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v1

    .line 778
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 782
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 787
    iget-object v1, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_2

    .line 788
    iget-object v1, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onHeadsetPlugged()V

    .line 796
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 791
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_2

    .line 792
    iget-object v1, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onHeadsetUnPlugged()V

    goto :goto_1
.end method

.method private handleRemoteControlAction(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 850
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.fm.RemoteControl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v2

    .line 854
    :cond_1
    const-string v4, "command"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, command:Ljava/lang/String;
    const-string v4, "FMController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMController] onReceive - FM_CMD_CHANGED - command("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/16 v4, 0x10

    const-string v5, "FMController"

    invoke-static {v4, v5}, Lcom/htc/fm/FMUtils;->showStack(ILjava/lang/String;)Ljava/lang/String;

    .line 857
    if-eqz v1, :cond_0

    .line 861
    const-string v4, "next"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 862
    iget-object v4, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    if-eqz v4, :cond_2

    .line 863
    iget-object v4, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    invoke-interface {v4}, Lcom/htc/fm/OnRemoteEventControlListener;->nextPreset()V

    .line 866
    :cond_2
    const-string v4, "previous"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 867
    iget-object v4, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    if-eqz v4, :cond_3

    .line 868
    iget-object v4, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    invoke-interface {v4}, Lcom/htc/fm/OnRemoteEventControlListener;->prevPreset()V

    .line 871
    :cond_3
    const-string v4, "play"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "pause"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "togglepause"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 875
    :cond_4
    iget-object v2, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    invoke-interface {v2}, Lcom/htc/fm/OnRemoteEventControlListener;->togglePower()V

    move v2, v3

    .line 876
    goto :goto_0

    .line 879
    :cond_5
    const-string v4, "resume"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    .line 880
    goto :goto_0

    .line 883
    :cond_6
    const-string v4, "stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 886
    :cond_7
    const-string v4, "ffstart"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 887
    iget-object v4, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 890
    :cond_8
    const-string v4, "ffstop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 891
    iget-object v4, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    iget-object v4, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 895
    :cond_9
    const-string v4, "rwstart"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 896
    iget-object v4, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 899
    :cond_a
    const-string v4, "rwstop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 900
    iget-object v4, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v2, p0, Lcom/htc/fm/FMController;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    move v2, v3

    .line 903
    goto/16 :goto_0
.end method

.method private handleStateChangedAction(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 800
    if-nez p1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v3

    .line 803
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 807
    const-string v4, "com.htc.fm.statechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const-string v4, "state"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 813
    .local v2, state:I
    const-string v4, "FMController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMController] handleStateChangedAction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v4, "FMController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMController] handleStateChangedAction state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v4, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 818
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 819
    .local v1, msg:Landroid/os/Message;
    const-string v3, "com.htc.fm.statechanged"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iput v2, v1, Landroid/os/Message;->what:I

    .line 821
    iget-object v3, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private readRDS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    invoke-static {}, Lcom/htc/fm/FMUtils;->getRds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reqisterReceiver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 927
    if-nez p1, :cond_0

    .line 942
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 931
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController;->unregisterReceiver(Landroid/content/Context;)V

    .line 934
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 935
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.fm.RemoteControl"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    const-string v1, "com.htc.fm.statechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 938
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    new-instance v1, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;-><init>(Lcom/htc/fm/FMController;Lcom/htc/fm/FMController$1;)V

    iput-object v1, p0, Lcom/htc/fm/FMController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 941
    iget-object v1, p0, Lcom/htc/fm/FMController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private serviceTurnOff()V
    .locals 3

    .prologue
    .line 719
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v1, :cond_0

    .line 720
    const-string v1, "FMController"

    const-string v2, "[FMController] stop() - start"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->turnOff()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    const-string v1, "FMController"

    const-string v2, "[FMController] stop() - end"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    const-string v1, "FMController"

    const-string v2, "[FMController]stop() - failed!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private serviceTurnOn(I)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 700
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController] serviceTurnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 703
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/fm/FMController;->updateState(I)V

    .line 704
    const-string v1, "FMController"

    const-string v2, "[FMController]mOpen() not ready - return"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 709
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/htc/fm/IFMRadioService;->turnOn(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_1
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController] serviceTurnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private turnOnFM(I)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    :goto_0
    return-void

    .line 681
    :cond_0
    iput p1, p0, Lcom/htc/fm/FMController;->mFreq:I

    .line 682
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController] turnOnFM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMController;->mFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->isBroadcasting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 686
    iget v1, p0, Lcom/htc/fm/FMController;->mFreq:I

    invoke-direct {p0, v1}, Lcom/htc/fm/FMController;->serviceTurnOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_1
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController]!!!! @@@@ turnOnFM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMController;->mFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_1
    :try_start_1
    const-string v1, "FMController"

    const-string v2, "[FMController] onServiceConnected() - isBroadcasting? true"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/fm/FMController;->updateState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 693
    const-string v1, "FMController"

    const-string v2, "[FMController]!!!! @@@@ turnOnFM error!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 945
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMController;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private updateCmdState(I)V
    .locals 4
    .parameter "cmdState"

    .prologue
    .line 491
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController] updateCmdState("

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

    .line 492
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 493
    .local v0, msg:Landroid/os/Message;
    const-string v1, "com.htc.fm.cmdstatechanged"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    iput p1, v0, Landroid/os/Message;->what:I

    .line 495
    iget-object v1, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    return-void
.end method

.method private updateCmdStateComplete(I)V
    .locals 2
    .parameter "cmdState"

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1072
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/htc/fm/IFMRadioService;->updateCmdStateComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateServiceState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 475
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController] updateServiceState("

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

    .line 476
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 477
    .local v0, msg:Landroid/os/Message;
    const-string v1, "com.htc.fm.servicestatechanged"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    iput p1, v0, Landroid/os/Message;->what:I

    .line 479
    iget-object v1, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    return-void
.end method

.method private updateState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 483
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController] updateStatus("

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

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, msg:Landroid/os/Message;
    const-string v1, "com.htc.fm.statechanged"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    iput p1, v0, Landroid/os/Message;->what:I

    .line 487
    iget-object v1, p0, Lcom/htc/fm/FMController;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    return-void
.end method


# virtual methods
.method public SetUIExist(Z)V
    .locals 3
    .parameter "exist"

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 1281
    const-string v1, "FMController"

    const-string v2, "[FMController] SetUIExist mService is null"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :goto_0
    return-void

    .line 1286
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/htc/fm/IFMRadioService;->SetUIExist(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bindService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 645
    const-string v2, "FMController"

    const-string v3, "[FMController][FMTuner] bindService() - start"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-boolean v2, p0, Lcom/htc/fm/FMController;->mIsOnBinding:Z

    if-eqz v2, :cond_0

    .line 648
    const-string v1, "FMController"

    const-string v2, "[FMController][FMTuner] bindService() - failed(Service binding...)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    return v0

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v2, :cond_1

    .line 653
    const-string v0, "FMController"

    const-string v2, "[FMController][FMTuner] bindService() - failed(Service Binded)"

    invoke-static {v0, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 654
    goto :goto_0

    .line 657
    :cond_1
    iput-boolean v1, p0, Lcom/htc/fm/FMController;->mIsOnBinding:Z

    .line 658
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/htc/fm/FMController;->updateServiceState(I)V

    .line 659
    iget-object v2, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/fm/FMController;->mCallback:Landroid/content/ServiceConnection;

    invoke-direct {p0, v2, v3}, Lcom/htc/fm/FMController;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 660
    iput-boolean v0, p0, Lcom/htc/fm/FMController;->mIsOnBinding:Z

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    .line 662
    const-string v1, "FMController"

    const-string v2, "[FMController]bindService() - bind service failed!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_2
    const-string v0, "FMController"

    const-string v2, "[FMController][FMServiceBind] bindService() - end"

    invoke-static {v0, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/fm/FMController;->reqisterReceiver(Landroid/content/Context;)V

    move v0, v1

    .line 667
    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/fm/FMController;->unregisterReceiver(Landroid/content/Context;)V

    .line 957
    return-void
.end method

.method public disableAudio()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 277
    :goto_0
    return v1

    .line 272
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->diableAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    const/4 v1, 0x1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAirModeWarningMessage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1255
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 1263
    :goto_0
    return-object v1

    .line 1259
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getAirModeWarningMessage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAudioPath()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 281
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 288
    :goto_0
    return v1

    .line 284
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getAudioPath()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBand()I
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/fm/FMUtils;->getBand()I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMController;->mBand:I

    .line 73
    iget v0, p0, Lcom/htc/fm/FMController;->mBand:I

    return v0
.end method

.method public getBandRequest()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/fm/FMController;->mBandRequest:I

    return v0
.end method

.method public getCmdState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 421
    :goto_0
    return v1

    .line 417
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getCmdState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFirstPresetId()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 984
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 991
    :goto_0
    return v1

    .line 988
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getFirstPresetId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFreqRequest()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/htc/fm/FMController;->mFreqRequest:I

    return v0
.end method

.method public getFrequency()I
    .locals 2

    .prologue
    .line 536
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 537
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 544
    :goto_0
    return v1

    .line 541
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 544
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    goto :goto_0
.end method

.method public getHeadsetWarningMessage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1243
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 1251
    :goto_0
    return-object v1

    .line 1247
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getHeadsetWarningMessage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRawRssi()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 531
    :goto_0
    return v1

    .line 528
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getRawRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 555
    const-string v1, ""

    .line 562
    :goto_0
    return-object v1

    .line 559
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->getRdsData()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 562
    const-string v1, ""

    goto :goto_0
.end method

.method public getRssi()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 518
    :goto_0
    return v1

    .line 515
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/htc/fm/FMController;->mServiceState:I

    return v0
.end method

.method public getState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 408
    :goto_0
    return v1

    .line 405
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStateMessage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1208
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 1216
    :goto_0
    return-object v1

    .line 1212
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->getStateMessage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVolume()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v0, :cond_0

    .line 571
    :cond_0
    return v1
.end method

.method public getVolumeRequest()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/htc/fm/FMController;->mVolumeRequest:I

    return v0
.end method

.method public isFMPlaying()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 604
    const-string v3, "FMController"

    const-string v4, "[FMController]!!!! @@@@ isFMPlaying()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 614
    :goto_0
    return v1

    .line 609
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->isBroadcasting()Z

    move-result v1

    .line 610
    .local v1, val:Z
    const-string v3, "FMController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMController]!!!! @@@@ isFMPlaying()?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    .end local v1           #val:Z
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v2

    .line 614
    goto :goto_0
.end method

.method public isFMReady()Z
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v0

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1220
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 1228
    :goto_0
    return v1

    .line 1224
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->isHeadsetPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isRdsOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    :goto_0
    return v1

    .line 636
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->isRdsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isRssiOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    :goto_0
    return v1

    .line 623
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->isRssiEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 455
    :goto_0
    return v1

    .line 451
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPresetUpdated(I)V
    .locals 2
    .parameter "rowId"

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1271
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/htc/fm/IFMRadioService;->onPresetUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public scan()V
    .locals 2

    .prologue
    .line 425
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 429
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public seekDown()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 200
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ Cannot seekDown() illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ Cannot seekDown() illegal CMD state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->seekDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 216
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public seekUp()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 180
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ Cannot seekUP() illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ Cannot seekUp() illegal CMD state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->seekUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 195
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public serviceBinded()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoPreScanEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/htc/fm/IFMRadioService;->setAudoPrescanEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 3
    .parameter "band"

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/fm/FMController;->mBandRequest:I

    .line 43
    iput p1, p0, Lcom/htc/fm/FMController;->mBand:I

    .line 44
    iget v0, p0, Lcom/htc/fm/FMController;->mBand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    const v0, 0x128e0

    sput v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 46
    const v0, 0x15f90

    sput v0, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v0, :cond_1

    .line 53
    const-string v0, "FMController"

    const-string v1, "[FMController]!!!! @@@@ Cannot setBand() mService is null"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1
    return-void

    .line 48
    :cond_0
    const v0, 0x155cc

    sput v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 49
    const v0, 0x1a5e0

    sput v0, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "FMController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMController]!!!! @@@@ Cannot setBand() illegal CMD state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_2
    const-string v0, "FMController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMController]!!!! @@@@ setBand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/htc/fm/FMUtils;->setBand(I)V

    .line 64
    const-string v0, "FMController"

    const-string v1, "[FMController]!!!! @@@@ setBand() - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setHeadsetOut()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 265
    :goto_0
    return v1

    .line 260
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->setHeadsetOut()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    const/4 v1, 0x1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMono()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 240
    :goto_0
    return v1

    .line 235
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMute()V
    .locals 2

    .prologue
    .line 960
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 964
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->setMute()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnEventChangedListener(Lcom/htc/fm/OnEventChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    .line 468
    return-void
.end method

.method public setOnRemoteEventControlListener(Lcom/htc/fm/OnRemoteEventControlListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/fm/FMController;->mOnRemoteEventControlListener:Lcom/htc/fm/OnRemoteEventControlListener;

    .line 472
    return-void
.end method

.method public setOnServiceStateChangedListener(Lcom/htc/fm/OnServiceStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/htc/fm/FMController;->mOnServiceStateChangedListener:Lcom/htc/fm/OnServiceStateChangedListener;

    .line 460
    return-void
.end method

.method public setOnStateChangedListener(Lcom/htc/fm/OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/fm/FMController;->mOnStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    .line 464
    return-void
.end method

.method public setRdsOff()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 374
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! Cannot setRdsOff() illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    return v1

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRdsOff() CMD state is not ready!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->isRdsOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 384
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRdsOff() - already rds on"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->setRdsOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 395
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRdsOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 347
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! Cannot setRdsOn() illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return v1

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRdsOn() CMD state is not ready!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->isRdsOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRdsOn() - already rds on"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->setRdsOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 369
    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRssiOff()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 320
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! Cannot setRssiOFF() illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return v1

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRssiOFF() CMD state is not ready!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->isRssiOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 330
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRssiOff() - already rssi off"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->setRssiOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 341
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRssiOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 292
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 293
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! Cannot setRssiOn() illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return v1

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRssiOn() CMD state is not ready!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->isRssiOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    const-string v2, "FMController"

    const-string v3, "[FMController]!!!! Cannot setRssiOn() - already rssi on"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3}, Lcom/htc/fm/IFMRadioService;->setRssiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 314
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSpeakerOut()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 253
    :goto_0
    return v1

    .line 248
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->setSpeakerOut()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/4 v1, 0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStereo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 228
    :goto_0
    return v1

    .line 223
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->setStereo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v1, 0x1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUIActive(Z)V
    .locals 0
    .parameter "UIActive"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/fm/FMController;->isUIActive:Z

    .line 69
    return-void
.end method

.method public setUnMute()V
    .locals 2

    .prologue
    .line 972
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 981
    :goto_0
    return-void

    .line 976
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->setUnMute()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return v1

    .line 141
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v1, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 440
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->stopScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public tune(I)Z
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 152
    :cond_0
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ Cannot tune("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") illegal state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return v1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ Cannot tune("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") illegal CMD state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-lt p1, v3, :cond_3

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le p1, v3, :cond_4

    :cond_3
    move v1, v2

    .line 162
    goto :goto_0

    .line 166
    :cond_4
    const-string v3, "FMController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMController]!!!! @@@@ tune("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput p1, p0, Lcom/htc/fm/FMController;->mFreqRequest:I

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v3, p1}, Lcom/htc/fm/IFMRadioService;->tune(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const-string v1, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]!!!! @@@@ tune("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 175
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public turnOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    const-string v1, "FMController"

    const-string v2, "[FMController]!!!! @@@@ turnOff() - start"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController]Cannot turnOff() serviceBinded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/htc/fm/FMController;->updateState(I)V

    .line 134
    :goto_0
    return v0

    .line 130
    :cond_0
    const-string v0, "FMController"

    const-string v1, "[FMController] [AudioHardware] FMUtils.setAudioPath(FMDef.AUDIO_PATH_DISABLE)"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 132
    invoke-direct {p0}, Lcom/htc/fm/FMController;->serviceTurnOff()V

    .line 133
    const-string v0, "FMController"

    const-string v1, "[FMController]!!!! @@@@ turnOff() - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public turnOn(I)Z
    .locals 6
    .parameter "defFreq"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 92
    const-string v3, "FMController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMController][FMTuner] turnOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    const-string v2, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController]Cannot trurnOn() serviceBinded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/htc/fm/FMController;->updateState(I)V

    .line 119
    :goto_0
    return v1

    .line 99
    :cond_0
    iput p1, p0, Lcom/htc/fm/FMController;->mDefFreq:I

    .line 100
    iput p1, p0, Lcom/htc/fm/FMController;->mFreqRequest:I

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->isBroadcasting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/fm/FMController;->updateState(I)V

    move v1, v2

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    const-string v1, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController][FMTuner] turnOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMController;->mDefFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - isBroadcasting? false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v1}, Lcom/htc/fm/IFMRadioService;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 112
    iget v1, p0, Lcom/htc/fm/FMController;->mDefFreq:I

    invoke-direct {p0, v1}, Lcom/htc/fm/FMController;->turnOnFM(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_2
    :goto_1
    const-string v1, "FMController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMController][FMTuner] turnOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMController;->mDefFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 119
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, re:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public turnOn(II)Z
    .locals 1
    .parameter "defFreq"
    .parameter "bandRegion"

    .prologue
    .line 85
    iput p1, p0, Lcom/htc/fm/FMController;->mFreqRequest:I

    .line 86
    invoke-static {p2}, Lcom/htc/fm/FMUtils;->setBand(I)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/htc/fm/FMController;->turnOn(I)Z

    move-result v0

    return v0
.end method

.method public unbindService()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 732
    const-string v0, "FMController"

    const-string v1, "[FMController]!!!! @@@@ unbindService() - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    if-nez v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v3

    .line 735
    :cond_1
    const-string v0, "FMController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMController][FMTuner] unbindService() - is alive?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/fm/FMController;->updateServiceState(I)V

    .line 737
    iget-object v0, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/fm/FMController;->mCallback:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 738
    const-string v0, "FMController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMController][FMTuner] unbindService() - is alive?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    invoke-interface {v2}, Lcom/htc/fm/IFMRadioService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMController;->updateServiceState(I)V

    .line 741
    iget-object v0, p0, Lcom/htc/fm/FMController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/fm/FMController;->unregisterReceiver(Landroid/content/Context;)V

    .line 742
    const-string v0, "FMController"

    const-string v1, "[FMController]!!!! @@@@ unbindService() - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
