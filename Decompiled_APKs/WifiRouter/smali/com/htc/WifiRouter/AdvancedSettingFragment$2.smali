.class Lcom/htc/WifiRouter/AdvancedSettingFragment$2;
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
    .line 145
    iput-object p1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$2;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 147
    new-instance v1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, i:Ljava/lang/Integer;
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setChannel(I)V

    .line 152
    iget-object v2, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$2;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$300(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$2;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    #getter for: Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->access$300(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    move-object v2, p1

    .line 155
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 156
    .local v0, arr:[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0           #arr:[Ljava/lang/CharSequence;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
