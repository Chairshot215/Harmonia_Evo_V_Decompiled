.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$38;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;,
        Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;,
        Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;,
        Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;,
        Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    }
.end annotation


# static fields
.field private static final BATTERY_CHANGED:I = 0xd

.field private static final BRSF_AG_EC_NR:I = 0x2

.field private static final BRSF_AG_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final BRSF_AG_ENHANCED_CALL_STATUS:I = 0x40

.field private static final BRSF_AG_ENHANCED_ERR_RESULT_CODES:I = 0x100

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final BRSF_AG_REJECT_CALL:I = 0x20

.field private static final BRSF_AG_THREE_WAY_CALLING:I = 0x1

.field private static final BRSF_AG_VOICE_RECOG:I = 0x4

.field private static final BRSF_AG_VOICE_TAG_NUMBE:I = 0x10

.field private static final BRSF_HF_CLIP:I = 0x4

.field private static final BRSF_HF_CW_THREE_WAY_CALLING:I = 0x2

.field private static final BRSF_HF_EC_NR:I = 0x1

.field private static final BRSF_HF_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final BRSF_HF_ENHANCED_CALL_STATUS:I = 0x20

.field private static final BRSF_HF_REMOTE_VOL_CONTROL:I = 0x10

.field private static final BRSF_HF_VOICE_REG_ACT:I = 0x8

.field private static final BT_CAPABILITIES_NUM:I = 0x7

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CHECK_CALL_STARTED:I = 0x4

.field private static final CHECK_VOICE_RECOGNITION_STARTED:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DELAYED_SCO_CLOSE:I = 0x9

.field private static final DTMF_SEND_CNF:I = 0xa

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final MESSAGE_CHECK_PENDING_ANSWER:I = 0x8

.field private static final MESSAGE_CHECK_PENDING_CIEV:I = 0x7

.field private static final MESSAGE_CHECK_PENDING_SCO:I = 0x6

.field private static final SCO_AUDIO_STATE:I = 0xb

.field private static final SCO_CLOSED:I = 0x3

.field private static final SCO_CONNECTION_CHECK:I = 0xc

.field private static final SIGNAL_STRENGTH_CHANGED:I = 0xe

.field private static final START_CALL_TIMEOUT:I = 0x2710

.field private static final START_VOICE_RECOGNITION_TIMEOUT:I = 0x1388

.field private static final STOP_TONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Bluetooth HS/HF"

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x32

.field public static final TYPE_HANDSFREE:I = 0x2

.field public static final TYPE_HEADSET:I = 0x1

.field public static final TYPE_UNKNOWN:I

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/phone/BluetoothHandsfree;

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspended:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mAudioState:I

.field private mBgndEarliestConnectionTime:J

.field private mBiaArray:[I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private mCDMAToneEnabled:Z

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCcwa:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mColp:Z

.field private mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

.field private mConnectedSco:Landroid/bluetooth/BluetoothSocket;

.field private final mContext:Landroid/content/Context;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mFakeCall:I

.field private mFakeCallsetup:I

.field private mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

.field private mIndicatorsEnabled:Z

.field private mIsPTS:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLocalBrsf:I

.field private final mOpStrAry:[Ljava/lang/String;

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAnswer:Z

.field private mPendingAudioState:Z

.field private mPendingBusyTone:Z

.field private mPendingCIEV:Z

.field private mPendingSco:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPsCallState:I

.field private mRemoteBrsf:I

.field private mRing:Z

.field private mScoGain:I

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

.field private final mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSkypeOut:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field mToneStopper:Landroid/os/Handler;

.field private mUserWantsAudio:Z

.field private mVirtualCallStarted:Z

.field private mVoiceRecognitionStarted:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    .line 107
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    .line 108
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    .line 109
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z

    .line 121
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 122
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 123
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 129
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z

    .line 130
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    .line 133
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mRing:Z

    .line 143
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    .line 144
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 145
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 146
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    .line 147
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 148
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 160
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 161
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 165
    const/high16 v6, -0x8000

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 181
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    .line 182
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z

    .line 185
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    .line 187
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    .line 189
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    .line 191
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 192
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 196
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I

    .line 203
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 225
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 260
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v6, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 2303
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v6, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2328
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v6, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mToneStopper:Landroid/os/Handler;

    .line 4568
    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "45412,CMCC PEOPLES"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "46000,CMCC"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "46001,China Unicom"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "46002,CMCC"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "46003,China Telcom"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "46007,CMCC"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "46601,Far EasTone"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "46605,APBW"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "46606,TUNTEX"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "46668,ACeS"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "46688,KGT-Online"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "46689,VIBO"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "46692,Chunghwa"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "46693,MOBITAI"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "46697,TW Mobile"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "46699,TransAsia"

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mOpStrAry:[Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 281
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 282
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 283
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 284
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    .line 285
    .local v1, bluetoothCapable:Z
    :goto_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 286
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 287
    if-eqz v1, :cond_0

    .line 288
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 291
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 292
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 293
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 295
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 296
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "Bluetooth HS/HF:StartCall"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 299
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "Bluetooth HS/HF:VoiceRecognition"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 301
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 303
    const-string v6, "keyguard"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 304
    .local v3, km:Landroid/app/KeyguardManager;
    const-string v6, "Bluetooth HS/HF"

    invoke-virtual {v3, v6}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 306
    const/16 v6, 0x162

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 311
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xab

    if-ne v6, v7, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x63

    if-eq v6, v7, :cond_2

    .line 314
    :cond_1
    iget v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 316
    :cond_2
    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v6, :cond_5

    .line 317
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 318
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-ne v6, v7, :cond_4

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x30

    if-eq v6, v7, :cond_3

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x20

    if-ne v6, v7, :cond_4

    .line 321
    :cond_3
    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const-string v7, "com.nuance.android.vsuite.vsuiteapp"

    const-string v8, "com.nuance.android.vsuite.vsuiteapp.VSuiteStartSession"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_4
    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    :cond_5
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 328
    iget v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 331
    :cond_6
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "BluetoothHandsfreeHandler"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, thread:Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 333
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 334
    .local v4, looper:Landroid/os/Looper;
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v4, v7}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    .line 337
    new-instance v6, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 338
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 339
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 340
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 341
    new-instance v6, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 342
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 343
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 345
    if-eqz v1, :cond_7

    .line 346
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 349
    :cond_7
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, DTMFToneType:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    if-nez v0, :cond_a

    const/4 v6, 0x1

    :goto_2
    and-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z

    .line 355
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initChineseOperatorNameHashMap()V

    .line 357
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v6, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    return-void

    .line 284
    .end local v0           #DTMFToneType:I
    .end local v1           #bluetoothCapable:Z
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #km:Landroid/app/KeyguardManager;
    .end local v4           #looper:Landroid/os/Looper;
    .end local v5           #thread:Landroid/os/HandlerThread;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 351
    .restart local v0       #DTMFToneType:I
    .restart local v1       #bluetoothCapable:Z
    .restart local v3       #km:Landroid/app/KeyguardManager;
    .restart local v4       #looper:Landroid/os/Looper;
    .restart local v5       #thread:Landroid/os/HandlerThread;
    :cond_9
    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    .line 196
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    return-object v0
.end method

.method static synthetic access$10000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BluetoothHandsfree;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRing:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRing:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z

    return p1
.end method

.method static synthetic access$3800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/phone/BluetoothHandsfree;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/phone/BluetoothHandsfree;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/phone/BluetoothHandsfree;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$8200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/phone/BluetoothHandsfree;I)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->doSpeedDial(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/android/phone/BluetoothHandsfree;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendShortDtmfToNetwork(C)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->needConvertToEnglishOpName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getEnglishOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v0

    return v0
.end method

.method private allowAudioAnytime()Z
    .locals 3

    .prologue
    .line 4321
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_0

    .line 4322
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 4323
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 4324
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4325
    .local v1, name:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v2, :cond_0

    const-string v2, "Parrot 3200LS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4326
    const/4 v2, 0x0

    .line 4329
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #name:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "command"
    .parameter "companyId"
    .parameter "commandType"
    .parameter "arguments"
    .parameter "device"

    .prologue
    .line 2502
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2504
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2505
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2508
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2509
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2514
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2515
    return-void
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    .prologue
    .line 4198
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    .line 4199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 4200
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4201
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4202
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4205
    :cond_0
    monitor-exit p0

    return-void

    .line 4198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 12
    .parameter "index"
    .parameter "c"

    .prologue
    .line 3046
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3047
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3048
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 3050
    .local v1, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    .line 3053
    .local v6, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v10, :cond_3

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_3

    .line 3057
    const/4 v8, 0x0

    .line 3097
    .local v8, state:I
    :goto_0
    const/4 v4, 0x0

    .line 3098
    .local v4, mpty:I
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_9

    .line 3099
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v10, :cond_8

    .line 3102
    const/4 v4, 0x1

    .line 3116
    .end local v3           #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v2, 0x1

    .line 3118
    .local v2, direction:I
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 3119
    .local v5, number:Ljava/lang/String;
    const/4 v9, -0x1

    .line 3120
    .local v9, type:I
    if-eqz v5, :cond_1

    .line 3121
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v9

    .line 3124
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CLCC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",0,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3125
    .local v7, result:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 3126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3128
    .end local v2           #direction:I
    .end local v4           #mpty:I
    .end local v5           #number:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #state:I
    .end local v9           #type:I
    :cond_2
    :goto_3
    return-object v7

    .line 3059
    .restart local v3       #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_3
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_4

    move-object v10, v3

    check-cast v10, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3061
    const-string v10, ">>>>>special case : CALL IN PROGRESS<<<<<"

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3062
    const/4 v8, 0x0

    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3065
    .end local v8           #state:I
    :cond_4
    sget-object v10, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 3093
    :pswitch_0
    const/4 v7, 0x0

    goto :goto_3

    .line 3071
    :pswitch_1
    if-nez p1, :cond_6

    .line 3072
    iget-boolean v10, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    .restart local v8       #state:I
    :goto_4
    goto/16 :goto_0

    .end local v8           #state:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 3074
    :cond_6
    iget-boolean v10, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v10, :cond_7

    const/4 v8, 0x0

    .line 3076
    .restart local v8       #state:I
    :goto_5
    goto/16 :goto_0

    .line 3074
    .end local v8           #state:I
    :cond_7
    const/4 v8, 0x1

    goto :goto_5

    .line 3078
    :pswitch_2
    const/4 v8, 0x1

    .line 3079
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3081
    .end local v8           #state:I
    :pswitch_3
    const/4 v8, 0x2

    .line 3082
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3084
    .end local v8           #state:I
    :pswitch_4
    const/4 v8, 0x3

    .line 3085
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3087
    .end local v8           #state:I
    :pswitch_5
    const/4 v8, 0x4

    .line 3088
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3090
    .end local v8           #state:I
    :pswitch_6
    const/4 v8, 0x5

    .line 3091
    .restart local v8       #state:I
    goto/16 :goto_0

    .line 3109
    .restart local v4       #mpty:I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3111
    :cond_9
    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v10, :cond_0

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaCall;

    .end local v3           #foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isGeneric()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3113
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 3116
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3065
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2970
    monitor-enter p0

    const/4 v9, 0x2

    :try_start_0
    new-array v0, v9, [Lcom/android/internal/telephony/Connection;

    .line 2971
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2972
    .local v4, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2974
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 2977
    .local v8, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 2979
    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    .line 3012
    :cond_0
    :goto_0
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3013
    .local v6, result:Landroid/bluetooth/AtCommandResult;
    const/4 v3, 0x0

    .line 3014
    .local v3, fakeClccEntry:Ljava/lang/String;
    iget v9, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    if-ne v9, v12, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3015
    const-string v3, "+CLCC: 1,1,0,0,1,\"SKYPE & PHONE\",129"

    .line 3016
    invoke-virtual {v6, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3040
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v6

    .line 2980
    .end local v3           #fakeClccEntry:Ljava/lang/String;
    .end local v6           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2982
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2984
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    .line 2985
    const/4 v9, 0x1

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2970
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v4           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v7           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v8           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2987
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v4       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v7       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v8       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v11, :cond_4

    .line 2990
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    goto :goto_0

    .line 2995
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    .line 2996
    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    aput-object v10, v0, v9

    goto :goto_0

    .line 3019
    .restart local v3       #fakeClccEntry:Ljava/lang/String;
    .restart local v6       #result:Landroid/bluetooth/AtCommandResult;
    :cond_5
    const/4 v2, 0x1

    .line 3020
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v9, v0

    if-ge v5, v9, :cond_7

    aget-object v9, v0, v5

    if-eqz v9, :cond_7

    .line 3021
    aget-object v9, v0, v5

    invoke-direct {p0, v5, v9}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 3022
    .local v1, clccEntry:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 3023
    invoke-virtual {v6, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3024
    add-int/lit8 v2, v2, 0x1

    .line 3020
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3027
    .end local v1           #clccEntry:Ljava/lang/String;
    :cond_7
    iget v9, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    if-ne v9, v12, :cond_9

    .line 3028
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",1,0,0,0,\"Skype\",129"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3037
    :cond_8
    :goto_3
    if-eqz v3, :cond_1

    invoke-virtual {v6, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_1

    .line 3030
    :cond_9
    iget v9, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    if-ne v9, v11, :cond_8

    .line 3031
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3032
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",1,5,0,0,\"Skype\",129"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3034
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",1,4,0,0,\"Skype\",129"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_3
.end method

.method private closeConnectedSco()V
    .locals 4

    .prologue
    .line 656
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_1

    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    const/4 v0, 0x0

    .line 664
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 668
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 670
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    .line 672
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configAudioParameters()V
    .locals 4

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 794
    const-string v0, "<unknown>"

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method private connectScoThread()V
    .locals 4

    .prologue
    .line 630
    const-class v2, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v2

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-nez v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 634
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 635
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 638
    :cond_0
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 639
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    const-string v3, "HandsfreeScoSocketConnectThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->setName(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->start()V

    .line 643
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    monitor-exit v2

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 13
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2913
    sget-object v11, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2933
    :pswitch_0
    const/4 v6, 0x0

    .line 2962
    :cond_0
    :goto_0
    return-object v6

    .line 2915
    :pswitch_1
    const/4 v7, 0x0

    .line 2935
    .local v7, state:I
    :goto_1
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_1

    if-ne v7, v9, :cond_1

    .line 2936
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v11}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2937
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 2938
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2939
    .local v4, name:Ljava/lang/String;
    const-string v11, "Parrot 3200LS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2940
    const/4 v7, 0x0

    .line 2944
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 2945
    .local v3, mpty:I
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2946
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    .line 2947
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v11

    if-eqz v11, :cond_4

    move v3, v9

    .line 2950
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v11

    if-eqz v11, :cond_5

    move v2, v9

    .line 2952
    .local v2, direction:I
    :goto_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2953
    .local v5, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 2954
    .local v8, type:I
    if-eqz v5, :cond_3

    .line 2955
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 2958
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",0,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2959
    .local v6, result:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2960
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2918
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #direction:I
    .end local v3           #mpty:I
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #state:I
    .end local v8           #type:I
    :pswitch_2
    const/4 v7, 0x1

    .line 2919
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2921
    .end local v7           #state:I
    :pswitch_3
    const/4 v7, 0x2

    .line 2922
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2924
    .end local v7           #state:I
    :pswitch_4
    const/4 v7, 0x3

    .line 2925
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2927
    .end local v7           #state:I
    :pswitch_5
    const/4 v7, 0x4

    .line 2928
    .restart local v7       #state:I
    goto/16 :goto_1

    .line 2930
    .end local v7           #state:I
    :pswitch_6
    const/4 v7, 0x5

    .line 2931
    .restart local v7       #state:I
    goto/16 :goto_1

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #mpty:I
    :cond_4
    move v3, v10

    .line 2947
    goto :goto_2

    :cond_5
    move v2, v10

    .line 2950
    goto :goto_3

    .line 2913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private doSpeedDial(I)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "location"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 2771
    if-ne p1, v5, :cond_1

    .line 2773
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 2774
    .local v2, voiceMailNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2775
    const-string v3, "Bluetooth HS/HF"

    const-string v4, ">>>>No Voice Mail Number<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2805
    .end local v2           #voiceMailNumber:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2779
    .restart local v2       #voiceMailNumber:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2782
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "voicemail"

    const-string v5, ""

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2784
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2785
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 2804
    .end local v2           #voiceMailNumber:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 2805
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2787
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v3, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getSpeedDialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 2788
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2789
    const-string v3, "Bluetooth HS/HF"

    const-string v4, ">>>>No Speed Dial Number<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2793
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2795
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2797
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2798
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private declared-synchronized expectCallStart()V
    .locals 4

    .prologue
    .line 4189
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 4190
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4191
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4192
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4193
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4195
    :cond_0
    monitor-exit p0

    return-void

    .line 4189
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .locals 7

    .prologue
    .line 4210
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 4211
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/BluetoothHandsfree;->setAVRCPOn(Z)V

    .line 4212
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4213
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4214
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4215
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4216
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 4217
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4219
    .local v2, pm:Landroid/os/IPowerManager;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4224
    .end local v2           #pm:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4220
    .restart local v2       #pm:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 4221
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Bluetooth HS/HF"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4210
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #pm:Landroid/os/IPowerManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 2299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2300
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getEnglishOperatorName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 4589
    const/4 v0, 0x0

    .line 4590
    .local v0, opName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4591
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 4602
    :cond_0
    :goto_0
    return-object v3

    .line 4594
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4595
    .local v1, operatorNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4598
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 4600
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #opName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #opName:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    .line 4602
    goto :goto_0
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 25

    .prologue
    .line 2813
    monitor-enter p0

    const/16 v23, 0x6

    :try_start_0
    move/from16 v0, v23

    new-array v4, v0, [Lcom/android/internal/telephony/Connection;

    .line 2814
    .local v4, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 2815
    .local v18, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 2817
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 2818
    .local v13, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2819
    .local v2, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 2821
    .local v20, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2822
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2824
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 2825
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2827
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2828
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2832
    :cond_2
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v6, v0, [Z

    .line 2833
    .local v6, clccUsed:[Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/16 v23, 0x6

    move/from16 v0, v23

    if-ge v15, v0, :cond_3

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    aput-boolean v23, v6, v15

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-boolean v24, v23, v15

    .line 2833
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2837
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2838
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    .line 2839
    .local v14, found:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v21

    .line 2840
    .local v21, timestamp:J
    const/4 v15, 0x0

    :goto_2
    const/16 v23, 0x6

    move/from16 v0, v23

    if-ge v15, v0, :cond_5

    .line 2841
    aget-boolean v23, v6, v15

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v23, v0

    aget-wide v23, v23, v15

    cmp-long v23, v21, v23

    if-nez v23, :cond_6

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-boolean v24, v23, v15

    .line 2843
    const/4 v14, 0x1

    .line 2844
    aput-object v3, v4, v15

    .line 2848
    :cond_5
    if-nez v14, :cond_4

    .line 2849
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2813
    .end local v2           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v6           #clccUsed:[Z
    .end local v7           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v13           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v14           #found:Z
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v20           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v21           #timestamp:J
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 2840
    .restart local v2       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v4       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v6       #clccUsed:[Z
    .restart local v7       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v13       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v14       #found:Z
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v18       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v20       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v21       #timestamp:J
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2870
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v14           #found:Z
    .end local v21           #timestamp:J
    .local v9, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v10, earliestTimestamp:J
    .local v17, j:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-boolean v24, v23, v15

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v23, v0

    aput-wide v10, v23, v15

    .line 2872
    aput-object v9, v4, v15

    .line 2873
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2854
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v17           #j:I
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_b

    .line 2856
    const/4 v15, 0x0

    .line 2857
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    if-eqz v23, :cond_9

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2859
    :cond_9
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 2860
    .restart local v10       #earliestTimestamp:J
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 2861
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/16 v17, 0x0

    .restart local v17       #j:I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 2862
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v21

    .line 2863
    .restart local v21       #timestamp:J
    cmp-long v23, v21, v10

    if-gez v23, :cond_a

    .line 2864
    move-wide/from16 v10, v21

    .line 2865
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 2861
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2877
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v17           #j:I
    .end local v21           #timestamp:J
    :cond_b
    new-instance v19, Landroid/bluetooth/AtCommandResult;

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2878
    .local v19, result:Landroid/bluetooth/AtCommandResult;
    const/4 v12, 0x0

    .line 2879
    .local v12, fakeClccEntry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 2880
    const-string v12, "+CLCC: 1,1,0,0,1,\"SKYPE & PHONE\",129"

    .line 2881
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2907
    :cond_c
    :goto_5
    monitor-exit p0

    return-object v19

    .line 2884
    :cond_d
    const/4 v8, 0x1

    .line 2885
    .local v8, count:I
    const/4 v15, 0x0

    :goto_6
    :try_start_2
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_f

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v15

    if-eqz v23, :cond_e

    .line 2887
    aget-object v23, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v15, v1}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    .line 2888
    .local v5, clccEntry:Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 2889
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2890
    add-int/lit8 v8, v8, 0x1

    .line 2885
    .end local v5           #clccEntry:Ljava/lang/String;
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 2894
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 2895
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+CLCC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",1,0,0,0,\"Skype\",129"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2904
    :cond_10
    :goto_7
    if-eqz v12, :cond_c

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_5

    .line 2897
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 2899
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+CLCC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",1,5,0,0,\"Skype\",129"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 2901
    :cond_12
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+CLCC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",1,4,0,0,\"Skype\",129"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_7
.end method

.method private inDebug()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4317
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "debug.bt.hfp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;
    .locals 4
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 249
    const-class v1, Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 251
    :try_start_0
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    .line 256
    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    monitor-exit v1

    return-object v0

    .line 254
    :cond_0
    const-string v0, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initChineseOperatorNameHashMap()V
    .locals 5

    .prologue
    .line 4577
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 4578
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOperatorStringLists:Ljava/util/HashMap;

    .line 4580
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOpStrAry:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4581
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOpStrAry:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4582
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 4583
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4580
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4586
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private initializeHandsfreeAtParser()V
    .locals 4

    .prologue
    .line 3264
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3265
    .local v0, parser:Landroid/bluetooth/AtParser;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3268
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 3307
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 3353
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3392
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3422
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3454
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3507
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3541
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3550
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3564
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3573
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3582
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3627
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3667
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3829
    const-string v2, "+COPS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3883
    const-string v2, "+CPIN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3892
    const-string v2, "+BTRH"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3908
    const-string v2, "+CIMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3923
    const-string v2, "+BIA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3946
    const-string v2, "+CLIP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3970
    const-string v2, "+COLP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3997
    const-string v2, "+CGSN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4007
    const-string v2, "+CGMM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4021
    const-string v2, "+CGMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4035
    const-string v2, "+NREC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4050
    const-string v2, "+BVRA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$33;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$33;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4096
    const-string v2, "+CNUM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$34;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$34;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4110
    const-string v2, "+VGM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$35;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$35;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4120
    const-string v2, "+VGS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$36;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$36;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4148
    const-string v2, "+CPAS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$37;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$37;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 4166
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 4167
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .locals 3

    .prologue
    .line 3163
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3166
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3222
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3232
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3257
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .locals 2

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCellularCallInProgress()Z
    .locals 1

    .prologue
    .line 4351
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4352
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncallAudio()Z
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 749
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVirtualCallInProgress()Z
    .locals 1

    .prologue
    .line 4357
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    return v0
.end method

.method private isVoiceRecognitionInProgress()Z
    .locals 1

    .prologue
    .line 4273
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4563
    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    return-void
.end method

.method private needConvertToEnglishOpName()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4606
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-nez v3, :cond_1

    .line 4622
    :cond_0
    :goto_0
    return v2

    .line 4609
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4610
    .local v0, deviceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4613
    const-string v3, "MB Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MB-Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4616
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4617
    .local v1, locale:Ljava/util/Locale;
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4620
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 2735
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v0

    .line 2737
    .local v0, number:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2742
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2766
    :goto_0
    return-object v1

    .line 2745
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2747
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2759
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 2765
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 2766
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method private registerAllVendorSpecificCommands()V
    .locals 3

    .prologue
    .line 3150
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 3153
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+XEVENT"

    const/16 v2, 0x55

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V

    .line 3156
    return-void
.end method

.method private registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V
    .locals 2
    .parameter "commandName"
    .parameter "companyId"
    .parameter "parser"

    .prologue
    .line 3142
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V

    invoke-virtual {p3, p1, v0}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3144
    return-void
.end method

.method private resetAllIndicators()V
    .locals 3

    .prologue
    .line 4558
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 4559
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 4558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4561
    :cond_0
    return-void
.end method

.method private resetConnectScoThread()V
    .locals 2

    .prologue
    .line 648
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1

    .line 649
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 650
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 7
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 2460
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 2461
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_0

    .line 2463
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2466
    const-string v1, "sendShortDtmfToNetwork(), Insert to DTMF queue()."

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2476
    :goto_0
    monitor-exit v2

    .line 2477
    return-void

    .line 2470
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 2471
    .local v0, dtmfStr:Ljava/lang/String;
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtmfsent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v1, v0, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2474
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 2476
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2711
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2714
    :cond_1
    return-void
.end method

.method private sendURC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "urc"
    .parameter "debugInfo"

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2718
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2721
    :cond_1
    return-void
.end method

.method private declared-synchronized setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    .line 2289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    .line 2292
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    :goto_0
    monitor-exit p0

    return-void

    .line 2295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDebug()V
    .locals 2

    .prologue
    .line 4333
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_0

    .line 4334
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 4335
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 4337
    :cond_0
    return-void
.end method

.method private stopDebug()V
    .locals 1

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_0

    .line 4341
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 4342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 4344
    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 233
    packed-switch p0, :pswitch_data_0

    .line 241
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 237
    :pswitch_1
    const-string v0, "headset"

    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "handsfree"

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method PbsendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 2725
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2726
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 2729
    :cond_1
    return-void
.end method

.method declared-synchronized audioOff()V
    .locals 2

    .prologue
    .line 2646
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v0, :cond_2

    .line 2647
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2648
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2651
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2657
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2658
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2660
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 2662
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    if-eqz v0, :cond_4

    .line 2663
    const-string v0, "+CIEV: 3,0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z

    .line 2667
    :cond_4
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    if-eqz v0, :cond_5

    .line 2668
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->shutdown()V

    .line 2669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 2674
    :cond_5
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2675
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-eqz v0, :cond_6

    .line 2676
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->shutdown()V

    .line 2677
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    .line 2679
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2681
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2682
    monitor-exit p0

    return-void

    .line 2679
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2646
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized audioOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2536
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2537
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "audioOn(): headset is not connected!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2540
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v3, :cond_2

    .line 2541
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "audioOn(): service connection not yet established!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2536
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2545
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_4

    .line 2546
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "audioOn(): audio is already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_3
    move v1, v2

    .line 2547
    goto :goto_0

    .line 2550
    :cond_4
    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v3, :cond_5

    .line 2551
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "audioOn(): user requested no audio, ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2555
    :cond_5
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-eqz v1, :cond_7

    .line 2556
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "audioOn(): SCO already pending"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_6
    move v1, v2

    .line 2557
    goto :goto_0

    .line 2560
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2561
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 2562
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 2563
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "suspending A2DP stream for SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2564
    :cond_8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 2565
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_b

    .line 2566
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 2567
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2568
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2587
    .end local v0           #msg:Landroid/os/Message;
    :cond_9
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-nez v1, :cond_a

    .line 2588
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V

    :cond_a
    move v1, v2

    .line 2591
    goto/16 :goto_0

    .line 2570
    :cond_b
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4549
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 4550
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 1

    .prologue
    .line 4544
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 4545
    return-void

    .line 4544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .locals 3
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    const/4 v2, 0x1

    .line 710
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 711
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 712
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v1, v2, :cond_2

    .line 713
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 719
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->registerAllVendorSpecificCommands()V

    .line 721
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 722
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 724
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->getHeadsetName()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "PTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 729
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    .line 734
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 735
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 741
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAllIndicators()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 715
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 731
    .restart local v0       #name:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIsPTS:Z

    goto :goto_1

    .line 736
    :cond_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 1

    .prologue
    .line 758
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 762
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 764
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 765
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 766
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    monitor-exit p0

    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHeadset()Landroid/bluetooth/HeadsetBase;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method getHeadsetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2685
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v1, :cond_0

    .line 2686
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2687
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2689
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method handleBurstDtmfConfirmation()V
    .locals 6

    .prologue
    .line 2484
    const/4 v1, 0x0

    .line 2485
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 2486
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z

    .line 2487
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2488
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 2489
    const-string v2, "Bluetooth HS/HF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    if-eqz v1, :cond_1

    .line 2493
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->sendShortDtmfToNetwork(C)V

    .line 2495
    :cond_1
    return-void

    .line 2491
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method ignoreRing()V
    .locals 0

    .prologue
    .line 2702
    return-void
.end method

.method declared-synchronized initiateScoUsingVirtualVoiceCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4368
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "initiateScoUsingVirtualVoiceCall: Received"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4370
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4371
    :cond_1
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "initiateScoUsingVirtualVoiceCall: Call in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4399
    :goto_0
    monitor-exit p0

    return v1

    .line 4376
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4377
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4379
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CIEV: 3,2"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4380
    const-string v3, "+CIEV: 2,1"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4381
    const-string v3, "+CIEV: 3,0"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4382
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4383
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "Bluetooth HS/HF"

    const-string v4, "initiateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4389
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4390
    const-string v2, "initiateScoUsingVirtualVoiceCall: audioON failed"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4391
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4368
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4395
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 4398
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "initiateScoUsingVirtualVoiceCall: Done"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move v1, v2

    .line 4399
    goto :goto_0
.end method

.method isAudioOn()Z
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-nez v0, :cond_1

    .line 703
    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized onBluetoothDisabled()V
    .locals 1

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 693
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->shutdown()V

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :cond_0
    monitor-exit p0

    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .locals 2

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 684
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    const-string v1, "incomingScoAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->setName(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_0
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onCallConnected()V
    .locals 2

    .prologue
    .line 2598
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2602
    :goto_0
    monitor-exit p0

    return-void

    .line 2600
    :cond_0
    :try_start_1
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "onCallConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->fastUpdateForCallConnect()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onCallDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 2608
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2612
    :goto_0
    monitor-exit p0

    return-void

    .line 2610
    :cond_0
    :try_start_1
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "onCallDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->fastUpdateForCallDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    invoke-static {v0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 2381
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2382
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2384
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v3, 0x6

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2394
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneStopper:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2395
    packed-switch p1, :pswitch_data_0

    .line 2447
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2448
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneStopper:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2449
    monitor-exit v2

    .line 2450
    :goto_1
    return-void

    .line 2385
    :catch_0
    move-exception v0

    .line 2386
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2388
    monitor-exit v2

    goto :goto_1

    .line 2449
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2397
    :pswitch_1
    const/4 p1, 0x0

    .line 2398
    goto :goto_0

    .line 2401
    :pswitch_2
    const/4 p1, 0x1

    .line 2402
    goto :goto_0

    .line 2405
    :pswitch_3
    const/4 p1, 0x2

    .line 2406
    goto :goto_0

    .line 2409
    :pswitch_4
    const/4 p1, 0x3

    .line 2410
    goto :goto_0

    .line 2413
    :pswitch_5
    const/4 p1, 0x4

    .line 2414
    goto :goto_0

    .line 2417
    :pswitch_6
    const/4 p1, 0x5

    .line 2418
    goto :goto_0

    .line 2421
    :pswitch_7
    const/4 p1, 0x6

    .line 2422
    goto :goto_0

    .line 2425
    :pswitch_8
    const/4 p1, 0x7

    .line 2426
    goto :goto_0

    .line 2429
    :pswitch_9
    const/16 p1, 0x8

    .line 2430
    goto :goto_0

    .line 2433
    :pswitch_a
    const/16 p1, 0x9

    .line 2434
    goto :goto_0

    .line 2437
    :pswitch_b
    const/16 p1, 0xa

    .line 2438
    goto :goto_0

    .line 2441
    :pswitch_c
    const/16 p1, 0xb

    goto :goto_0

    .line 2395
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter "error"

    .prologue
    .line 4177
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v1, :cond_0

    .line 4178
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4179
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4182
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 770
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z

    .line 771
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 772
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mColp:Z

    .line 773
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 774
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 775
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 776
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I

    .line 777
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I

    .line 778
    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 779
    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 780
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 781
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 784
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    monitor-exit p0

    return-void

    .line 770
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendScoGainUpdate(I)V
    .locals 2
    .parameter "gain"

    .prologue
    .line 4170
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 4171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4172
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 4174
    :cond_0
    return-void
.end method

.method public setAVRCPOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 4553
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAVRCPOn(Z)V

    .line 4554
    return-void
.end method

.method declared-synchronized setSkypeCallState(I)V
    .locals 3
    .parameter "psCallState"

    .prologue
    .line 2615
    monitor-enter p0

    :try_start_0
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkypeCallState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2618
    :goto_0
    monitor-exit p0

    return-void

    .line 2617
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePsCallStateChange(I)V
    invoke-static {v0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setVirtualCallInProgress(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4361
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4362
    return-void
.end method

.method startDtmfSession()V
    .locals 5

    .prologue
    .line 2350
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2351
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2353
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v3, 0x6

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2360
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2361
    return-void

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 2360
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method declared-synchronized startVoiceRecognition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_2

    .line 4231
    :cond_0
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "startVoiceRecognition: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4252
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 4235
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4237
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v1, :cond_4

    .line 4239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 4240
    const-string v1, "OK"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4245
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 4246
    .local v0, ret:Z
    if-nez v0, :cond_3

    .line 4247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4249
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4250
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4228
    .end local v0           #ret:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4243
    :cond_4
    :try_start_2
    const-string v1, "+BVRA: 1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method stopDtmfSession()V
    .locals 2

    .prologue
    .line 2365
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2366
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2370
    :cond_0
    monitor-exit v1

    .line 2372
    return-void

    .line 2370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4256
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 4257
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 4268
    :goto_0
    monitor-exit p0

    return v0

    .line 4261
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 4263
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4264
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_1

    .line 4265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->setAVRCPOn(Z)V

    .line 4266
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v0, v1

    .line 4268
    goto :goto_0

    .line 4256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized terminateScoUsingVirtualVoiceCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4403
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "terminateScoUsingVirtualVoiceCall: Received"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4405
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 4425
    :goto_0
    monitor-exit p0

    return v1

    .line 4410
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 4413
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4414
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4416
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CIEV: 2,0"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4417
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 4418
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "terminateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 4420
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 4421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 4424
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "terminateScoUsingVirtualVoiceCall: Done"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4425
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 4403
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 1

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 2527
    return-void
.end method

.method updateBtHandsfreeBeforeRadioTechnologyChange()V
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateBeforeRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$7300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 2521
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .locals 1

    .prologue
    .line 2633
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 2634
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    monitor-exit p0

    return-void

    .line 2633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .locals 1

    .prologue
    .line 2625
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 2626
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    monitor-exit p0

    return-void

    .line 2625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
