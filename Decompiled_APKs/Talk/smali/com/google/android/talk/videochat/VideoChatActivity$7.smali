.class Lcom/google/android/talk/videochat/VideoChatActivity$7;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 5

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v2, "glVideoView complete()"

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mBindRendererLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4600(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1579
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/GlView;->getRemoteRenderer()Lcom/google/android/videochat/RemoteRenderer;

    move-result-object v0

    .line 1580
    .local v0, newRenderer:Lcom/google/android/videochat/RemoteRenderer;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4700(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/RemoteRenderer;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 1581
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4700(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/RemoteRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1582
    const-string v1, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VideoChatActivity] overriding existing remote renderer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;
    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4700(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/RemoteRenderer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/talk/TalkApp;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;
    invoke-static {v1, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4702(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/RemoteRenderer;)Lcom/google/android/videochat/RemoteRenderer;

    .line 1587
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mIsRendererBound:Z
    invoke-static {v1, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4802(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 1589
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->bindRendererIfReady()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1591
    return-void

    .line 1589
    .end local v0           #newRenderer:Lcom/google/android/videochat/RemoteRenderer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
