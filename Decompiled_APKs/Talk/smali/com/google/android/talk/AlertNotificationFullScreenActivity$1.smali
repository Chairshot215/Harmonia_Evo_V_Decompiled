.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlertNotificationFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.talk.CANCEL_POPUP_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-nez v1, :cond_1

    .line 123
    :cond_0
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AlertNotificationFullScreen] received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dismiss dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    #calls: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialogAndFinish()V
    invoke-static {v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$000(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 127
    :cond_1
    return-void
.end method
