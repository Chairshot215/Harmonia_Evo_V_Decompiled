.class public Lcom/google/android/marvin/talkback/SpeechController;
.super Ljava/lang/Object;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;,
        Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;,
        Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;,
        Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;,
        Lcom/google/android/marvin/talkback/SpeechController$SpeechParam;,
        Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    }
.end annotation


# static fields
.field private static final DEFAULT_STREAM:I = 0x3

.field private static final MAX_TTS_FAILURES:I = 0x3

.field private static final MAX_UTTERANCE_LENGTH:I = 0xf9f

.field private static final SPEECH_FLUSH_ALL:I = 0x2

.field private static final UTTERANCE_ID_PREFIX:Ljava/lang/String; = "talkback_"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClearUninterruptible:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPitch:F

.field private mCurrentRate:F

.field private mDefaultPitch:F

.field private mDefaultRate:F

.field private mDefaultTtsEngine:Ljava/lang/String;

.field private final mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

.field private final mInstalledTtsEngines:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntonationEnabled:Z

.field private mLastSpokenUtterance:Ljava/lang/CharSequence;

.field private final mMediaStateMonitor:Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

.field private mNextUtteranceIndex:I

.field private final mPitchObserver:Landroid/database/ContentObserver;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mProximityChangeListener:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

.field private mProximitySensor:Lcom/google/android/marvin/utils/ProximitySensor;

.field private final mRateObserver:Landroid/database/ContentObserver;

.field private mRestoreRingerAction:Ljava/lang/Runnable;

.field private mScreenIsOn:Z

.field private mSilenceOnProximity:Z

.field private final mSpeechParametersMap:Ljava/util/HashMap;
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

.field private mSpeechVolume:I

.field private final mSynthObserver:Landroid/database/ContentObserver;

.field private mSystemTtsEngine:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempTts:Landroid/speech/tts/TextToSpeech;

.field private mTempTtsEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsChangeListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mTtsEngine:Ljava/lang/String;

.field private mTtsFailures:I

.field private mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

.field private mUninterruptible:Z

.field private final mUtteranceCompleteActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtteranceCompletedListener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

.field private mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/high16 v7, -0x4080

    const/4 v9, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSpeechParametersMap:Ljava/util/HashMap;

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    .line 131
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    .line 137
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mMediaStateMonitor:Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

    .line 196
    iput v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mNextUtteranceIndex:I

    .line 204
    iput v7, p0, Lcom/google/android/marvin/talkback/SpeechController;->mCurrentRate:F

    .line 205
    iput v7, p0, Lcom/google/android/marvin/talkback/SpeechController;->mCurrentPitch:F

    .line 1149
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$1;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$1;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximityChangeListener:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

    .line 1160
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$2;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$2;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mClearUninterruptible:Ljava/lang/Runnable;

    .line 1169
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$3;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$3;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompletedListener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    .line 1184
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$4;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$4;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsChangeListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 1191
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    .line 1196
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$5;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    invoke-direct {v6, p0, v7}, Lcom/google/android/marvin/talkback/SpeechController$5;-><init>(Lcom/google/android/marvin/talkback/SpeechController;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSynthObserver:Landroid/database/ContentObserver;

    .line 1204
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$6;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    invoke-direct {v6, p0, v7}, Lcom/google/android/marvin/talkback/SpeechController$6;-><init>(Lcom/google/android/marvin/talkback/SpeechController;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mPitchObserver:Landroid/database/ContentObserver;

    .line 1212
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$7;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    invoke-direct {v6, p0, v7}, Lcom/google/android/marvin/talkback/SpeechController$7;-><init>(Lcom/google/android/marvin/talkback/SpeechController;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRateObserver:Landroid/database/ContentObserver;

    .line 1224
    new-instance v6, Lcom/google/android/marvin/talkback/SpeechController$8;

    invoke-direct {v6, p0}, Lcom/google/android/marvin/talkback/SpeechController$8;-><init>(Lcom/google/android/marvin/talkback/SpeechController;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 213
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    .line 214
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/SpeechController;->mMediaStateMonitor:Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

    iget-object v8, p0, Lcom/google/android/marvin/talkback/SpeechController;->mMediaStateMonitor:Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

    invoke-virtual {v8}, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->getFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;

    .line 217
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 219
    iput-boolean v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUninterruptible:Z

    .line 221
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 222
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 224
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    .local v4, res:Landroid/content/res/Resources;
    invoke-direct {p0, v4, v3}, Lcom/google/android/marvin/talkback/SpeechController;->manageTtsOverlayEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 227
    invoke-direct {p0, v4, v3}, Lcom/google/android/marvin/talkback/SpeechController;->manageIntonationEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 228
    invoke-direct {p0, v4, v3}, Lcom/google/android/marvin/talkback/SpeechController;->manageSpeechVolume(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 234
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultEngine(Landroid/content/ContentResolver;)V

    .line 235
    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultPitch(Landroid/content/ContentResolver;)V

    .line 236
    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultRate(Landroid/content/ContentResolver;)V

    .line 238
    const-string v6, "tts_default_synth"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 239
    .local v2, defaultSynth:Landroid/net/Uri;
    const-string v6, "tts_default_pitch"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .local v0, defaultPitch:Landroid/net/Uri;
    const-string v6, "tts_default_rate"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .local v1, defaultRate:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSynthObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v2, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mPitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v0, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v1, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z

    .line 247
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/SpeechController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUninterruptible:Z

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/SpeechController;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z

    return v0
.end method

.method static synthetic access$10(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/SpeechController;->manageSpeechVolume(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$11(Lcom/google/android/marvin/talkback/SpeechController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->handleTtsInitialized(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/google/android/marvin/talkback/SpeechController;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/SpeechController;->handleUtteranceCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/google/android/marvin/talkback/SpeechController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->handleMediaStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/google/android/marvin/talkback/SpeechController;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$15(Lcom/google/android/marvin/talkback/SpeechController;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/VolumeMonitor;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/SpeechController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;
    .locals 1
    .parameter

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/SpeechController;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultEngine(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$6(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultPitch(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->updateDefaultRate(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/SpeechController;->manageTtsOverlayEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$9(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/SpeechController;->manageIntonationEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private attemptTtsFailover(Ljava/lang/String;)V
    .locals 7
    .parameter "failedEngine"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 856
    const-class v1, Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v2, 0x6

    const-string v3, "Attempting TTS failover from %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsFailures:I

    .line 862
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    iget v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsFailures:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 863
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/google/android/marvin/talkback/SpeechController;->setTtsEngine(Ljava/lang/String;Z)V

    .line 877
    :goto_0
    return-void

    .line 868
    :cond_1
    if-eqz p1, :cond_2

    .line 869
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 870
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 874
    :cond_2
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 876
    .local v0, nextEngine:Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/google/android/marvin/talkback/SpeechController;->setTtsEngine(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static attemptTtsShutdown(Landroid/speech/tts/TextToSpeech;)V
    .locals 1
    .parameter "tts"

    .prologue
    .line 1058
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private computeQueuingMode(Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;I)I
    .locals 2
    .parameter "queueMode"
    .parameter "utteranceIndex"

    .prologue
    .line 670
    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->UNINTERRUPTIBLE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    if-ne p1, v1, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 674
    .local v0, ttsQueueMode:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUninterruptible:Z

    .line 675
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mClearUninterruptible:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->removeUtteranceCompleteAction(Ljava/lang/Runnable;)V

    .line 676
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mClearUninterruptible:Ljava/lang/Runnable;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/marvin/talkback/SpeechController;->addUtteranceCompleteAction(ILjava/lang/Runnable;)V

    .line 687
    :goto_0
    return v0

    .line 677
    .end local v0           #ttsQueueMode:I
    :cond_0
    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUninterruptible:Z

    if-nez v1, :cond_1

    .line 678
    const/4 v0, 0x0

    .restart local v0       #ttsQueueMode:I
    goto :goto_0

    .line 680
    .end local v0           #ttsQueueMode:I
    :cond_1
    const/4 v0, 0x1

    .line 683
    .restart local v0       #ttsQueueMode:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUninterruptible:Z

    .line 684
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mClearUninterruptible:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->removeUtteranceCompleteAction(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getLabelForEngine(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "enginePackage"

    .prologue
    const/4 v5, 0x0

    .line 1073
    if-nez p1, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-object v5

    .line 1077
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1078
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const/high16 v6, 0x1

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1084
    .local v3, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1088
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1089
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1091
    .local v4, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    .line 1095
    invoke-virtual {v4, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0
.end method

.method private getNextUtteranceId()I
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mNextUtteranceIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mNextUtteranceIndex:I

    return v0
.end method

.method private handleAllUtterancesCompleted()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method private handleMediaStateChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 759
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSystemTtsEngine:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsEngine:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    const-string v0, "Saw media unmount"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v4, v0, v1}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSystemTtsEngine:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/google/android/marvin/talkback/SpeechController;->setTtsEngine(Ljava/lang/String;Z)V

    .line 767
    :cond_0
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultTtsEngine:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsEngine:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    const-string v0, "Saw media mount"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v4, v0, v1}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultTtsEngine:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/google/android/marvin/talkback/SpeechController;->setTtsEngine(Ljava/lang/String;Z)V

    .line 774
    :cond_1
    return-void
.end method

.method private handleTtsInitialized(I)V
    .locals 8
    .parameter "status"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 886
    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTts:Landroid/speech/tts/TextToSpeech;

    if-nez v5, :cond_1

    .line 887
    const/4 v3, 0x6

    const-string v5, "Attempted to initialize TTS more than once!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTts:Landroid/speech/tts/TextToSpeech;

    .line 892
    .local v1, tempTts:Landroid/speech/tts/TextToSpeech;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTtsEngine:Ljava/lang/String;

    .line 894
    .local v2, tempTtsEngine:Ljava/lang/String;
    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTts:Landroid/speech/tts/TextToSpeech;

    .line 895
    iput-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTtsEngine:Ljava/lang/String;

    .line 897
    if-eqz p1, :cond_2

    .line 898
    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/SpeechController;->attemptTtsFailover(Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_2
    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_4

    move v0, v3

    .line 904
    .local v0, isSwitchingEngines:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 905
    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v5}, Lcom/google/android/marvin/talkback/SpeechController;->attemptTtsShutdown(Landroid/speech/tts/TextToSpeech;)V

    .line 908
    :cond_3
    iput-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 909
    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompletedListener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 911
    iput-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsEngine:Ljava/lang/String;

    .line 913
    const-class v5, Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v6, 0x4

    const-string v7, "Switched to TTS engine: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v5, v6, v7, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 915
    if-eqz v0, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/SpeechController;->speakCurrentEngine()V

    goto :goto_0

    .end local v0           #isSwitchingEngines:Z
    :cond_4
    move v0, v4

    .line 902
    goto :goto_1
.end method

.method private handleUtteranceCompleted(Ljava/lang/String;Z)V
    .locals 7
    .parameter "utteranceId"
    .parameter "success"

    .prologue
    .line 710
    if-eqz p2, :cond_0

    .line 711
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsFailures:I

    .line 714
    :cond_0
    const-string v4, "talkback_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    :try_start_0
    const-string v4, "talkback_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 726
    .local v3, utteranceIndex:I
    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 727
    :try_start_1
    iget-object v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 729
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 726
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    iget v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mNextUtteranceIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v3, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/SpeechController;->handleAllUtterancesCompleted()V

    goto :goto_0

    .line 722
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;>;"
    .end local v3           #utteranceIndex:I
    :catch_0
    move-exception v1

    .line 723
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 730
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;>;"
    .restart local v3       #utteranceIndex:I
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;

    .line 732
    .local v0, action:Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    iget v4, v0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;->utteranceIndex:I

    if-gt v4, v3, :cond_3

    .line 733
    iget-object v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    iget-object v6, v0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->post(Ljava/lang/Runnable;)Z

    .line 734
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 726
    .end local v0           #action:Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private isDeviceRinging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 694
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 694
    goto :goto_0
.end method

.method private manageIntonationEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "res"
    .parameter "prefs"

    .prologue
    .line 518
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 520
    const v0, 0x7f09000b

    const v1, 0x7f0b0004

    .line 519
    invoke-static {p2, p1, v0, v1}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mIntonationEnabled:Z

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mIntonationEnabled:Z

    goto :goto_0
.end method

.method private manageRingerVolume(I)V
    .locals 7
    .parameter "utteranceIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 784
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 785
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/marvin/talkback/SpeechController;->removeUtteranceCompleteAction(Ljava/lang/Runnable;)V

    .line 786
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/marvin/talkback/SpeechController;->addUtteranceCompleteAction(ILjava/lang/Runnable;)V

    .line 803
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 792
    .local v0, currentRingerVolume:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 793
    .local v2, maxRingerVolume:I
    div-int/lit8 v3, v2, 0x3

    div-int/lit8 v4, v0, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 795
    .local v1, lowerEnoughVolume:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    if-eqz v3, :cond_1

    .line 796
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    invoke-virtual {v3, v5, v1, v6}, Lcom/google/android/marvin/talkback/VolumeMonitor;->setStreamVolume(III)V

    .line 798
    :cond_1
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 800
    new-instance v3, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;-><init>(Lcom/google/android/marvin/talkback/SpeechController;II)V

    iput-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;

    .line 802
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/marvin/talkback/SpeechController;->addUtteranceCompleteAction(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private manageSpeechVolume(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "res"
    .parameter "prefs"

    .prologue
    .line 534
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 536
    const v0, 0x7f090004

    const v1, 0x7f09001a

    .line 535
    invoke-static {p2, p1, v0, v1}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getIntFromStringPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSpeechVolume:I

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSpeechVolume:I

    goto :goto_0
.end method

.method private manageTtsOverlayEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "res"
    .parameter "prefs"

    .prologue
    .line 495
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 497
    const v1, 0x7f09000d

    const v2, 0x7f0b0006

    .line 496
    invoke-static {p2, p1, v1, v2}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->getBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v0

    .line 502
    .local v0, ttsOverlayEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    if-nez v1, :cond_2

    .line 503
    new-instance v1, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    .line 508
    :cond_0
    :goto_1
    return-void

    .line 499
    .end local v0           #ttsOverlayEnabled:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #ttsOverlayEnabled:Z
    goto :goto_0

    .line 504
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->hide()V

    .line 506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    goto :goto_1
.end method

.method private static parseFloatParam(Ljava/util/HashMap;Ljava/lang/String;F)F
    .locals 2
    .parameter
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "F)F"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1038
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1048
    .end local p2
    :goto_0
    return p2

    .line 1043
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private reloadInstalledTtsEngines()V
    .locals 6

    .prologue
    .line 960
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 962
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 966
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 967
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/SpeechController;->reloadInstalledTtsEngines_ICS(Landroid/content/pm/PackageManager;)V

    .line 972
    :goto_0
    const/4 v1, 0x4

    const-string v2, "Found %d TTS engines. System engine is %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 973
    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSystemTtsEngine:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 972
    invoke-static {p0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 974
    return-void

    .line 969
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/SpeechController;->reloadInstalledTtsEngines_HC(Landroid/content/pm/PackageManager;)V

    goto :goto_0
.end method

.method private reloadInstalledTtsEngines_HC(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    const/4 v7, 0x1

    .line 1008
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.START_TTS_ENGINE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1012
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1024
    return-void

    .line 1012
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1013
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1014
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1015
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1016
    .local v4, packageName:Ljava/lang/String;
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    move v3, v7

    .line 1018
    .local v3, isSystemApp:Z
    :goto_1
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1020
    if-eqz v3, :cond_0

    .line 1021
    iput-object v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSystemTtsEngine:Ljava/lang/String;

    goto :goto_0

    .line 1016
    .end local v3           #isSystemApp:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private reloadInstalledTtsEngines_ICS(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    .line 983
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v1, intent:Landroid/content/Intent;
    const/4 v7, 0x4

    .line 984
    invoke-virtual {p1, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 987
    .local v5, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 999
    return-void

    .line 987
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 988
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 989
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 990
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 991
    .local v3, packageName:Ljava/lang/String;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    .line 993
    .local v2, isSystemApp:Z
    :goto_1
    iget-object v8, p0, Lcom/google/android/marvin/talkback/SpeechController;->mInstalledTtsEngines:Ljava/util/LinkedList;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 995
    if-eqz v2, :cond_0

    .line 996
    iput-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSystemTtsEngine:Ljava/lang/String;

    goto :goto_0

    .line 991
    .end local v2           #isSystemApp:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setEngineByPackageName_GB_HC(Ljava/lang/String;)V
    .locals 3
    .parameter "engine"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTtsEngine:Ljava/lang/String;

    .line 843
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTts:Landroid/speech/tts/TextToSpeech;

    .line 845
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTtsEngine:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;->setEngineByPackageName(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)I

    move-result v0

    .line 846
    .local v0, status:I
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsChangeListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-interface {v1, v0}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 847
    return-void
.end method

.method private setProximitySensorState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSilenceOnProximity:Z

    .line 1105
    .local v0, silenceOnProximity:Z
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximitySensor:Lcom/google/android/marvin/utils/ProximitySensor;

    if-nez v1, :cond_2

    .line 1106
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    new-instance v1, Lcom/google/android/marvin/utils/ProximitySensor;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/marvin/utils/ProximitySensor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximitySensor:Lcom/google/android/marvin/utils/ProximitySensor;

    .line 1114
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximitySensor:Lcom/google/android/marvin/utils/ProximitySensor;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximityChangeListener:Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/utils/ProximitySensor;->setProximityChangeListener(Lcom/google/android/marvin/utils/ProximitySensor$ProximityChangeListener;)V

    .line 1118
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1119
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximitySensor:Lcom/google/android/marvin/utils/ProximitySensor;

    invoke-virtual {v1}, Lcom/google/android/marvin/utils/ProximitySensor;->start()V

    goto :goto_0

    .line 1121
    :cond_3
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mProximitySensor:Lcom/google/android/marvin/utils/ProximitySensor;

    invoke-virtual {v1}, Lcom/google/android/marvin/utils/ProximitySensor;->stop()V

    goto :goto_0
.end method

.method private setTtsEngine(Ljava/lang/String;Z)V
    .locals 5
    .parameter "engine"
    .parameter "resetFailures"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 811
    if-eqz p2, :cond_0

    .line 812
    iput v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsFailures:I

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/SpeechController;->interrupt()V

    .line 818
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 819
    const-class v0, Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v1, 0x6

    const-string v2, "Can\'t start TTS engine %s while still loading previous engine"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 834
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->setEngineByPackageName_GB_HC(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_2
    const-class v0, Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v1, 0x4

    const-string v2, "Starting TTS engine: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 832
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTtsEngine:Ljava/lang/String;

    .line 833
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsChangeListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-static {v0, v1, p1}, Lcom/googlecode/eyesfree/compat/speech/tts/TextToSpeechCompatUtils;->newTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTempTts:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method

.method private speakCurrentEngine()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 924
    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsEngine:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/marvin/talkback/SpeechController;->getLabelForEngine(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 926
    .local v0, engineLabel:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    const v3, 0x7f090038

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 933
    .local v1, utterance:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v5, v2}, Lcom/google/android/marvin/talkback/SpeechController;->speakWithFailover(Ljava/lang/String;ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method private speakWithFailover(Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 13
    .parameter "utterance"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p3, speechParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v9, :cond_1

    .line 553
    const/4 v9, 0x6

    const-string v10, "Attempted to speak before TTS was initialized."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10, v11}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    if-nez p3, :cond_2

    .line 558
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSpeechParametersMap:Ljava/util/HashMap;

    move-object/from16 p3, v0

    .line 559
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->clear()V

    .line 563
    :cond_2
    const-string v9, "utteranceId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 564
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "talkback_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/SpeechController;->getNextUtteranceId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, utteranceId:Ljava/lang/String;
    const-string v9, "utteranceId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .end local v8           #utteranceId:Ljava/lang/String;
    :cond_3
    const-string v9, "streamType"

    const-string v10, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v9, "volume"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSpeechVolume:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-boolean v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mIntonationEnabled:Z

    if-eqz v9, :cond_8

    .line 576
    const-string v9, "pitch"

    const/high16 v10, 0x3f80

    move-object/from16 v0, p3

    invoke-static {v0, v9, v10}, Lcom/google/android/marvin/talkback/SpeechController;->parseFloatParam(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v9

    iget v10, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultPitch:F

    mul-float v4, v9, v10

    .line 577
    .local v4, pitch:F
    const-string v9, "rate"

    const/high16 v10, 0x3f80

    move-object/from16 v0, p3

    invoke-static {v0, v9, v10}, Lcom/google/android/marvin/talkback/SpeechController;->parseFloatParam(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v9

    iget v10, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultRate:F

    mul-float v5, v9, v10

    .line 583
    .local v5, rate:F
    :goto_1
    iget v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mCurrentPitch:F

    cmpl-float v9, v4, v9

    if-nez v9, :cond_9

    iget v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mCurrentRate:F

    cmpl-float v9, v5, v9

    if-nez v9, :cond_9

    const/4 v3, 0x0

    .line 586
    .local v3, needsAdjustment:Z
    :goto_2
    if-eqz v3, :cond_4

    .line 587
    :try_start_0
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 588
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 589
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v9, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 591
    iput v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mCurrentPitch:F

    .line 592
    iput v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mCurrentRate:F

    .line 597
    :cond_4
    const/4 v7, 0x0

    .line 598
    .local v7, speakableUtterances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xf9f

    if-le v9, v10, :cond_5

    .line 599
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->splitUtterancesIntoSpeakableStrings(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 600
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    .line 606
    :cond_5
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p3

    invoke-virtual {v9, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v6

    .line 607
    .local v6, result:I
    if-eqz v7, :cond_6

    .line 608
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_a

    .line 613
    .end local v2           #i:I
    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    .line 615
    if-eqz v6, :cond_7

    .line 617
    const-string v9, "utteranceId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 618
    .restart local v8       #utteranceId:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/google/android/marvin/talkback/SpeechController;->handleUtteranceCompleted(Ljava/lang/String;Z)V

    .line 621
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsEngine:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/SpeechController;->attemptTtsFailover(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v8           #utteranceId:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    if-eqz v9, :cond_0

    .line 632
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsOverlay:Lcom/google/android/marvin/talkback/TextToSpeechOverlay;

    invoke-virtual {v9, p1}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->speak(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .end local v3           #needsAdjustment:Z
    .end local v4           #pitch:F
    .end local v5           #rate:F
    .end local v6           #result:I
    .end local v7           #speakableUtterances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultPitch:F

    .line 580
    .restart local v4       #pitch:F
    iget v5, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultRate:F

    .restart local v5       #rate:F
    goto :goto_1

    .line 583
    :cond_9
    const/4 v3, 0x1

    goto :goto_2

    .line 609
    .restart local v2       #i:I
    .restart local v3       #needsAdjustment:Z
    .restart local v6       #result:I
    .restart local v7       #speakableUtterances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_1
    iget-object v10, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v9, v11, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 623
    .end local v2           #i:I
    .end local v6           #result:I
    .end local v7           #speakableUtterances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 624
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTtsEngine:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/google/android/marvin/talkback/SpeechController;->attemptTtsFailover(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private splitUtterancesIntoSpeakableStrings(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "utterance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xf9f

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, speakableUtterances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 655
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    return-object v0

    .line 648
    :cond_0
    const-string v2, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 649
    .local v1, splitLocation:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 650
    const/16 v1, 0xf9f

    .line 652
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private updateDefaultEngine(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/SpeechController;->reloadInstalledTtsEngines()V

    .line 942
    const-string v0, "tts_default_synth"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultTtsEngine:Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultTtsEngine:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->setTtsEngine(Ljava/lang/String;Z)V

    .line 946
    return-void
.end method

.method private updateDefaultPitch(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 949
    const-string v0, "tts_default_pitch"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultPitch:F

    .line 950
    return-void
.end method

.method private updateDefaultRate(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 953
    const-string v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mDefaultRate:F

    .line 954
    return-void
.end method


# virtual methods
.method public addUtteranceCompleteAction(ILjava/lang/Runnable;)V
    .locals 3
    .parameter "utteranceIndex"
    .parameter "runnable"

    .prologue
    .line 405
    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 407
    :try_start_0
    new-instance v0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;

    invoke-direct {v0, p1, p2}, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;-><init>(ILjava/lang/Runnable;)V

    .line 409
    .local v0, action:Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    monitor-exit v2

    .line 411
    return-void

    .line 405
    .end local v0           #action:Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V
    .locals 1
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 14
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"
    .parameter "completedAction"

    .prologue
    .line 327
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v9, :cond_1

    .line 328
    const/4 v9, 0x6

    const-string v10, "Attempted to speak before TTS was initialized."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10, v11}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    if-eqz p1, :cond_0

    .line 336
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, trimmedText:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 343
    if-nez p3, :cond_2

    .line 344
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 348
    :cond_2
    iget-object v9, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->cleanUp(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 350
    .local v1, cleanedText:Ljava/lang/CharSequence;
    iput-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mLastSpokenUtterance:Ljava/lang/CharSequence;

    .line 353
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/SpeechController;->getNextUtteranceId()I

    move-result v7

    .line 354
    .local v7, utteranceIndex:I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "talkback_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, utteranceId:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 357
    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v0}, Lcom/google/android/marvin/talkback/SpeechController;->addUtteranceCompleteAction(ILjava/lang/Runnable;)V

    .line 360
    :cond_3
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/SpeechController;->isDeviceRinging()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 361
    invoke-direct {p0, v7}, Lcom/google/android/marvin/talkback/SpeechController;->manageRingerVolume(I)V

    .line 365
    :cond_4
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSpeechParametersMap:Ljava/util/HashMap;

    .line 366
    .local v3, speechParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 369
    if-eqz p3, :cond_5

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 377
    :cond_5
    const-string v9, "utteranceId"

    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7}, Lcom/google/android/marvin/talkback/SpeechController;->computeQueuingMode(Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;I)I

    move-result v5

    .line 381
    .local v5, ttsQueueMode:I
    const/4 v9, 0x2

    const-string v10, "Speaking with queue mode %s: \"%s\""

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 382
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    .line 381
    invoke-static {p0, v9, v10, v11}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v5, v3}, Lcom/google/android/marvin/talkback/SpeechController;->speakWithFailover(Ljava/lang/String;ILjava/util/HashMap;)V

    goto :goto_0

    .line 370
    .end local v5           #ttsQueueMode:I
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    .local v2, key:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 372
    .local v8, value:Ljava/lang/Object;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    .line 445
    const-string v0, "talkback_2147483647"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->handleUtteranceCompleted(Ljava/lang/String;Z)V

    .line 446
    return-void

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeUtteranceCompleteAction(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mUtteranceCompleteActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 423
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    monitor-exit v3

    .line 431
    return-void

    .line 424
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;

    .line 426
    .local v0, action:Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    iget-object v2, v0, Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;->runnable:Ljava/lang/Runnable;

    if-ne v2, p1, :cond_0

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 420
    .end local v0           #action:Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/marvin/talkback/SpeechController$UtteranceCompleteAction;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public repeatLastUtterance()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mLastSpokenUtterance:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mLastSpokenUtterance:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, utterance:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/SpeechController;->speakWithFailover(Ljava/lang/String;ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public setScreenIsOn(Z)V
    .locals 1
    .parameter "screenIsOn"

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z

    .line 1140
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z

    if-eqz v0, :cond_0

    .line 1141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    .line 1143
    :cond_0
    return-void
.end method

.method public setSilenceOnProximity(Z)V
    .locals 1
    .parameter "silenceOnProximity"

    .prologue
    .line 1129
    iput-boolean p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSilenceOnProximity:Z

    .line 1130
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSilenceOnProximity:Z

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    .line 1131
    return-void
.end method

.method public setVolumeMonitor(Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 0
    .parameter "volumeMonitor"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 251
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/SpeechController;->interrupt()V

    .line 469
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->attemptTtsShutdown(Landroid/speech/tts/TextToSpeech;)V

    .line 471
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mMediaStateMonitor:Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/SpeechController;->mMediaStateMonitor:Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mSynthObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 477
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mPitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 478
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController;->mRateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 480
    invoke-direct {p0, v3, v3}, Lcom/google/android/marvin/talkback/SpeechController;->manageTtsOverlayEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 482
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    .line 483
    return-void
.end method

.method public spellLastUtterance()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 270
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mLastSpokenUtterance:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    .line 287
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/google/android/marvin/talkback/SpeechController;->mLastSpokenUtterance:Ljava/lang/CharSequence;

    .line 275
    .local v4, lastUtterance:Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, utterance:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-direct {p0, v5, v7, v6}, Lcom/google/android/marvin/talkback/SpeechController;->speakWithFailover(Ljava/lang/String;ILjava/util/HashMap;)V

    goto :goto_0

    .line 278
    .end local v5           #utterance:Ljava/lang/String;
    :cond_1
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, character:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->cleanUp(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 281
    .local v2, cleanedChar:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v0, v6}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public stopAll()V
    .locals 4

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/SpeechController;->mScreenIsOn:Z

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/SpeechController;->setProximitySensorState(Z)V

    .line 460
    const-string v0, "talkback_2147483647"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->handleUtteranceCompleted(Ljava/lang/String;Z)V

    .line 461
    return-void

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method
