.class Lcom/google/android/videochat/CallManager$3;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallManager;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1658
    const/4 v0, 0x0

    .line 1659
    .local v0, remoteJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/videochat/CallManager;->access$1600(Lcom/google/android/videochat/CallManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1660
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/videochat/CallManager;->access$1600(Lcom/google/android/videochat/CallManager;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->terminateCall(Z)Z
    invoke-static {v1, v2}, Lcom/google/android/videochat/CallManager;->access$1700(Lcom/google/android/videochat/CallManager;Z)Z

    .line 1667
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->getMappedLocalJid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/google/android/videochat/CallManager;->access$2000(Lcom/google/android/videochat/CallManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;
    invoke-static {v4}, Lcom/google/android/videochat/CallManager;->access$2100(Lcom/google/android/videochat/CallManager;)Lcom/google/android/videochat/Libjingle;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    #calls: Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/videochat/CallManager;->access$2200(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1674
    :cond_1
    return-void

    .line 1662
    :cond_2
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/videochat/CallManager;->access$1800(Lcom/google/android/videochat/CallManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/videochat/CallManager;->access$1800(Lcom/google/android/videochat/CallManager;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    iget-object v1, p0, Lcom/google/android/videochat/CallManager$3;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z
    invoke-static {v1, v0, v2}, Lcom/google/android/videochat/CallManager;->access$1900(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
