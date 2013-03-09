.class public Lcom/android/phone/OtaCompleteRebootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaCompleteRebootReceiver.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.OTA_COMPLETE_REBOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 41
    new-instance v0, Lcom/android/phone/OtaCompleteRebootActivity;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/OtaCompleteRebootActivity;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, ocra:Lcom/android/phone/OtaCompleteRebootActivity;
    invoke-virtual {v0}, Lcom/android/phone/OtaCompleteRebootActivity;->show()V

    .line 46
    .end local v0           #ocra:Lcom/android/phone/OtaCompleteRebootActivity;
    :cond_0
    return-void
.end method
