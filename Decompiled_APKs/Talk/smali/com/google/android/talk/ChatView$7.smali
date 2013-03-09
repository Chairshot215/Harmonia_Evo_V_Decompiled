.class Lcom/google/android/talk/ChatView$7;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
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
    .line 3021
    iput-object p1, p0, Lcom/google/android/talk/ChatView$7;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/google/android/talk/ChatView$7;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    if-eq v0, v1, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/google/android/talk/ChatView$7;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V

    .line 3029
    :goto_0
    return-void

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$7;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$7;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v2, 0x0

    const v3, 0x7f1000c5

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    goto :goto_0
.end method
