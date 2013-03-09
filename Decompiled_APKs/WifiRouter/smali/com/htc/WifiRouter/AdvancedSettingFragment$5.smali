.class Lcom/htc/WifiRouter/AdvancedSettingFragment$5;
.super Ljava/lang/Object;
.source "AdvancedSettingFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/AdvancedSettingFragment;->initLayout()V
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
    .line 230
    iput-object p1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$5;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 233
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setHiddenSSID(Z)V

    .line 234
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$5;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$300(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$5;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$300(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 237
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
