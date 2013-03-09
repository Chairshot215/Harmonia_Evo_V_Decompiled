.class Lcom/google/android/talk/ChatView$ChatListener$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$ChatListener;->willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView$ChatListener;

.field final synthetic val$groupChatRoom:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2848
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->val$groupChatRoom:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    if-nez v0, :cond_0

    .line 2855
    :goto_0
    return-void

    .line 2854
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$0:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v1, v1, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->val$groupChatRoom:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->willConvertToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0
.end method
