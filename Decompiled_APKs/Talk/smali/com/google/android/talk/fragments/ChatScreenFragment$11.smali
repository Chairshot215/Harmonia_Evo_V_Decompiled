.class Lcom/google/android/talk/fragments/ChatScreenFragment$11;
.super Lcom/google/android/videochat/CallStateClient;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallStateClient;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 7
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "requestReply"
    .parameter "callbackParam"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$11$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$11;Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1625
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$11$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$11$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1605
    return-void
.end method
