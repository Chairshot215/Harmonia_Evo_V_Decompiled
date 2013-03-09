.class Lcom/android/phone/NetworkSetting$4;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "phone"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NetworkSetting;->updateOperatorList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, ""

    #calls: Lcom/android/phone/NetworkSetting;->updateOperatorList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    goto :goto_0
.end method
