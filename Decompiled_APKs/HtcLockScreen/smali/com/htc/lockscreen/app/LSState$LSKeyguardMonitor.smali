.class Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
.super Ljava/lang/Object;
.source "LSState.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LSKeyguardMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;-><init>(Lcom/htc/lockscreen/app/LSState;)V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 650
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 729
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "show"
    .parameter "plugged"
    .parameter "level"

    .prologue
    .line 655
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I
    invoke-static {v0, p1}, Lcom/htc/lockscreen/app/LSState;->access$1902(Lcom/htc/lockscreen/app/LSState;I)I

    .line 672
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    #setter for: Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/LSState;->access$1802(Lcom/htc/lockscreen/app/LSState;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    .line 673
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/LSState;->access$900(Lcom/htc/lockscreen/app/LSState;)V

    .line 674
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updatePlmnAndSpn(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v0, p2, p3}, Lcom/htc/lockscreen/app/LSState;->access$2200(Lcom/htc/lockscreen/app/LSState;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->sendNetworkChanged()V

    .line 676
    const-string v0, "LSState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshCarrierInfo serviceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plmn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v2}, Lcom/htc/lockscreen/app/LSState;->access$1800(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 660
    return-void
.end method

.method public onSimExtraStateChanged(ZI)V
    .locals 3
    .parameter "provisioned"
    .parameter "icc_type"

    .prologue
    .line 698
    const-string v0, "LSState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimExtraStateChanged provisioned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icc_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mUiccProvision:Z
    invoke-static {v0, p1}, Lcom/htc/lockscreen/app/LSState;->access$2502(Lcom/htc/lockscreen/app/LSState;Z)Z

    .line 700
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mUiccState:I
    invoke-static {v0, p2}, Lcom/htc/lockscreen/app/LSState;->access$2602(Lcom/htc/lockscreen/app/LSState;I)I

    .line 701
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/LSState;->access$900(Lcom/htc/lockscreen/app/LSState;)V

    .line 702
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->sendNetworkChanged()V

    .line 703
    return-void
.end method

.method public onSimExtraStateChanged(ZILjava/lang/String;)V
    .locals 3
    .parameter "provisioned"
    .parameter "icc_type"
    .parameter "operator"

    .prologue
    .line 706
    const-string v0, "LSState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimExtraStateChanged provisioned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icc_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mUiccProvision:Z
    invoke-static {v0, p1}, Lcom/htc/lockscreen/app/LSState;->access$2502(Lcom/htc/lockscreen/app/LSState;Z)Z

    .line 710
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mUiccState:I
    invoke-static {v0, p2}, Lcom/htc/lockscreen/app/LSState;->access$2602(Lcom/htc/lockscreen/app/LSState;I)I

    .line 711
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mUICCOperator:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/htc/lockscreen/app/LSState;->access$2702(Lcom/htc/lockscreen/app/LSState;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/LSState;->access$900(Lcom/htc/lockscreen/app/LSState;)V

    .line 713
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->sendNetworkChanged()V

    .line 714
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 684
    const-string v0, "LSState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v1

    #setter for: Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/LSState;->access$1902(Lcom/htc/lockscreen/app/LSState;I)I

    .line 686
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v0, p1}, Lcom/htc/lockscreen/app/LSState;->access$1802(Lcom/htc/lockscreen/app/LSState;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    .line 687
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/LSState;->access$900(Lcom/htc/lockscreen/app/LSState;)V

    .line 688
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    #calls: Lcom/htc/lockscreen/app/LSState;->updatePlmnAndSpn(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/htc/lockscreen/app/LSState;->access$2200(Lcom/htc/lockscreen/app/LSState;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->sendNetworkChanged()V

    .line 690
    const-string v0, "LSState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworkServiceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I
    invoke-static {v2}, Lcom/htc/lockscreen/app/LSState;->access$1900(Lcom/htc/lockscreen/app/LSState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method
