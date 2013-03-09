.class Lcom/android/phone/NetworkSetting$5;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->onCreate(Landroid/os/Bundle;)V
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
    .line 611
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 614
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, state:Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isNetworkSelectionEnabled()Z

    move-result v0

    .line 619
    .local v0, enabled:Z
    const-string v2, "NetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTENT_VALUE_SIM_LOADED  enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 622
    if-eqz v0, :cond_2

    .line 623
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 629
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 630
    if-eqz v0, :cond_3

    .line 631
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 638
    .end local v0           #enabled:Z
    .end local v1           #state:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 625
    .restart local v0       #enabled:Z
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSearchButton:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 633
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mAutoSelect:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method
