.class public Lcom/google/android/voicesearch/RecognitionActivity;
.super Landroid/app/Activity;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;,
        Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;,
        Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;,
        Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;
    }
.end annotation


# static fields
.field private static final DOCK_EVENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

.field private mActionTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

.field private mActivityCreateTime:J

.field private mAllResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

.field private mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

.field private mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

.field private mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

.field private mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

.field private mDialogListener:Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;

.field private mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mHandler:Landroid/os/Handler;

.field private mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

.field private mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mRecognitionMode:I

.field private mRestoreRecognizingScreen:Z

.field private mScreenOnResume:I

.field private mSendApplicationIdExtra:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSoundManager:Lcom/google/android/voicesearch/SoundManager;

.field mSpeechEndPosition:I

.field mSpeechStartPosition:I

.field private mStartActionTime:J

.field private mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

.field private mToExitOnStartup:Z

.field private mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mVibrator:Lcom/google/android/voicesearch/Vibrator;

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field private mWebSearchOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/RecognitionActivity;->DOCK_EVENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    .line 161
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    .line 164
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    .line 208
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 228
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    .line 257
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/RecognitionActivity$1;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 1152
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$17;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/RecognitionActivity$17;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    .line 1790
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showWorking()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/voicesearch/RecognitionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/RecognitionActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->latency()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showResults()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/voicesearch/RecognitionActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showProgressSpinner()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/RecognitionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startHelpActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/RecognitionActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->onError(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->replayLastRecognition()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->initAndStart()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->launchSettings()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/voicesearch/RecognitionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DeviceCapabilityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/EditorDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/LanguagePrefManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V

    return-void
.end method

.method static synthetic access$3302(Lcom/google/android/voicesearch/RecognitionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRestoreRecognizingScreen:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueShowingResults()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->onReadyForSpeech()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/RecognitionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->handleIntentApiResults(Ljava/util/ArrayList;[B)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->handleVoiceSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    return-void
.end method

.method private continueShowingResults()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1479
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldShowDisambig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V

    .line 1481
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    .line 1511
    :goto_0
    return-void

    .line 1485
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getSoundId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 1486
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    check-cast v0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/voicesearch/EditorDialog;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V

    .line 1491
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseMicrophone()V

    .line 1492
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1493
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1494
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    goto :goto_0

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->isCountdownNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1499
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/VoiceAction;->prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V

    .line 1500
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1501
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    const/16 v1, 0xfa0

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/TimeoutDialog;->startCountDown(ILcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;)V

    .line 1502
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1503
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    .line 1510
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    goto :goto_1
.end method

.method private continueStartRecognitionTask()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1304
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1305
    if-nez v2, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->reset()V

    .line 1311
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->start(Landroid/content/Intent;)V

    .line 1313
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    packed-switch v0, :pswitch_data_0

    .line 1393
    :goto_1
    const-string v0, "fullRecognitionResultsRequest"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1397
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->setIntent(Landroid/content/Intent;)V

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->setBrandingAndLanguageText(Landroid/content/Intent;)V

    .line 1400
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v0, v2, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->startListening(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    goto :goto_0

    .line 1315
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 1316
    if-nez v1, :cond_8

    .line 1317
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_0

    .line 1322
    const-string v3, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1324
    if-nez v0, :cond_3

    .line 1331
    const-string v0, "RecognitionActivity"

    const-string v3, "ACTION_RECOGNIZE_SPEECH intent called incorrectly. Maybe you called startActivity, but you should have called startActivityForResult (or otherwise included a pending intent)."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1342
    :goto_2
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "calling_package"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1344
    const-string v0, "calling_package"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    :cond_2
    const-string v1, "calling_package"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1336
    :cond_3
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1370
    :pswitch_1
    iput-boolean v5, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    .line 1371
    const-string v0, "calling_package"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    if-eqz v0, :cond_4

    .line 1374
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1377
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "com.android.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1380
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    .line 1382
    :cond_7
    const-string v0, "contact_auth"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1383
    const-string v0, "useLocation"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1384
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getEndpointerCompleteSilenceMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1386
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getEndpointerPossiblyCompleteSilenceMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2

    .line 1313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1758
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionCounter()Lcom/google/android/voicesearch/actions/ActionCounter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/ActionCounter;->recordActionPerformed(I)V

    .line 1759
    return-void
.end method

.method private forwardRecognitionResults(Ljava/util/ArrayList;[F[BLandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[F[B",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1620
    if-nez p5, :cond_0

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 1621
    :cond_0
    const-string v1, "query"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1623
    const-string v0, "android.speech.extra.CONFIDENCE_SCORES"

    invoke-virtual {p5, v0, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 1624
    if-eqz p3, :cond_1

    .line 1625
    const-string v0, "android.speech.extras.RAW_AUDIO"

    invoke-virtual {p5, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1629
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1631
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1636
    return-void

    .line 1632
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getActionCounter()Lcom/google/android/voicesearch/actions/ActionCounter;
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

    if-nez v0, :cond_0

    .line 1752
    new-instance v0, Lcom/google/android/voicesearch/actions/ActionCounter;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/ActionCounter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;

    return-object v0
.end method

.method private getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 8
    .parameter "action"
    .parameter "message"
    .parameter "showDisambigAfter"

    .prologue
    .line 971
    const v4, 0x7f0a07e7

    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/RecognitionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/voicesearch/actions/VoiceAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/voicesearch/actions/VoiceAction;->getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, marketUrl:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getCountdownIcon()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a07d4

    new-instance v6, Lcom/google/android/voicesearch/RecognitionActivity$15;

    invoke-direct {v6, p0, p3}, Lcom/google/android/voicesearch/RecognitionActivity$15;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/android/voicesearch/RecognitionActivity$14;

    invoke-direct {v5, p0, p3}, Lcom/google/android/voicesearch/RecognitionActivity$14;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1005
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1006
    const/4 v3, -0x1

    .line 1007
    .local v3, titleResource:I
    const-string v4, "market"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1008
    const v3, 0x7f0a07ed

    .line 1012
    :goto_0
    new-instance v4, Lcom/google/android/voicesearch/RecognitionActivity$16;

    invoke-direct {v4, p0, p1, v1}, Lcom/google/android/voicesearch/RecognitionActivity$16;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1032
    .end local v3           #titleResource:I
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 1010
    .restart local v3       #titleResource:I
    :cond_1
    const v3, 0x7f0a07ee

    goto :goto_0
.end method

.method private getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "language"
    .parameter "positiveButtonListener"

    .prologue
    .line 935
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a07d4

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a06ff

    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$13;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$13;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/RecognitionActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/RecognitionActivity$12;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    if-nez v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    return-object v0
.end method

.method private handleIntentApiResults(Ljava/util/ArrayList;[B)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [F

    .line 1572
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 1573
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1574
    instance-of v4, v0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;

    if-eqz v4, :cond_0

    .line 1575
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getConfidence()F

    move-result v0

    aput v0, v2, v3

    .line 1572
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1580
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1581
    if-nez v0, :cond_2

    .line 1596
    :goto_1
    return-void

    .line 1586
    :cond_2
    const-string v3, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1588
    if-eqz v4, :cond_3

    .line 1589
    const-string v3, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    .line 1591
    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/RecognitionActivity;->forwardRecognitionResults(Ljava/util/ArrayList;[F[BLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1594
    :cond_3
    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->returnRecognitionResults(Ljava/util/ArrayList;[F[B)V

    goto :goto_1
.end method

.method private handleVoiceSearchResults(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1647
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    :cond_0
    const-string v0, "RecognitionActivity"

    const-string v1, "Unexpected error, server returned no results."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v0, 0x7

    invoke-direct {p0, v0, v6}, Lcom/google/android/voicesearch/RecognitionActivity;->onError(IZ)V

    .line 1682
    :goto_0
    return-void

    .line 1661
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getSupportedActionTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1664
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1665
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1666
    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1671
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1672
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1673
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->isEmptyWebSearchResult(Lcom/google/android/voicesearch/actions/VoiceAction;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1674
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1668
    :cond_3
    iput-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    goto :goto_1

    .line 1678
    :cond_4
    iput-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    .line 1679
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1681
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1679
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    goto :goto_3
.end method

.method private hideProgressSpinner()V
    .locals 0

    .prologue
    .line 1740
    return-void
.end method

.method private initAndStart()V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showInitializing()V

    .line 823
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startRecognitionTask()V

    .line 824
    return-void
.end method

.method private isEmptyWebSearchResult(Lcom/google/android/voicesearch/actions/VoiceAction;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 1691
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private latency()J
    .locals 4

    .prologue
    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActivityCreateTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private launchOptInActivity(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRestoreRecognizingScreen:Z

    .line 1129
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1135
    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    return-void

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    const-string v1, "RecognitionActivity"

    const-string v2, "Couldn\'t start location opt-in"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRestoreRecognizingScreen:Z

    .line 1744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1745
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/voicesearch/VoiceSearchPreferences;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1747
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1748
    return-void
.end method

.method private onError(IZ)V
    .locals 4
    .parameter "errorType"
    .parameter "retryable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1181
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->setRecognitionState(I)V

    .line 1189
    :cond_0
    if-eqz p2, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialogListener:Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;

    invoke-virtual {v0, v3}, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->setTryAgainResendsAudio(Z)V

    .line 1191
    invoke-static {p1}, Lcom/google/android/voicesearch/StringUtils;->getErrorMessageId(I)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->showError(II)V

    .line 1198
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialogListener:Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->setTryAgainResendsAudio(Z)V

    .line 1195
    invoke-static {p1}, Lcom/google/android/voicesearch/StringUtils;->getErrorMessageId(I)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->showError(II)V

    goto :goto_0
.end method

.method private onReadyForSpeech()V
    .locals 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1223
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 1204
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_0
    return-void
.end method

.method private replayLastRecognition()V
    .locals 3

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    if-nez v0, :cond_1

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startRecognitionTask()V

    .line 1250
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->replayLastRecognition(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    goto :goto_0
.end method

.method private returnRecognitionResults(Ljava/util/ArrayList;[F[B)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[F[B)V"
        }
    .end annotation

    .prologue
    .line 1604
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1605
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1606
    const-string v1, "android.speech.extra.CONFIDENCE_SCORES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 1607
    if-eqz p3, :cond_0

    .line 1608
    const-string v1, "android.speech.extras.RAW_AUDIO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1610
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1611
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1612
    return-void
.end method

.method private setBrandingAndLanguageText(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1063
    .line 1064
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1065
    const-string v0, "android.speech.extra.PROMPT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1069
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setBrandingText(Ljava/lang/String;)V

    .line 1073
    if-eqz p1, :cond_1

    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1078
    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    const-string v2, "RecognitionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested language code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    :goto_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->setLanguageText(Ljava/lang/String;)V

    .line 1096
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 1089
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2, p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->shouldShowVoiceSearchLanguage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1090
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private setMode(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1036
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    .line 1039
    iput-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    .line 1045
    :goto_0
    return-void

    .line 1041
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    .line 1042
    const-string v0, "android.speech.extra.WEB_SEARCH_ONLY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    goto :goto_0
.end method

.method private shouldShowHelpButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1049
    iget v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRecognitionMode:I

    if-eq v2, v0, :cond_0

    .line 1053
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingHasVoiceActions()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mWebSearchOnly:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getAdvancedFeaturesEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private showDisambig(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/voicesearch/DisambigDialog;->update(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 1414
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1415
    if-eqz p1, :cond_0

    .line 1416
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    goto :goto_0
.end method

.method private showError(II)V
    .locals 3
    .parameter "stringId"
    .parameter "retryType"

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1238
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1239
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1240
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1241
    return-void
.end method

.method private showInitializing()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1215
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showProgressSpinner()V

    .line 1216
    return-void
.end method

.method private showOptInIfNeeded()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    const-string v0, "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->launchOptInActivity(Ljava/lang/String;I)V

    .line 1107
    :goto_0
    return-void

    .line 1105
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    goto :goto_0
.end method

.method private showProgressSpinner()V
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 1732
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->showWaiting()V

    .line 1733
    return-void
.end method

.method private showResults()V
    .locals 4

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    :goto_0
    return-void

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v0, :cond_1

    .line 1436
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    .line 1437
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    goto :goto_0

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1444
    const-string v0, "RecognitionActivity"

    const-string v1, "No supported result were received by the client."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->onError(IZ)V

    goto :goto_0

    .line 1451
    :cond_2
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionCounter()Lcom/google/android/voicesearch/actions/ActionCounter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/ActionCounter;->getActionPerformedCount(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getFirstTimeUseDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    if-eqz v0, :cond_3

    .line 1456
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1457
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1459
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->hideProgressSpinner()V

    goto :goto_0

    .line 1464
    :cond_3
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueShowingResults()V

    goto :goto_0
.end method

.method private showScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 1700
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->show()V

    .line 1706
    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->disambigPresented()V

    .line 1708
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->show()V

    .line 1713
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1714
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->show()V

    .line 1719
    :goto_2
    if-nez p1, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->setVisibility(I)V

    .line 1725
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->closeOptionsMenu()V

    .line 1727
    iput p1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    .line 1728
    return-void

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->dismiss()V

    goto :goto_0

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    goto :goto_1

    .line 1716
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->dismiss()V

    goto :goto_2

    .line 1722
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->hide()V

    goto :goto_3
.end method

.method private showWorking()V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1230
    return-void
.end method

.method private startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1521
    :cond_0
    const-string v0, "RecognitionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    if-eqz p2, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1528
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1534
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    .line 1535
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1537
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSendApplicationIdExtra:Z

    if-eqz v0, :cond_2

    .line 1538
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->setForwardApplicationId(Ljava/lang/String;)V

    .line 1543
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 1544
    if-eqz v1, :cond_5

    .line 1545
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1546
    if-nez v0, :cond_3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1547
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1549
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getCompletionToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v0

    .line 1550
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1552
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1559
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/Shortcuts;->addShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_0

    .line 1555
    :cond_5
    new-instance v0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/util/ArrayList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private startHelpActivity()V
    .locals 4

    .prologue
    .line 1113
    invoke-static {p0}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->incrementHelpCount(Landroid/content/Context;)V

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1115
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/voicesearch/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1116
    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1119
    :cond_0
    const-string v0, "show_hints_checkbox_key"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 1122
    return-void
.end method

.method private startRecognitionTask()V
    .locals 4

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingIsDefault()Z

    move-result v0

    .line 1262
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->deviceLanguageIsSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->hasAcknowledgedUnsupportedDeviceLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    .line 1296
    :goto_0
    return-void

    .line 1266
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "default_language_changed"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1270
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1273
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V

    goto :goto_0

    .line 1279
    :pswitch_1
    if-eqz v0, :cond_1

    .line 1280
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    goto :goto_0

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->resetDefaultLanguageChange()V

    .line 1283
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->continueStartRecognitionTask()V

    goto :goto_0

    .line 1288
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    goto :goto_0

    .line 1292
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showDialog(I)V

    goto :goto_0

    .line 1270
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 1

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;)V

    .line 1766
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->updateLayout()V

    .line 1767
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->updateLayout()V

    .line 1768
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->updateLayout()V

    .line 1769
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 691
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 695
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 696
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->dismiss()V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 701
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->updateLayout()V

    .line 659
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 660
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActivityCreateTime:J

    .line 494
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 496
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 497
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 507
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->createRecognitionController()Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 510
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/VoiceSearchApplication;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 511
    const-string v2, "VoiceSearchPreferences"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/voicesearch/RecognitionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 513
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 514
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    .line 515
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 516
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 517
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    .line 519
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;

    invoke-direct {v2, p0, v5}, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/RecognitionActivity$1;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    .line 521
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mHandler:Landroid/os/Handler;

    .line 522
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->setMode(Landroid/content/Intent;)V

    .line 523
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->setContentView(I)V

    .line 525
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 527
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "enableTestPlatformLogging"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/voicesearch/TestPlatformLog;->setEnabled(Z)V

    .line 529
    const v2, 0x7f0e005a

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/RecognitionDialog;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    .line 530
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;

    invoke-direct {v2, p0, v5}, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/RecognitionActivity$1;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialogListener:Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;

    .line 531
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialogListener:Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/RecognitionDialog;->setListener(Lcom/google/android/voicesearch/RecognitionDialog$Listener;)V

    .line 533
    new-instance v2, Lcom/google/android/voicesearch/DisambigDialog;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/DisambigDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    .line 534
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v2, p0}, Lcom/google/android/voicesearch/DisambigDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 535
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$2;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/DisambigDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 543
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$3;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/DisambigDialog;->setDisambigListener(Lcom/google/android/voicesearch/DisambigDialog$Listener;)V

    .line 585
    new-instance v2, Lcom/google/android/voicesearch/EditorDialog;

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-direct {v2, p0, v3}, Lcom/google/android/voicesearch/EditorDialog;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    .line 586
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$4;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$4;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/EditorDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 593
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$5;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$5;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/EditorDialog;->setListener(Lcom/google/android/voicesearch/EditorDialog$Listener;)V

    .line 611
    new-instance v2, Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/TimeoutDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    .line 614
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$6;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$6;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/TimeoutDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 621
    new-instance v2, Lcom/google/android/voicesearch/Vibrator;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/voicesearch/Vibrator;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mVibrator:Lcom/google/android/voicesearch/Vibrator;

    .line 631
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->updateLayout()V

    .line 632
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v2, p0}, Lcom/google/android/voicesearch/util/AccountHelper;->promptForPermissions(Landroid/app/Activity;)V

    .line 633
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showOptInIfNeeded()V

    .line 634
    if-eqz p1, :cond_0

    const-string v2, "key_state_sceen_on_resume"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    const-string v2, "key_state_sceen_on_resume"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    .line 637
    const-string v2, "key_state_top_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/VoiceAction;

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 638
    const-string v2, "key_state_all_results"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    .line 639
    const-string v2, "key_state_action_start_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    .line 641
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f0a07cd

    .line 830
    packed-switch p1, :pswitch_data_0

    .line 925
    const-string v3, "RecognitionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown dialog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    :goto_0
    return-object v2

    .line 832
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, language:Ljava/lang/String;
    const v2, 0x7f0a07ce

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$8;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$8;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 844
    .end local v1           #language:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v1

    .line 845
    .restart local v1       #language:Ljava/lang/String;
    const v2, 0x7f0a07cf

    new-instance v3, Lcom/google/android/voicesearch/RecognitionActivity$9;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/RecognitionActivity$9;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 856
    .end local v1           #language:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v1

    .line 861
    .restart local v1       #language:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingIsDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    const v0, 0x7f0a07d0

    .line 867
    .local v0, dialogMessage:I
    :goto_1
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$10;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$10;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 864
    .end local v0           #dialogMessage:I
    :cond_1
    const v0, 0x7f0a07d1

    .restart local v0       #dialogMessage:I
    goto :goto_1

    .line 878
    .end local v0           #dialogMessage:I
    .end local v1           #language:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceDefaultLanguageName()Ljava/lang/String;

    move-result-object v1

    .line 883
    .restart local v1       #language:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageSettingIsDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 884
    const v0, 0x7f0a07d2

    .line 889
    .restart local v0       #dialogMessage:I
    :goto_2
    new-instance v2, Lcom/google/android/voicesearch/RecognitionActivity$11;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/RecognitionActivity$11;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->getLanguageWarningDialog(IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 886
    .end local v0           #dialogMessage:I
    :cond_2
    const v0, 0x7f0a07d3

    .restart local v0       #dialogMessage:I
    goto :goto_2

    .line 900
    .end local v0           #dialogMessage:I
    .end local v1           #language:Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v3, :cond_0

    .line 906
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mUnsupportedResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/voicesearch/actions/VoiceAction;->getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 913
    :pswitch_5
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v3, :cond_0

    .line 919
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    const-string v3, "message"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 817
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 818
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->destroy()V

    .line 819
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mActivityCreateTime:J

    .line 682
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->cancel(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 683
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->setIntent(Landroid/content/Intent;)V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    .line 685
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showOptInIfNeeded()V

    .line 686
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 687
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 645
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 652
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 647
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 648
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/voicesearch/VoiceSearchPreferences;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 650
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e005c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 762
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    :goto_1
    return-void

    .line 772
    :cond_0
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRestoreRecognizingScreen:Z

    if-nez v0, :cond_2

    .line 774
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 776
    :cond_2
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->removeAllMessages()V

    .line 777
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->cancel(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseMicrophone()V

    .line 781
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v0}, Lcom/google/android/voicesearch/LocationHelper;->stopLocationService()V

    .line 782
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->stopCountDown()V

    .line 783
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->onPause()V

    goto :goto_1

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 706
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 707
    iget-boolean v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v3}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 757
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v3}, Lcom/google/android/voicesearch/LocationHelper;->isLocationInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 717
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mToExitOnStartup:Z

    goto :goto_0

    .line 721
    :cond_1
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLocationUtils:Lcom/google/android/voicesearch/LocationHelper;

    invoke-interface {v3}, Lcom/google/android/voicesearch/LocationHelper;->startLocationService()V

    .line 722
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->shouldShowHelpButton()Z

    move-result v0

    .line 723
    .local v0, showHelpButton:Z
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v3, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setShowHelpButton(Z)V

    .line 724
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-virtual {v3, v0}, Lcom/google/android/voicesearch/DisambigDialog;->setShowHelpButton(Z)V

    .line 725
    iput-boolean v7, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mRestoreRecognizingScreen:Z

    .line 727
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->shouldShowFirstRunMessage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 729
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->showInitializing()V

    .line 730
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->startHelpActivity()V

    goto :goto_0

    .line 733
    :cond_2
    iget v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 735
    iget v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    sub-long v1, v3, v5

    .line 738
    .local v1, timeSinceLeaving:J
    iget-wide v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    const-wide/16 v3, 0x3a98

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 740
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    goto :goto_0

    .line 744
    :cond_3
    invoke-direct {p0, v7}, Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V

    .line 748
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldWatchForQuickReturns()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-gez v3, :cond_4

    .line 750
    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v4, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartedAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v3, v4}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 753
    .end local v1           #timeSinceLeaving:J
    :cond_4
    iget v3, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    goto :goto_0

    .line 755
    :cond_5
    invoke-direct {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->initAndStart()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1773
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1774
    const-string v0, "key_state_sceen_on_resume"

    iget v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1775
    const-string v0, "key_state_top_result"

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1776
    const-string v0, "key_state_all_results"

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1777
    const-string v0, "key_state_action_start_time"

    iget-wide v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mStartActionTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1779
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1780
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 789
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 791
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDockReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/voicesearch/RecognitionActivity;->DOCK_EVENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 792
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-static {p0, v1}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->shouldShowHelpBubble(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)Z

    move-result v0

    .line 794
    .local v0, shouldShowHelpBubble:Z
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mDialog:Lcom/google/android/voicesearch/RecognitionDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/RecognitionDialog;->setShowHelpHintBubble(Z)V

    .line 795
    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->incrementAppStartCount(Landroid/content/Context;)V

    .line 798
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mScreenOnResume:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 805
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseNetworking()V

    .line 808
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->flush()V

    .line 812
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 813
    return-void
.end method
