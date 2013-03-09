.class Lcom/htc/WifiRouter/LanSettingFragment$5;
.super Ljava/lang/Object;
.source "LanSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/LanSettingFragment;->showResetDefaultDialog()V
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
    .line 284
    iput-object p1, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 286
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->resetDhcpConfig(Landroid/net/wifi/WifiManager;)V

    .line 288
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    sput-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 293
    :goto_0
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setDhcpEnable(I)V

    .line 294
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpEnable()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 295
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$1000(Lcom/htc/WifiRouter/LanSettingFragment;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 299
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$300(Lcom/htc/WifiRouter/LanSettingFragment;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    iget-object v3, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mPreferenceKeys:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/WifiRouter/LanSettingFragment;->access$300(Lcom/htc/WifiRouter/LanSettingFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/htc/WifiRouter/LanSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    .line 301
    .local v1, preference:Lcom/htc/preference/HtcEditTextPreference;
    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    .end local v0           #i:I
    .end local v1           #preference:Lcom/htc/preference/HtcEditTextPreference;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mChkPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$1000(Lcom/htc/WifiRouter/LanSettingFragment;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 303
    .restart local v0       #i:I
    .restart local v1       #preference:Lcom/htc/preference/HtcEditTextPreference;
    :pswitch_0
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 304
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 307
    :pswitch_1
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 308
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 311
    :pswitch_2
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 312
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 317
    .end local v1           #preference:Lcom/htc/preference/HtcEditTextPreference;
    :cond_2
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 318
    iget-object v2, p0, Lcom/htc/WifiRouter/LanSettingFragment$5;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 323
    :cond_3
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
