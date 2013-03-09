.class Lcom/android/phone/Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.setprefernetwork.done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 574
    .local v0, settingsNetworkMode:I
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferNetworkDoneReceiver: settingsNetworkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 585
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    iget-object v1, v1, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    iget-object v1, v1, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    iget-object v2, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    iget-object v2, v2, Lcom/android/phone/Settings;->mHtcGsmRoamingPref:Lcom/android/phone/HtcGsmRoamingPref;

    invoke-virtual {v2}, Lcom/android/phone/HtcGsmRoamingPref;->bEnableGSMBotton()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcGsmRoamingPref;->setEnabled(Z)V

    .line 591
    .end local v0           #settingsNetworkMode:I
    :cond_1
    return-void

    .line 580
    .restart local v0       #settingsNetworkMode:I
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->carrierSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method
