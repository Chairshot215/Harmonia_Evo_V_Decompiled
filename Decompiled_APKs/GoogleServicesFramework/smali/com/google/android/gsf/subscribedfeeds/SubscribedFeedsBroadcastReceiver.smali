.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SubscribedFeedsBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsBroadcastReceiver;->setResultCode(I)V

    .line 35
    :cond_0
    const-class v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsIntentService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method
