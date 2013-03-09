.class public Lcom/google/android/talk/GlobalCallStateMonitor;
.super Lcom/google/android/videochat/CallStateClient;
.source "GlobalCallStateMonitor.java"


# instance fields
.field private mAudioFocusManager:Lcom/google/android/talk/videochat/AudioFocusManager;

.field private mCurrentCallRemoteBareJid:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallStateClient;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/google/android/talk/GlobalCallStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GlobalCallStateMonitor$1;-><init>(Lcom/google/android/talk/GlobalCallStateMonitor;)V

    iput-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 58
    invoke-static {p1}, Lcom/google/android/talk/videochat/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/google/android/talk/videochat/AudioFocusManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mAudioFocusManager:Lcom/google/android/talk/videochat/AudioFocusManager;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/GlobalCallStateMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/GlobalCallStateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onCallEnded()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/android/talk/GlobalCallStateMonitor;->unregisterForPhoneStateNotifications()V

    .line 129
    return-void
.end method

.method private onCallStarted()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/talk/GlobalCallStateMonitor;->registerForPhoneStateNotifications()V

    .line 125
    return-void
.end method

.method private registerForPhoneStateNotifications()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 134
    return-void
.end method

.method private unregisterForPhoneStateNotifications()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 139
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 5
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 64
    const-string v0, "Talk:GlobalCallStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", full="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRequestReply="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iput-object p1, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mAudioFocusManager:Lcom/google/android/talk/videochat/AudioFocusManager;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/talk/videochat/AudioFocusManager;->requestAudioFocus(II)V

    .line 73
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/talk/videochat/RingerService;->startServiceForOutgoingRinger(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mAudioFocusManager:Lcom/google/android/talk/videochat/AudioFocusManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/AudioFocusManager;->requestAudioFocus(II)V

    goto :goto_0

    .line 89
    :pswitch_3
    iput-object p1, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mAudioFocusManager:Lcom/google/android/talk/videochat/AudioFocusManager;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/talk/videochat/AudioFocusManager;->requestAudioFocus(II)V

    goto :goto_0

    .line 110
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/talk/GlobalCallStateMonitor;->onCallStarted()V

    goto :goto_0

    .line 114
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor;->mAudioFocusManager:Lcom/google/android/talk/videochat/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/AudioFocusManager;->abandonAudioFocus()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/talk/GlobalCallStateMonitor;->onCallEnded()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
