.class Lcom/google/android/talk/ChatView$ChatListener$4;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$ChatListener;->participantLeft(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView$ChatListener;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$room:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2921
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->val$room:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->val$nickname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    if-nez v0, :cond_1

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->val$room:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.participantLeft: nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->val$nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2929
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener$4;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v1, v1, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->update(Landroid/view/View;)V

    goto :goto_0
.end method
