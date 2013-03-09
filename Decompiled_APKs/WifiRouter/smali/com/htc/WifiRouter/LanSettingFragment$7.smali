.class Lcom/htc/WifiRouter/LanSettingFragment$7;
.super Ljava/lang/Object;
.source "LanSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/LanSettingFragment;->decideToSave(ILcom/htc/preference/HtcEditTextPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/LanSettingFragment;

.field final synthetic val$mKey:I

.field final synthetic val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

.field final synthetic val$mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/LanSettingFragment;ILjava/lang/String;Lcom/htc/preference/HtcEditTextPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    iput p2, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mKey:I

    iput-object p3, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 344
    iget v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mKey:I

    packed-switch v0, :pswitch_data_0

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #getter for: Lcom/htc/WifiRouter/LanSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/WifiRouter/LanSettingFragment;->access$800(Lcom/htc/WifiRouter/LanSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 366
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 367
    return-void

    .line 346
    :pswitch_0
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setIpAddress(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 351
    :pswitch_1
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setDhcpSubnetMask(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getDhcpSubnetMask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :pswitch_2
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setStartingIP(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$7;->val$mPreference:Lcom/htc/preference/HtcEditTextPreference;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getStartingIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
