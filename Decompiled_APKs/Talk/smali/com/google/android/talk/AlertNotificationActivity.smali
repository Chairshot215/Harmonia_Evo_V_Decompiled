.class public Lcom/google/android/talk/AlertNotificationActivity;
.super Lcom/google/android/talk/AlertNotificationFullScreenActivity;
.source "AlertNotificationActivity.java"


# instance fields
.field private final MAX_KEYGUARD_CHECKS:I

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardRetryCount:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;-><init>()V

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->MAX_KEYGUARD_CHECKS:I

    .line 43
    new-instance v0, Lcom/google/android/talk/AlertNotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AlertNotificationActivity$1;-><init>(Lcom/google/android/talk/AlertNotificationActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/google/android/talk/AlertNotificationActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AlertNotificationActivity$2;-><init>(Lcom/google/android/talk/AlertNotificationActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AlertNotificationActivity;Landroid/app/KeyguardManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/talk/AlertNotificationActivity;->handleScreenOff(Landroid/app/KeyguardManager;)V

    return-void
.end method

.method private checkRetryCount()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mKeyguardRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/talk/AlertNotificationActivity;->mKeyguardRetryCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 88
    const-string v0, "talk"

    const-string v1, "Tried to read keyguard status too many times, bailing..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleScreenOff(Landroid/app/KeyguardManager;)V
    .locals 4
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationActivity;->checkRetryCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string v1, "screen_off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v1, "from"

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "accountId"

    iget-wide v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const-string v1, "message"

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "android.intent.extra.INTENT"

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mShowChatIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 111
    const-string v1, "incoming_call"

    iget-boolean v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mIsIncomingCall:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v1, "isvideo"

    iget-boolean v2, p0, Lcom/google/android/talk/AlertNotificationActivity;->mIsVideo:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationActivity;->finish()V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->onStart()V

    .line 67
    const-string v0, "talk"

    const-string v1, "[AlertNotification] onStart: register for SCREEN_OFF"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/AlertNotificationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->onStop()V

    .line 75
    const-string v0, "talk"

    const-string v1, "[AlertNotification] onStop: unregister for SCREEN_OFF"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    return-void
.end method
