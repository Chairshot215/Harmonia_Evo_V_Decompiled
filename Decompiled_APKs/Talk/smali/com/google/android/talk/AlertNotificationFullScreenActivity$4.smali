.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V
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
    .line 233
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    #calls: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->declineCall(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$400(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V

    .line 239
    :cond_0
    const-string v0, "talk"

    const-string v1, "[AlertNotificationFullScreen] onCancel: dismiss"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    #calls: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissNotificationAndFinish()V
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$500(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 241
    return-void
.end method
