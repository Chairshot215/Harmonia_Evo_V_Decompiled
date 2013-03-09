.class Lcom/htc/WifiRouter/AdvancedSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/AdvancedSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I
    invoke-static {v4, v5}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$002(Lcom/htc/WifiRouter/AdvancedSettingFragment;I)I

    .line 50
    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I
    invoke-static {v4}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$000(Lcom/htc/WifiRouter/AdvancedSettingFragment;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I
    invoke-static {v4}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$000(Lcom/htc/WifiRouter/AdvancedSettingFragment;)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    :cond_0
    move v1, v3

    .line 52
    .local v1, isWifiApEnable:Z
    :goto_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;
    invoke-static {v4}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$100(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Lcom/htc/preference/HtcListPreference;

    move-result-object v5

    if-nez v1, :cond_4

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v4}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$200(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v4}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$200(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v4

    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 56
    .end local v1           #isWifiApEnable:Z
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 50
    goto :goto_0

    .restart local v1       #isWifiApEnable:Z
    :cond_4
    move v4, v2

    .line 52
    goto :goto_1

    :cond_5
    move v3, v2

    .line 54
    goto :goto_2
.end method
