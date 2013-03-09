.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->bindToVideoChatServiceAndShowDialog()V
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
    .line 165
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-virtual {p1}, Lcom/google/android/videochat/VideoChatService$HardBinder;->getCallSession()Lcom/google/android/videochat/CallSession;

    move-result-object v1

    #setter for: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v0, v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$102(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/videochat/CallSession;)Lcom/google/android/videochat/CallSession;

    .line 169
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    #calls: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$200(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 170
    return-void
.end method
