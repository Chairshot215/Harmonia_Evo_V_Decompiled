.class Lcom/android/systemui/statusbar/preference/Wifi$2;
.super Ljava/lang/Object;
.source "Wifi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Wifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Wifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Wifi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    #getter for: Lcom/android/systemui/statusbar/preference/Wifi;->mWifiOffload:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/Wifi;->access$300(Lcom/android/systemui/statusbar/preference/Wifi;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, 0x1

    :goto_1
    const-string v4, "WifiStatusBarPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set wifi enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v5, v5, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    #calls: Lcom/android/systemui/statusbar/preference/Wifi;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/preference/Wifi;->access$400(Lcom/android/systemui/statusbar/preference/Wifi;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    #getter for: Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-eqz v0, :cond_4

    const/16 v4, 0xc

    if-eq v2, v4, :cond_3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    #getter for: Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    #getter for: Lcom/android/systemui/statusbar/preference/Wifi;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/Wifi;->access$200(Lcom/android/systemui/statusbar/preference/Wifi;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/preference/Wifi;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f080081

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Wifi;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Wifi$2;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/Wifi;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Wifi;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
