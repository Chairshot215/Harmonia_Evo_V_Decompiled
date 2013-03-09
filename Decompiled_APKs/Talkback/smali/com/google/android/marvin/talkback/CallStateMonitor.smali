.class Lcom/google/android/marvin/talkback/CallStateMonitor;
.super Landroid/content/BroadcastReceiver;
.source "CallStateMonitor.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;
    }
.end annotation


# static fields
.field private static final STATE_CHANGED_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

.field private final mHandler:Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;

.field private mInfrastructureInitialized:Z

.field private final mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    .line 34
    const-string v1, "android.intent.action.PHONE_STATE"

    .line 33
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/marvin/talkback/CallStateMonitor;->STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;Lcom/google/android/marvin/talkback/PreferenceFeedbackController;)V
    .locals 1
    .parameter "speechController"
    .parameter "feedbackController"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;-><init>(Lcom/google/android/marvin/talkback/CallStateMonitor;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mHandler:Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;

    .line 47
    iput-object p1, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 48
    iput-object p2, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/CallStateMonitor;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/CallStateMonitor;->internalOnReceive(Landroid/content/Intent;)V

    return-void
.end method

.method private internalOnReceive(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mInfrastructureInitialized:Z

    if-nez v1, :cond_1

    .line 58
    const-class v1, Lcom/google/android/marvin/talkback/CallStateMonitor;

    const/4 v2, 0x5

    const-string v3, "Service not initialized during broadcast."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, state:Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/SpeechController;->interrupt()V

    .line 67
    iget-object v1, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/marvin/talkback/CallStateMonitor;->STATE_CHANGED_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onInfrastructureStateChange(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "isInitialized"

    .prologue
    .line 73
    iput-boolean p2, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mInfrastructureInitialized:Z

    .line 74
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CallStateMonitor;->mHandler:Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;

    invoke-virtual {v0, p2}, Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;->onReceive(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
