.class Lcom/google/android/videochat/CallManager$2;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/CallManager;->handleIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallManager;

.field final synthetic val$existingCall:Lcom/google/android/videochat/CallState;

.field final synthetic val$isSecure:Z

.field final synthetic val$isVideo:Z

.field final synthetic val$localBareJid:Ljava/lang/String;

.field final synthetic val$remoteJid:Ljava/lang/String;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    iput-object p2, p0, Lcom/google/android/videochat/CallManager$2;->val$sessionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/videochat/CallManager$2;->val$remoteJid:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/videochat/CallManager$2;->val$localBareJid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/videochat/CallManager$2;->val$isVideo:Z

    iput-boolean p6, p0, Lcom/google/android/videochat/CallManager$2;->val$isSecure:Z

    iput-object p7, p0, Lcom/google/android/videochat/CallManager$2;->val$existingCall:Lcom/google/android/videochat/CallState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager$2;->val$sessionId:Ljava/lang/String;

    #calls: Lcom/google/android/videochat/CallManager;->isPendingInitiate(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/videochat/CallManager;->access$300(Lcom/google/android/videochat/CallManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$400(Lcom/google/android/videochat/CallManager;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 806
    const-string v0, "vclib:CallManager"

    const-string v1, "Incoming call no longer waiting for accept. Give up trying to connect to wifi."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$500(Lcom/google/android/videochat/CallManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    .line 813
    const-string v0, "vclib:CallManager"

    const-string v1, "Wi-Fi doesn\'t have a connection. Retrying..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J
    invoke-static {v2}, Lcom/google/android/videochat/CallManager;->access$600(Lcom/google/android/videochat/CallManager;)J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/videochat/CallManager;->access$700()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$900(Lcom/google/android/videochat/CallManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/android/videochat/CallManager;->access$800()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #getter for: Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$400(Lcom/google/android/videochat/CallManager;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 822
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->clearPendingInitiateFlag()V
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$1000(Lcom/google/android/videochat/CallManager;)V

    .line 823
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager$2;->val$sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/videochat/CallManager$2;->val$remoteJid:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/videochat/CallManager$2;->val$localBareJid:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/videochat/CallManager$2;->val$isVideo:Z

    const/4 v5, 0x1

    #calls: Lcom/google/android/videochat/CallManager;->declineDisallowedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/videochat/CallManager;->access$1100(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 825
    const-string v0, "vclib:CallManager"

    const-string v1, "Couldn\'t get wifi connection. Declining new call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    const-wide/16 v1, -0x1

    #setter for: Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/videochat/CallManager;->access$602(Lcom/google/android/videochat/CallManager;J)J

    .line 831
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->clearPendingInitiateFlag()V
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$1000(Lcom/google/android/videochat/CallManager;)V

    .line 832
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$2;->this$0:Lcom/google/android/videochat/CallManager;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager$2;->val$sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/videochat/CallManager$2;->val$remoteJid:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/videochat/CallManager$2;->val$localBareJid:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/videochat/CallManager$2;->val$isVideo:Z

    iget-boolean v5, p0, Lcom/google/android/videochat/CallManager$2;->val$isSecure:Z

    iget-object v6, p0, Lcom/google/android/videochat/CallManager$2;->val$existingCall:Lcom/google/android/videochat/CallState;

    #calls: Lcom/google/android/videochat/CallManager;->handleApprovedIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/videochat/CallManager;->access$1200(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V

    goto :goto_0
.end method
