.class Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalServiceBoundCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceBound(Lcom/google/android/videochat/VideoChatService$HardBinder;)V
    .locals 7
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 1754
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5700(Lcom/google/android/talk/videochat/VideoChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1759
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {p1}, Lcom/google/android/videochat/VideoChatService$HardBinder;->getCallSession()Lcom/google/android/videochat/CallSession;

    move-result-object v3

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5802(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/CallSession;)Lcom/google/android/videochat/CallSession;

    .line 1760
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->bindRendererIfReady()V
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$4900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1762
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->registerCallStateListener()V
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1764
    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5600()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v3

    monitor-enter v3

    .line 1765
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5600()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v2, v4}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->setActivity(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1766
    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5600()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->setJid(Ljava/lang/String;)V

    .line 1767
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6000(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1770
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6000(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1771
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;
    invoke-static {v2, v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6002(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1775
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6100(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1776
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6100(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v2

    iget v2, v2, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    if-ne v2, v5, :cond_2

    .line 1777
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6100(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->param:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 1778
    .local v0, backgroundUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received URI from gallery for background: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 1779
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v2

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->startBackgroundReplaceTraining(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3800(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/net/Uri;)V

    .line 1783
    .end local v0           #backgroundUri:Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v2, v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6102(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    goto/16 :goto_0

    .line 1767
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1781
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6100(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v3

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    invoke-static {v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    goto :goto_1

    .line 1785
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;

    move-result-object v2

    const-string v3, "CALL_CURRENT_EFFECT"

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/CallSession;->getCallStorage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    .line 1787
    .local v1, defaultEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    if-nez v1, :cond_5

    .line 1790
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->getDefaultEffect()Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6200(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v1

    .line 1795
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    invoke-static {v2, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    goto/16 :goto_0

    .line 1791
    :cond_5
    iget v2, v1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    if-ne v2, v5, :cond_4

    .line 1793
    const/4 v1, 0x0

    goto :goto_2
.end method
