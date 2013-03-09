.class public Lcom/google/android/talk/videochat/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/NotificationReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "com.google.android.talk.POST_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string v0, "talk"

    const-string v1, "received com.google.android.talk.POST_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need appropriate intent extras for intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v1, "remote_jid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    const-string v1, "local_bare_jid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    const-string v1, "is_video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 69
    invoke-static {p1}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->getNotifier(Landroid/content/Context;)Lcom/google/android/talk/videochat/IncomingCallNotifier;

    move-result-object v4

    .line 75
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/talk/videochat/NotificationReceiver$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/NotificationReceiver$1;-><init>(Lcom/google/android/talk/videochat/NotificationReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/talk/videochat/IncomingCallNotifier;Ljava/lang/String;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const-string v0, "talk"

    const-string v1, "received com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->getNotifier(Landroid/content/Context;)Lcom/google/android/talk/videochat/IncomingCallNotifier;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/talk/videochat/NotificationReceiver$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/talk/videochat/NotificationReceiver$2;-><init>(Lcom/google/android/talk/videochat/NotificationReceiver;Lcom/google/android/talk/videochat/IncomingCallNotifier;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 94
    :cond_3
    const-string v1, "com.google.android.talk.RECEIVE_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-class v0, Lcom/google/android/talk/AlertNotificationActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    const/high16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
