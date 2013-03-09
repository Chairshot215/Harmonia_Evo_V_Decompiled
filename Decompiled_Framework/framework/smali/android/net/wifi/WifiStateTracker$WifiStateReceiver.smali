.class Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "receive WIFI_P2P_CONNECTION_CHANGED_ACTION "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "receive NETWORK_STATE_CHANGED_ACTION "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieve from WifiStateMachine. mNetworkInfo= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "mLinkProperties is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_3
    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLinkProperties = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send to ConnectivityService. mNetworkInfo= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "receive LINK_CONFIGURATION_CHANGED_ACTION "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.CW_STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W][cW-fake wifi]Recieve from WifiStateMachine. mNetworkInfo= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    :cond_8
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W][cW-fake wifi] the fake wifi status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W][cW-fake wifi]Send to ConnectivityService. mNetworkInfo= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
