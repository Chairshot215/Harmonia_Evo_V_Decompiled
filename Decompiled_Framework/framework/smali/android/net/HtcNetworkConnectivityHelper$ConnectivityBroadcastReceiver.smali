.class Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcNetworkConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/HtcNetworkConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/HtcNetworkConnectivityHelper;


# direct methods
.method private constructor <init>(Landroid/net/HtcNetworkConnectivityHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;-><init>(Landroid/net/HtcNetworkConnectivityHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #calls: Landroid/net/HtcNetworkConnectivityHelper;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v6, p2}, Landroid/net/HtcNetworkConnectivityHelper;->access$000(Landroid/net/HtcNetworkConnectivityHelper;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "apn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "HtcNetworkConnectivityHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #getter for: Landroid/net/HtcNetworkConnectivityHelper;->mApnType:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/HtcNetworkConnectivityHelper;->access$100(Landroid/net/HtcNetworkConnectivityHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " Received "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " broadcast - state = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", oldstate = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #getter for: Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v8}, Landroid/net/HtcNetworkConnectivityHelper;->access$200(Landroid/net/HtcNetworkConnectivityHelper;)Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", reason = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v4, :cond_b

    const-string v6, "(unspecified)"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", apnTypeList = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #calls: Landroid/net/HtcNetworkConnectivityHelper;->isApnTypeIncluded(Ljava/lang/String;)Z
    invoke-static {v6, v2}, Landroid/net/HtcNetworkConnectivityHelper;->access$300(Landroid/net/HtcNetworkConnectivityHelper;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #getter for: Landroid/net/HtcNetworkConnectivityHelper;->mRequestFeature:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/HtcNetworkConnectivityHelper;->access$400(Landroid/net/HtcNetworkConnectivityHelper;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz v4, :cond_c

    const-string v6, "apnMissing"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "apnFailed"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_a

    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    sget-object v7, Landroid/net/HtcNetworkConnectivityHelper$State;->CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    #setter for: Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v6, v7}, Landroid/net/HtcNetworkConnectivityHelper;->access$502(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$State;)Landroid/net/HtcNetworkConnectivityHelper$State;

    :cond_3
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    sget-object v7, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    #setter for: Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v6, v7}, Landroid/net/HtcNetworkConnectivityHelper;->access$502(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$State;)Landroid/net/HtcNetworkConnectivityHelper$State;

    :cond_4
    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #setter for: Landroid/net/HtcNetworkConnectivityHelper;->mReason:Ljava/lang/String;
    invoke-static {v6, v4}, Landroid/net/HtcNetworkConnectivityHelper;->access$602(Landroid/net/HtcNetworkConnectivityHelper;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    iget-object v6, v6, Landroid/net/HtcNetworkConnectivityHelper;->gw0:Ljava/lang/String;

    const-string/jumbo v7, "net.rmnet0.gw"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v3, 0x1

    :cond_5
    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    iget-object v6, v6, Landroid/net/HtcNetworkConnectivityHelper;->gw1:Ljava/lang/String;

    const-string/jumbo v7, "net.rmnet1.gw"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v3, 0x1

    :cond_6
    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    iget-object v6, v6, Landroid/net/HtcNetworkConnectivityHelper;->gw2:Ljava/lang/String;

    const-string/jumbo v7, "net.rmnet2.gw"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v3, 0x1

    :cond_7
    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #getter for: Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v6}, Landroid/net/HtcNetworkConnectivityHelper;->access$500(Landroid/net/HtcNetworkConnectivityHelper;)Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v6

    iget-object v7, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #getter for: Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v7}, Landroid/net/HtcNetworkConnectivityHelper;->access$200(Landroid/net/HtcNetworkConnectivityHelper;)Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v7

    if-ne v6, v7, :cond_8

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    const-string v6, "apnMissing"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "apnFailed"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #calls: Landroid/net/HtcNetworkConnectivityHelper;->notifyhandler()V
    invoke-static {v6}, Landroid/net/HtcNetworkConnectivityHelper;->access$700(Landroid/net/HtcNetworkConnectivityHelper;)V

    :cond_9
    iget-object v6, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    iget-object v7, p0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;->this$0:Landroid/net/HtcNetworkConnectivityHelper;

    #getter for: Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v7}, Landroid/net/HtcNetworkConnectivityHelper;->access$500(Landroid/net/HtcNetworkConnectivityHelper;)Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v7

    #setter for: Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;
    invoke-static {v6, v7}, Landroid/net/HtcNetworkConnectivityHelper;->access$202(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$State;)Landroid/net/HtcNetworkConnectivityHelper$State;

    :cond_a
    :goto_1
    return-void

    :cond_b
    move-object v6, v4

    goto/16 :goto_0

    :cond_c
    const-string v6, "HtcNetworkConnectivityHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DROP wrong apnType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
