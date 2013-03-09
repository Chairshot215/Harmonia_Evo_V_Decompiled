.class public Lcom/htc/usage/AdvancedSettingsFragment;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "AdvancedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;,
        Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.action.ACTION_ALLOW_BACKGROUND"

.field public static final HAS_LIMITED_NETWORKS:Ljava/lang/String; = "has_limited_networks"

.field public static final IS_BACKGROUND_RESTRICTED:Ljava/lang/String; = "is_background_restricted"

.field public static final PREF_ENABLE_SPLIT_4G:Ljava/lang/String; = "enable_split_4g"

.field public static final PREF_FILE:Ljava/lang/String; = "com.htc.usage_preferences"

.field public static final PREF_LIMITED_MOBILE_NETWORK:Ljava/lang/String; = "limited_mobile_network"

.field public static final PREF_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict_background"

.field public static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field public static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field private static final TAG:Ljava/lang/String; = "AdvancedSettings"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static mEnableEthernetTab:Lcom/htc/preference/HtcCheckBoxPreference;

.field private static mEnableSplit4g:Lcom/htc/preference/HtcCheckBoxPreference;

.field private static mEnableWifiTab:Lcom/htc/preference/HtcCheckBoxPreference;

.field private static mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;


# instance fields
.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableRestrictBackground:Z

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    .line 243
    new-instance v0, Lcom/htc/usage/AdvancedSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/usage/AdvancedSettingsFragment$2;-><init>(Lcom/htc/usage/AdvancedSettingsFragment;)V

    iput-object v0, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$102(Lcom/htc/usage/AdvancedSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    return p1
.end method

.method static synthetic access$200()Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/usage/AdvancedSettingsFragment;->mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/usage/AdvancedSettingsFragment;)Landroid/net/INetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mPolicyService:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/htc/usage/AdvancedSettingsFragment;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/htc/usage/AdvancedSettingsFragment;

    invoke-direct {v0}, Lcom/htc/usage/AdvancedSettingsFragment;-><init>()V

    .line 54
    .local v0, advancedSettings:Lcom/htc/usage/AdvancedSettingsFragment;
    return-object v0
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    .line 226
    const-string v1, "AdvancedSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRestrictBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move v0, p1

    .line 229
    .local v0, restrict:Z
    new-instance v1, Lcom/htc/usage/AdvancedSettingsFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/usage/AdvancedSettingsFragment$1;-><init>(Lcom/htc/usage/AdvancedSettingsFragment;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/htc/usage/AdvancedSettingsFragment$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 87
    .local v0, listview:Landroid/widget/ListView;
    if-nez v0, :cond_0

    .line 88
    const-string v1, "AdvancedSettings"

    const-string v2, "onActivityCreated getListView null"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v2, "AdvancedSettings"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 64
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.htc.usage_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/htc/usage/AdvancedSettingsFragment;->addPreferencesFromResource(I)V

    .line 68
    const-string v2, "restrict_background"

    invoke-virtual {p0, v2}, Lcom/htc/usage/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    sput-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 70
    const-string v2, "show_wifi"

    invoke-virtual {p0, v2}, Lcom/htc/usage/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    sput-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableWifiTab:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 71
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableWifiTab:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->getTitleRes()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/usage/Utils;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, WifiConvert:Ljava/lang/String;
    sget-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableWifiTab:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    const-string v2, "enable_split_4g"

    invoke-virtual {p0, v2}, Lcom/htc/usage/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    sput-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableSplit4g:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 76
    const-string v2, "show_ethernet"

    invoke-virtual {p0, v2}, Lcom/htc/usage/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    sput-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableEthernetTab:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 78
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 79
    .local v1, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    sget-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableSplit4g:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 80
    sget-object v2, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableEthernetTab:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "AdvancedSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    invoke-direct {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getRestrictBackground()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 136
    const-string v0, "AdvancedSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restrict background changes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    invoke-direct {p0, v0}, Lcom/htc/usage/AdvancedSettingsFragment;->setRestrictBackground(Z)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onPause()V

    .line 141
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v0, "AdvancedSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/htc/usage/AdvancedSettingsFragment;->mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 101
    sget-object v0, Lcom/htc/usage/AdvancedSettingsFragment;->mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "limited_mobile_network"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p0}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->show(Lcom/htc/usage/AdvancedSettingsFragment;)V

    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0

    .line 110
    :cond_1
    sget-object v0, Lcom/htc/usage/AdvancedSettingsFragment;->mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 111
    invoke-static {p0}, Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;->show(Lcom/htc/usage/AdvancedSettingsFragment;)V

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v3, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getRestrictBackground()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    .line 127
    sget-object v1, Lcom/htc/usage/AdvancedSettingsFragment;->mRestrictBackground:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.server.action.ACTION_ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, allowFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/AdvancedSettingsFragment;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method
