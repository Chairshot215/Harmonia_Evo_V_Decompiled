.class Lcom/google/android/talk/ChatView$19;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->startVideoChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 3202
    iput-object p1, p0, Lcom/google/android/talk/ChatView$19;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/google/android/talk/ChatView$19;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 3206
    iget-object v0, p0, Lcom/google/android/talk/ChatView$19;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$19;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mAccountId:J
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$7000(Lcom/google/android/talk/ChatView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/talk/ChatView$19;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getBestAvailableJid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;)V

    .line 3208
    return-void
.end method
