.class Lcom/google/android/talk/ChatView$ConnectionStateListener$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView$ConnectionStateListener;

.field final synthetic val$cv:Lcom/google/android/talk/ChatView;

.field final synthetic val$error:Lcom/google/android/gtalkservice/ConnectionError;

.field final synthetic val$state:Lcom/google/android/gtalkservice/ConnectionState;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$ConnectionStateListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2433
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->this$0:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    iput-object p3, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    iput-object p4, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2436
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->this$0:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    #getter for: Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;
    invoke-static {v1}, Lcom/google/android/talk/ChatView$ConnectionStateListener;->access$6500(Lcom/google/android/talk/ChatView$ConnectionStateListener;)Lcom/google/android/talk/ChatView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2461
    :goto_0
    return-void

    .line 2441
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    .line 2443
    .local v0, connState:I
    packed-switch v0, :pswitch_data_0

    .line 2456
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 2457
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->updateWarningView()V
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)V

    .line 2458
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->updateState()V
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3300(Lcom/google/android/talk/ChatView;)V

    goto :goto_0

    .line 2445
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 2447
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    const-string v2, "Session terminated, invalidate IM sessions"

    #calls: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2448
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->removeInvitationListener()V
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$6600(Lcom/google/android/talk/ChatView;)V

    .line 2449
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->invalidateImSession()V

    .line 2450
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;->val$cv:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    goto :goto_1

    .line 2443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
