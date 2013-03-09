.class public Lcom/android/voicedialer/VoiceDialerActivity;
.super Landroid/app/Activity;
.source "VoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;,
        Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;,
        Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;,
        Lcom/android/voicedialer/VoiceDialerActivity$OnUtteranceCompletedListener;,
        Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;,
        Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;,
        Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;,
        Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SAMPLE_RATE:I = 0x1f40

.field private static final CHOICES_UTTERANCE:Ljava/lang/String; = "choices"

.field private static final CHOSEN_ACTION_UTTERANCE:Ljava/lang/String; = "chose_action"

.field private static final CONTACTS_EXTRA:Ljava/lang/String; = "contacts"

.field private static final EXITING:I = 0x9

.field private static final EXIT_DELAY:I = 0x7d0

.field private static final FIRST_UTTERANCE_DELAY:I = 0x12c

.field private static final GOODBYE_UTTERANCE:Ljava/lang/String; = "goodbye"

.field private static final INITIALIZING:I = 0x0

.field private static final MAX_TTS_DELAY:I = 0x1770

.field private static final MICROPHONE_EXTRA:Ljava/lang/String; = "microphone"

.field private static final REGULAR_SAMPLE_RATE:I = 0x2b11

.field private static final SPEAKING_CHOICES:I = 0x4

.field private static final SPEAKING_CHOSEN_ACTION:I = 0x7

.field private static final SPEAKING_GOODBYE:I = 0x8

.field private static final SPEAKING_GREETING:I = 0x1

.field private static final SPEAKING_TRY_AGAIN:I = 0x3

.field private static final SPEAK_NOW_UTTERANCE:Ljava/lang/String; = "speak_now"

.field private static final TAG:Ljava/lang/String; = "VoiceDialerActivity"

.field private static final THREAD_JION_TIMEOUT:I = 0x9c4

.field private static final TRY_AGAIN_UTTERANCE:Ljava/lang/String; = "try_again"

.field private static final WAITING_FOR_CHOICE:I = 0x5

.field private static final WAITING_FOR_COMMAND:I = 0x2

.field private static final WAITING_FOR_DIALOG_CHOICE:I = 0x6

.field private static final mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

.field private static final mPhoneTypeChoiceEngine:Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAvailableChoices:[Landroid/content/Intent;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothVoiceVolume:I

.field private mChoiceClient:Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;

.field private mChosenAction:Landroid/content/Intent;

.field private mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

.field private mFallbackRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMicFlasher:Ljava/lang/Runnable;

.field private mReceiver:Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;

.field private mRecognizerThread:Ljava/lang/Thread;

.field private mSampleRate:I

.field private mState:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsParams:Ljava/util/HashMap;
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

.field private mUsingBluetooth:Z

.field private mWaitingForScoConnection:Z

.field private mWaitingForTts:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-direct {v0}, Lcom/android/voicedialer/CommandRecognizerEngine;-><init>()V

    sput-object v0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    .line 158
    new-instance v0, Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;

    invoke-direct {v0}, Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;-><init>()V

    sput-object v0, Lcom/android/voicedialer/VoiceDialerActivity;->mPhoneTypeChoiceEngine:Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    .line 461
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1264
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$6;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$6;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/voicedialer/VoiceDialerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForTts:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/voicedialer/VoiceDialerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForTts:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/voicedialer/VoiceDialerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/voicedialer/VoiceDialerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/voicedialer/VoiceDialerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/voicedialer/VoiceDialerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/voicedialer/VoiceDialerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->updateBluetoothParameters(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->askToTryAgain()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/voicedialer/VoiceDialerActivity;)[Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/voicedialer/VoiceDialerActivity;[Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->performChoice()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->waitForChoice()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()Lcom/android/voicedialer/CommandRecognizerEngine;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChoiceClient:Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/voicedialer/VoiceDialerActivity;->mPhoneTypeChoiceEngine:Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/voicedialer/VoiceDialerActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/voicedialer/VoiceDialerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->listenForChoice()V

    return-void
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 1250
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1251
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "VoiceDialer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1252
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1254
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private askToTryAgain()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$2;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method private exitActivity()V
    .locals 4

    .prologue
    .line 1119
    monitor-enter p0

    .line 1121
    :try_start_0
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1123
    const-string v0, "VoiceDialerActivity"

    const-string v1, "exitActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===SPEAKING_GOODBYE==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 1126
    iget-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    if-eqz v0, :cond_1

    .line 1128
    const-string v0, "VoiceDialerActivity"

    const-string v1, "TTS, speak goodbye~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, "goodbye"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1135
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    .line 1136
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1148
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1149
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$5;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$5;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 1152
    if-nez p1, :cond_1

    move-object v0, v1

    .line 1156
    :cond_0
    :goto_0
    return-object v0

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app.voicedialer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private listenForChoice()V
    .locals 3

    .prologue
    .line 1103
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForChoice(): MICROPHONE_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "microphone"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===WAITING_FOR_CHOICE==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 1107
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$4;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$4;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 1114
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1115
    return-void
.end method

.method private listenForCommand()V
    .locals 3

    .prologue
    .line 1086
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command(): MICROPHONE_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "microphone"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CONTACTS_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contacts"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===WAITING_FOR_COMMAND==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 1091
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$3;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 1099
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1100
    return-void
.end method

.method private static newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 1160
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performChoice()V
    .locals 5

    .prologue
    .line 608
    iget-boolean v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    const-string v2, "sentence"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, sentenceSpoken:Ljava/lang/String;
    const-string v1, "VoiceDialerActivity"

    const-string v2, "mState updated to ===SPEAKING_CHOSEN_ACTION==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 613
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v2, "utteranceId"

    const-string v3, "chose_action"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "VoiceDialerActivity"

    const-string v2, "TTS, speak sentenceSpoken~"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 621
    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    iput-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    .line 622
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 628
    .end local v0           #sentenceSpoken:Ljava/lang/String;
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    goto :goto_0
.end method

.method private playSound(I)I
    .locals 7
    .parameter "toneType"

    .prologue
    const/16 v6, 0x12c

    .line 1164
    const/4 v2, 0x1

    .line 1167
    .local v2, msecDelay:I
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v4, :cond_0

    .line 1168
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1169
    invoke-static {v2, v6}, Ljava/lang/StrictMath;->max(II)I

    move-result v2

    .line 1172
    :cond_0
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1174
    const/16 v1, 0x96

    .line 1175
    .local v1, VIBRATOR_TIME:I
    const/16 v0, 0x96

    .line 1176
    .local v0, VIBRATOR_GUARD_TIME:I
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 1177
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1178
    invoke-static {v2, v6}, Ljava/lang/StrictMath;->max(II)I

    move-result v2

    .line 1183
    .end local v0           #VIBRATOR_GUARD_TIME:I
    .end local v1           #VIBRATOR_TIME:I
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_1
    return v2
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1262
    :cond_0
    return-void
.end method

.method private static spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "sentenceDisplay"

    .prologue
    .line 1055
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1056
    .local v0, buffer:[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1058
    .local v2, buildingNumber:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1059
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 1060
    aget-char v3, v0, v4

    .line 1061
    .local v3, c:C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1062
    if-eqz v2, :cond_0

    .line 1063
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    :cond_0
    const/4 v2, 0x1

    .line 1066
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1067
    :cond_1
    const/16 v6, 0x20

    if-ne v3, v6, :cond_3

    .line 1068
    if-eqz v2, :cond_2

    .line 1069
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1071
    :cond_2
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1074
    :cond_3
    const/4 v2, 0x0

    .line 1075
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1078
    .end local v3           #c:C
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private speakChoices()V
    .locals 10

    .prologue
    .line 1013
    const-string v6, "VoiceDialerActivity"

    const-string v7, "speakChoices"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v6, "VoiceDialerActivity"

    const-string v7, "mState updated to ===SPEAKING_CHOICES==="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 1017
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "sentence"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1026
    .local v3, sentenceSpoken:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    array-length v1, v6

    .line 1030
    .local v1, count:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1031
    add-int/lit8 v6, v1, -0x1

    if-ne v2, v6, :cond_0

    .line 1032
    const-string v6, " or "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :goto_1
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    aget-object v6, v6, v2

    const-string v7, "sentence"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, tmpSentence:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1039
    .local v5, words:[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1034
    .end local v4           #tmpSentence:Ljava/lang/String;
    .end local v5           #words:[Ljava/lang/String;
    :cond_0
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1041
    :cond_1
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v7, "utteranceId"

    const-string v8, "choices"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string v6, "VoiceDialerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS, speak "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8, v9}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1044
    return-void
.end method

.method private startActivityHelp(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1083
    return-void
.end method

.method private updateBluetoothParameters(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    if-eqz p1, :cond_0

    .line 427
    iput-boolean v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    .line 429
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 430
    .local v0, bResult:Ljava/lang/Boolean;
    const-string v1, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using bluetooth, and execute startVoiceRecognition() at here !!!, bResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I

    .line 432
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v1, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->setMinimizeResults(Z)V

    .line 433
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v1, v5}, Lcom/android/voicedialer/CommandRecognizerEngine;->setAllowOpenEntries(Z)V

    .line 438
    const-string v1, "VoiceDialerActivity"

    const-string v2, "updaing mWaitingForScoConnection to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-boolean v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForScoConnection:Z

    .line 442
    iput-boolean v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mWaitingForTts:Z

    .line 443
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    new-instance v2, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;

    invoke-direct {v2, p0}, Lcom/android/voicedialer/VoiceDialerActivity$TtsInitListener;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 444
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    .line 445
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .end local v0           #bResult:Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v1, "VoiceDialerActivity"

    const-string v2, "not using bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput-boolean v5, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    .line 452
    const/16 v1, 0x2b11

    iput v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I

    .line 453
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v1, v5}, Lcom/android/voicedialer/CommandRecognizerEngine;->setMinimizeResults(Z)V

    .line 454
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v1, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->setAllowOpenEntries(Z)V

    .line 457
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V

    goto :goto_0
.end method

.method private waitForChoice()V
    .locals 4

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->speakChoices()V

    .line 644
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    .line 645
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===WAITING_FOR_DIALOG_CHOICE==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 186
    const-string v3, "VoiceDialerActivity"

    const-string v4, "===onCreate==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    .line 196
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 197
    const-string v3, "VoiceDialerActivity"

    const-string v4, "before new ToneGenerator()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x2

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    const-string v3, "VoiceDialerActivity"

    const-string v4, "after new ToneGenerator()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v3, "VoiceDialerActivity"

    const-string v4, "before acquireWakeLock()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p0}, Lcom/android/voicedialer/VoiceDialerActivity;->acquireWakeLock(Landroid/content/Context;)V

    .line 214
    const-string v3, "VoiceDialerActivity"

    const-string v4, "after acquireWakeLock()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "VoiceDialerActivity"

    const-string v4, "mState updated to ===INITIALIZING==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 217
    iput-object v7, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    .line 218
    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v7, v4, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 221
    const/high16 v2, 0x8

    .line 222
    .local v2, flags:I
    invoke-virtual {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    .line 225
    const v3, 0x103000b

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->setTheme(I)V

    .line 226
    const v3, 0x7f040004

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->setTitle(I)V

    .line 227
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->setContentView(I)V

    .line 228
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v3, 0x7f050005

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-static {p0}, Lcom/android/voicedialer/RecognizerLogger;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f040010

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    .local v0, audioStateFilter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mReceiver:Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;

    .line 241
    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mReceiver:Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/voicedialer/VoiceDialerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    sget-object v3, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    const-string v4, "contacts"

    invoke-direct {p0, v4}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->setContactsFile(Ljava/io/File;)V

    .line 244
    sget-object v3, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v3, v8}, Lcom/android/voicedialer/CommandRecognizerEngine;->setMinimizeResults(Z)V

    .line 245
    sget-object v3, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v3, v6}, Lcom/android/voicedialer/CommandRecognizerEngine;->setAllowOpenEntries(Z)V

    .line 246
    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    invoke-direct {v3, p0, v7}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    .line 247
    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;

    invoke-direct {v3, p0, v7}, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mChoiceClient:Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;

    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 250
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v3, p0, v4, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 254
    const-string v3, "VoiceDialerActivity"

    const-string v4, "Getting Headset Proxy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_1
    return-void

    .line 203
    .end local v0           #audioStateFilter:Landroid/content/IntentFilter;
    .end local v2           #flags:I
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 256
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #audioStateFilter:Landroid/content/IntentFilter;
    .restart local v2       #flags:I
    :cond_1
    const-string v3, "VoiceDialerActivity"

    const-string v4, "Getting Headset Proxy Ok"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    :cond_2
    iput-boolean v6, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z

    .line 261
    const-string v3, "VoiceDialerActivity"

    const-string v4, "bluetooth unavailable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v3, 0x2b11

    iput v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I

    .line 263
    sget-object v3, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v3, v6}, Lcom/android/voicedialer/CommandRecognizerEngine;->setMinimizeResults(Z)V

    .line 264
    sget-object v3, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v3, v8}, Lcom/android/voicedialer/CommandRecognizerEngine;->setAllowOpenEntries(Z)V

    .line 267
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1187
    const-string v1, "VoiceDialerActivity"

    const-string v2, "===onDestroy==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    monitor-enter p0

    .line 1190
    :try_start_0
    const-string v1, "VoiceDialerActivity"

    const-string v2, "mState updated to ===EXITING==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mState:I

    .line 1192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1200
    :cond_0
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1206
    const-string v1, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setback StreamVolume(STREAM_BLUETOOTH_SCO) to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothVoiceVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1210
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 1212
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1213
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1214
    iput-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1218
    :cond_2
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 1219
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1221
    :try_start_1
    const-string v1, "VoiceDialerActivity"

    const-string v2, "==========brfore join=============="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 1223
    const-string v1, "VoiceDialerActivity"

    const-string v2, "==========after join=============="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1228
    :goto_0
    iput-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 1232
    :cond_3
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1233
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_4

    .line 1236
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1237
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1238
    iput-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1240
    :cond_4
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mReceiver:Lcom/android/voicedialer/VoiceDialerActivity$VoiceDialerBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1244
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->releaseWakeLock()V

    .line 1245
    return-void

    .line 1192
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop mRecognizerThread.join exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
