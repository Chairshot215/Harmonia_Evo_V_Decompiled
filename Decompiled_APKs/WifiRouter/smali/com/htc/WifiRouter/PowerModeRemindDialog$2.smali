.class Lcom/htc/WifiRouter/PowerModeRemindDialog$2;
.super Ljava/lang/Object;
.source "PowerModeRemindDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/PowerModeRemindDialog;->showPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/PowerModeRemindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    #getter for: Lcom/htc/WifiRouter/PowerModeRemindDialog;->mRemindCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$100(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_power_mode_remind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    #getter for: Lcom/htc/WifiRouter/PowerModeRemindDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$300(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    #getter for: Lcom/htc/WifiRouter/PowerModeRemindDialog;->mSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v1}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$200(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Lcom/htc/widget/HtcSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setSleepPolicy(I)V

    .line 101
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    #getter for: Lcom/htc/WifiRouter/PowerModeRemindDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$400(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    #getter for: Lcom/htc/WifiRouter/PowerModeRemindDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$300(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 102
    invoke-static {}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerModeRemindDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set power mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    #getter for: Lcom/htc/WifiRouter/PowerModeRemindDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$300(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSleepPolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->finish()V

    .line 106
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_power_mode_remind"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
