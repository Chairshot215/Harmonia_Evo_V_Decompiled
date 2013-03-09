.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CDMA"

    const-string v5, "Received APP_REQUEST_REFRESH_PHONE_INFO intent,Reload MDN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x34

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v5, "Receive EVENT_OTA_PROVISION_STATUS_CHANGE and Send Request EVENT_RIL_CDMA_RS_INFO."

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x40

    if-ne v4, v5, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.omadm.phone.state"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "OTASP"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v5, "Send intent:com.htc.omadm.phone.state"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->resetMDNvoiceMailNumber()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ICC_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "POVISIONED"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", prov="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-nez v2, :cond_4

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Z)Z

    goto :goto_0

    :cond_4
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Z)Z

    goto :goto_0
.end method
