.class Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;
.super Lcom/google/android/videochat/CallStateClient;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalCallStateClient"
.end annotation


# instance fields
.field public mCallStateClientListening:Z

.field public mCallStateClientLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 568
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallStateClient;-><init>(Landroid/content/Context;)V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientListening:Z

    .line 565
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientLock:Ljava/lang/Object;

    .line 569
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 3
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-boolean v1, p2, Lcom/google/android/videochat/CallState;->mute:Z

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mIsMuted:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1802(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 582
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-boolean v1, p2, Lcom/google/android/videochat/CallState;->secure:Z

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureState:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$102(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 583
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v1, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1902(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/CallState$AudioDeviceState;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 584
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v1, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mAvailableAudioDevices:Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2002(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/util/Set;)Ljava/util/Set;

    .line 585
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->updateAudioUi()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2100(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 587
    iget v0, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 589
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x2

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    goto :goto_0

    .line 594
    :pswitch_3
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accepted call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 612
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v1, "call ended"

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->startTextChatActivity()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2400(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 616
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2500(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto/16 :goto_0

    .line 619
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x3

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 620
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/videochat/CallState;->secure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
