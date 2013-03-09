.class Lcom/google/android/talk/fragments/BuddyListFragment$12;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->endActiveVideoOrVoiceChat(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

.field final synthetic val$bareJid:Ljava/lang/String;

.field final synthetic val$onEndedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12;->val$bareJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12;->val$onEndedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 1776
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoChatService$HardBinder;->getCallSession()Lcom/google/android/videochat/CallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12;->val$bareJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallSession;->terminateCall(Ljava/lang/String;)Z

    .line 1777
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12;->val$onEndedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1778
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$12;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$1000(Lcom/google/android/talk/fragments/BuddyListFragment;)Lcom/google/android/videochat/VideoChatServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatServiceBinder;->unbind()V

    .line 1779
    return-void
.end method
