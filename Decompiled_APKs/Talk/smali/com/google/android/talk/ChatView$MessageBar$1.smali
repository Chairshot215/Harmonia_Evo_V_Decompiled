.class Lcom/google/android/talk/ChatView$MessageBar$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$MessageBar;

.field final synthetic val$audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field final synthetic val$audioDevices:Ljava/util/Set;

.field final synthetic val$forceUpdate:Z

.field final synthetic val$state:Lcom/google/android/talk/ChatView$VideoChatState;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$MessageBar;Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3731
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    iput-object p3, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object p4, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDevices:Ljava/util/Set;

    iput-boolean p5, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$forceUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDevices:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDevices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$forceUpdate:Z

    if-eqz v0, :cond_2

    .line 3740
    :cond_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3741
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBarState: force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$forceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v2, v2, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldBT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v2, v2, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newBT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 3746
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    iput-object v1, v0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3747
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v1, v0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 3748
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$audioDevices:Ljava/util/Set;

    iput-object v1, v0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDevices:Ljava/util/Set;

    .line 3749
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->update()V

    .line 3751
    :cond_2
    return-void
.end method
