.class Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1168
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J
    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2200(Lcom/google/android/talk/fragments/ChatScreenFragment;)J

    move-result-wide v2

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    goto :goto_0
.end method
