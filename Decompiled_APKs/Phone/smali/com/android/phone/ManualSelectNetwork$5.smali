.class Lcom/android/phone/ManualSelectNetwork$5;
.super Landroid/telephony/PhoneStateListener;
.source "ManualSelectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManualSelectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManualSelectNetwork;


# direct methods
.method constructor <init>(Lcom/android/phone/ManualSelectNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork$5;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 290
    const-string v0, "phone"

    const-string v1, "Network state changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "phone"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$5;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/ManualSelectNetwork;->updateNetworkList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ManualSelectNetwork;->access$900(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$5;->this$0:Lcom/android/phone/ManualSelectNetwork;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/ManualSelectNetwork;->mSelectedNetwork:Lcom/android/internal/telephony/OperatorInfo;
    invoke-static {v0, v1}, Lcom/android/phone/ManualSelectNetwork;->access$1002(Lcom/android/phone/ManualSelectNetwork;Lcom/android/internal/telephony/OperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;

    .line 297
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork$5;->this$0:Lcom/android/phone/ManualSelectNetwork;

    const-string v1, ""

    #calls: Lcom/android/phone/ManualSelectNetwork;->updateNetworkList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ManualSelectNetwork;->access$900(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/String;)V

    goto :goto_0
.end method
