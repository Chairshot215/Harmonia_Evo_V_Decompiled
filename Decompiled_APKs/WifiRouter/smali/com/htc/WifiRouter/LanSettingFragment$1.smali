.class Lcom/htc/WifiRouter/LanSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LanSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/LanSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/LanSettingFragment;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/LanSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/WifiRouter/LanSettingFragment$1;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$1;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I
    invoke-static {v1, v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$002(Lcom/htc/WifiRouter/LanSettingFragment;I)I

    .line 73
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$1;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I
    invoke-static {v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$000(Lcom/htc/WifiRouter/LanSettingFragment;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$1;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiApState:I
    invoke-static {v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$000(Lcom/htc/WifiRouter/LanSettingFragment;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$1;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    const/4 v2, 0x0

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->setLanSettingEnabled(Z)V
    invoke-static {v1, v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$100(Lcom/htc/WifiRouter/LanSettingFragment;Z)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$1;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    const/4 v2, 0x1

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->setLanSettingEnabled(Z)V
    invoke-static {v1, v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$100(Lcom/htc/WifiRouter/LanSettingFragment;Z)V

    goto :goto_0
.end method
