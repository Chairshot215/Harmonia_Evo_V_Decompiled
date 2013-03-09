.class public Lcom/google/android/talk/videochat/VideoChatOutputReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoChatOutputReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleCallEnded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    const-string v0, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private handleCallInProgress(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->postToProcessingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method private handleIncomingCallIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const-string v0, "com.google.android.talk.POST_NOTIFICATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-class v0, Lcom/google/android/talk/videochat/NotificationReceiver;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method private handleOutgoingStanzaIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, stanzaType:I
    const-string v3, "local_bare_jid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, localBareJid:Ljava/lang/String;
    const-string v3, "stanza"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, stanza:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    const-string v3, "Talk:OutgoingStanzaReceiver"

    const-string v4, "Intent must contain localBareJid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 50
    :cond_0
    if-nez v1, :cond_1

    .line 51
    const-string v3, "Talk:OutgoingStanzaReceiver"

    const-string v4, "Intent must contain payload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 65
    const-string v3, "Talk:OutgoingStanzaReceiver"

    const-string v4, "Intent must specify a valid stanza type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->sendCallSignalingMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/talk/videochat/JingleStanzaSender;->sendCallPerfStatsStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postToProcessingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    const-class v0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.videochat.ACTION_OUTGOING_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->handleOutgoingStanzaIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v1, "com.google.android.videochat.ACTION_INCOMING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->handleIncomingCallIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 28
    :cond_2
    const-string v1, "com.google.android.videochat.ACTION_MISSED_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->postToProcessingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 30
    :cond_3
    const-string v1, "com.google.android.videochat.ACTION_END_CAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->postToProcessingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    :cond_4
    const-string v1, "com.google.android.videochat.ACTION_CALL_IN_PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->handleCallInProgress(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    :cond_5
    const-string v1, "com.google.android.videochat.ACTION_CALL_ENDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;->handleCallEnded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
