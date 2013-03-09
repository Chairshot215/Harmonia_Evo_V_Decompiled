.class final Lcom/android/phone/PhoneApp$IncorrectTimerCallback;
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
    name = "IncorrectTimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 5979
    iput-object p1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5979
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 5981
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5982
    const-string v1, "PhoneApp"

    const-string v2, "..time out..(IncorrectTimerCallback)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5986
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5987
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManualModeEnabled (IncorrectTimerCallback)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5993
    .local v0, settingsNetworkMode:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5994
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settingsNetworkMode (IncorrectTimerCallback)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6000
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_4

    if-eq v0, v5, :cond_4

    .line 6006
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->isFromTimer:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2102(Lcom/android/phone/PhoneApp;Z)Z

    .line 6007
    iget-object v1, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp$IncorrectTimerCallback;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 6008
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6009
    const-string v1, "PhoneApp"

    const-string v2, "start query network list (IncorrectTimerCallback)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6020
    :cond_3
    :goto_0
    return-void

    .line 6014
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6015
    const-string v1, "PhoneApp"

    const-string v2, "already full service, don\'t issue +COPS? again (IncorrectTimerCallback)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6010
    :catch_0
    move-exception v1

    goto :goto_0
.end method
