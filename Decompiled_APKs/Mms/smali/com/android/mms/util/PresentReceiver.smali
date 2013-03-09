.class public Lcom/android/mms/util/PresentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PresentReceiver.java"


# static fields
.field public static final ACTION_HTC_RECEIVE_NEW_MSG:Ljava/lang/String; = "android.message.RECEIVE_NEW_MESSAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionReceiveNewMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    return-void
.end method

.method public onActionScreenOff(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    return-void
.end method

.method public onActionUserPresent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->mUserPresent:Z

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/PresentReceiver;->onActionScreenOff(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->mUserPresent:Z

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/PresentReceiver;->onActionUserPresent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.message.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
