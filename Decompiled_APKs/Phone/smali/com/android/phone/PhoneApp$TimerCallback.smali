.class final Lcom/android/phone/PhoneApp$TimerCallback;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 5940
    iput-object p1, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5940
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$TimerCallback;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 5942
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5943
    const-string v2, "PhoneApp"

    const-string v3, "..time out..(TimerCallback)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5944
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->timer:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$6600(Lcom/android/phone/PhoneApp;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 5947
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5948
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkManualModeEnabled (TimerCallback)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5955
    .local v1, settingsNetworkMode:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5956
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settingsNetworkMode (TimerCallback)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    :cond_2
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_3

    if-eq v1, v6, :cond_3

    .line 5965
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$2400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 5966
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->isFromTimer:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2102(Lcom/android/phone/PhoneApp;Z)Z

    .line 5967
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5968
    const-string v2, "PhoneApp"

    const-string v3, "start query network list (TimerCallback)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5976
    .end local v1           #settingsNetworkMode:I
    :cond_3
    :goto_0
    return-void

    .line 5972
    :cond_4
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->timer:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$6600(Lcom/android/phone/PhoneApp;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5973
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5974
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneApp$TimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 5969
    .end local v0           #msg:Landroid/os/Message;
    .restart local v1       #settingsNetworkMode:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method
