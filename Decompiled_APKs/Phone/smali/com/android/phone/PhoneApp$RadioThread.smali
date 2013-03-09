.class Lcom/android/phone/PhoneApp$RadioThread;
.super Ljava/lang/Thread;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioThread"
.end annotation


# instance fields
.field mPowerState:Z

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Z)V
    .locals 1
    .parameter
    .parameter "state"

    .prologue
    .line 5442
    iput-object p1, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    .line 5443
    iput-boolean p2, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    .line 5444
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5449
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioThread run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5455
    iget-object v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-boolean v1, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPowerExt(Z)V

    .line 5461
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v1, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    #setter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2702(Lcom/android/phone/PhoneApp;Z)Z

    .line 5464
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    if-nez v0, :cond_0

    .line 5465
    iget-object v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    .line 5469
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5470
    iget-object v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    .line 5472
    :cond_1
    return-void

    .line 5457
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp$RadioThread;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-boolean v1, p0, Lcom/android/phone/PhoneApp$RadioThread;->mPowerState:Z

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method
