.class Lcom/htc/WifiRouter/LanSettingFragment$2;
.super Ljava/lang/Object;
.source "LanSettingFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/LanSettingFragment;->initLayout()V
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
    .line 175
    iput-object p1, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/htc/preference/HtcEditTextPreference;

    .local v0, mPreference:Lcom/htc/preference/HtcEditTextPreference;
    move-object v1, p2

    .line 178
    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->isIpAddress(Ljava/lang/String;)Z
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$200(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-virtual {v4}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090042

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_0
    return v2

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/WifiRouter/LanSettingFragment;->access$300(Lcom/htc/WifiRouter/LanSettingFragment;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    sget-object v5, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v1, v5, v6}, Lcom/htc/WifiRouter/LanSettingFragment;->access$400(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    iget-object v3, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->decideToSave(ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V
    invoke-static {v3, v2, v0, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$500(Lcom/htc/WifiRouter/LanSettingFragment;ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setIpAddress(Ljava/lang/String;)V

    .line 218
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    sget-object v4, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2, v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    :cond_3
    move v2, v3

    .line 223
    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/WifiRouter/LanSettingFragment;->access$300(Lcom/htc/WifiRouter/LanSettingFragment;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->isValidSubnetMask(Ljava/lang/String;)Z
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$600(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 192
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-virtual {v4}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090044

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 195
    :cond_5
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    sget-object v5, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v1, v6}, Lcom/htc/WifiRouter/LanSettingFragment;->access$400(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 196
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->decideToSave(ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V
    invoke-static {v4, v3, v0, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$500(Lcom/htc/WifiRouter/LanSettingFragment;ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_6
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setDhcpSubnetMask(Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_7
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/WifiRouter/LanSettingFragment;->access$300(Lcom/htc/WifiRouter/LanSettingFragment;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->isConflictIpAddress(Ljava/lang/String;)Z
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$700(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 204
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-virtual {v4}, Lcom/htc/WifiRouter/LanSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090043

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090052

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 211
    :cond_8
    iget-object v4, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    sget-object v5, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$400(Lcom/htc/WifiRouter/LanSettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 212
    iget-object v3, p0, Lcom/htc/WifiRouter/LanSettingFragment$2;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->decideToSave(ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V
    invoke-static {v3, v7, v0, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$500(Lcom/htc/WifiRouter/LanSettingFragment;ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_9
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setStartingIP(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
