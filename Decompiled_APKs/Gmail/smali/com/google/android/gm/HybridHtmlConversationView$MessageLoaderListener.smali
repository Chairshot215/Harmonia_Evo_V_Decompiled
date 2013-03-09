.class Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/HybridHtmlConversationView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2053
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2056
    const-string v2, "conversationId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2057
    .local v0, conversationId:J
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v2, v2, Lcom/google/android/gm/HybridHtmlConversationView;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v4, v4, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorLoader(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/android/gm/provider/MessageCursorLoader;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2062
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$MessageCursor;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v0

    .line 2063
    .local v0, messageCursorCount:I
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v1

    .line 2065
    .local v1, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    sget-object v2, Lcom/google/android/gm/HybridHtmlConversationView$6;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2083
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2600(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/comm/NetworkProgressMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2084
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2600(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/comm/NetworkProgressMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/comm/NetworkProgressMonitor;->done()V

    .line 2085
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;
    invoke-static {v2, v3}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2602(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/comm/NetworkProgressMonitor;)Lcom/google/android/gm/comm/NetworkProgressMonitor;

    .line 2089
    :cond_0
    if-nez v0, :cond_4

    .line 2099
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1300(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1300(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v2

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->isSingleDraftConversationCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Z
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2700(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2100
    :cond_1
    const-string v2, "Gmail"

    const-string v3, "No messages found for conversation: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v6, v6, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v6}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2102
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, v3, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2124
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 2069
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2600(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/comm/NetworkProgressMonitor;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2070
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    new-instance v3, Lcom/google/android/gm/comm/NetworkProgressMonitor;

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridHtmlConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gm/comm/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    #setter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;
    invoke-static {v2, v3}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2602(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/comm/NetworkProgressMonitor;)Lcom/google/android/gm/comm/NetworkProgressMonitor;

    .line 2073
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2600(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/comm/NetworkProgressMonitor;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/comm/NetworkProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2062
    .end local v0           #messageCursorCount:I
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2076
    .restart local v0       #messageCursorCount:I
    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, v3, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V

    goto/16 :goto_0

    .line 2107
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 2108
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v4, v4, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 2109
    const-string v2, "Gmail"

    const-string v3, "Load completed in (this=%s) was for conversation %d but expecting conversation %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v6, v6, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v6}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2113
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, v3, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/HybridHtmlConversationView;->notifyConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V

    goto :goto_1

    .line 2119
    :cond_5
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->hasRenderedContent()Z
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2800(Lcom/google/android/gm/HybridHtmlConversationView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2120
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->updateConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    invoke-static {v2, p2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2900(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    goto/16 :goto_1

    .line 2122
    :cond_6
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->showConversationInitial(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    invoke-static {v2, p2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$3000(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2065
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2053
    check-cast p2, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/HybridHtmlConversationView$MessageLoaderListener;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2129
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$MessageCursor;>;"
    return-void
.end method
