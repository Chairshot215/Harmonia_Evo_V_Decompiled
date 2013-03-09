.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

.field private mBareJid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 471
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 473
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 477
    return-void
.end method

.method public getActivity()Lcom/google/android/talk/videochat/VideoChatActivity;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    return-object v0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public declared-synchronized newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "fullJid"
    .parameter "body"
    .parameter "notify"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$900(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_0
    monitor-exit p0

    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newMessageSent(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 544
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 545
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_0
    monitor-exit p0

    return-void

    .line 545
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 542
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupChatRoom"
    .parameter "nickname"

    .prologue
    .line 554
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupChatRoom"
    .parameter "nickname"

    .prologue
    .line 556
    return-void
.end method

.method public removeAssociation(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-ne v0, p1, :cond_0

    .line 500
    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 501
    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    .line 503
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 484
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 475
    return-void
.end method
