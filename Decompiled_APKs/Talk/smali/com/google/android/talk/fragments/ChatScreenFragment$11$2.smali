.class Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$11;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

.field final synthetic val$callState:Lcom/google/android/videochat/CallState;

.field final synthetic val$callbackParam:Ljava/lang/Object;

.field final synthetic val$remoteBareJid:Ljava/lang/String;

.field final synthetic val$requestReply:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$11;Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$remoteBareJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$callState:Lcom/google/android/videochat/CallState;

    iput-boolean p4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$requestReply:Z

    iput-object p5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$callbackParam:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1616
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1617
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$remoteBareJid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$callState:Lcom/google/android/videochat/CallState;

    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$requestReply:Z

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$callbackParam:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 1621
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1622
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;->val$callState:Lcom/google/android/videochat/CallState;

    iget-object v2, v2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    #setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3102(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/util/Set;)Ljava/util/Set;

    .line 1623
    return-void
.end method
