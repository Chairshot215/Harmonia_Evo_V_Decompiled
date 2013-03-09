.class Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMobileNetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/HtcMobileNetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/HtcMobileNetworkEngine;


# direct methods
.method private constructor <init>(Landroid/net/HtcMobileNetworkEngine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/HtcMobileNetworkEngine;Landroid/net/HtcMobileNetworkEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;-><init>(Landroid/net/HtcMobileNetworkEngine;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->isInitialStickyBroadcast()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    #calls: Landroid/net/HtcMobileNetworkEngine;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    invoke-static {p2}, Landroid/net/HtcMobileNetworkEngine;->access$100(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "networkUnvailable"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$300(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    #setter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->access$202(Landroid/net/HtcMobileNetworkEngine;Z)Z

    const-string v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    invoke-static {v5, v3, v2}, Landroid/net/HtcMobileNetworkEngine;->access$400(Landroid/net/HtcMobileNetworkEngine;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$000(Landroid/net/HtcMobileNetworkEngine;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v5, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$200(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v5

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$300(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$300(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    #setter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->access$202(Landroid/net/HtcMobileNetworkEngine;Z)Z

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$200(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->onCheckStateChange(Z)V

    :cond_4
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$500(Landroid/net/HtcMobileNetworkEngine;)I

    goto :goto_0

    :cond_5
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$500(Landroid/net/HtcMobileNetworkEngine;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$600(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    const/4 v6, 0x1

    #setter for: Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z
    invoke-static {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->access$602(Landroid/net/HtcMobileNetworkEngine;Z)Z

    goto :goto_0
.end method
