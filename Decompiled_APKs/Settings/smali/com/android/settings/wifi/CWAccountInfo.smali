.class public Lcom/android/settings/wifi/CWAccountInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CWAccountInfo.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEY_USER_DEFINED_IP:Ljava/lang/String; = "user_defined_ip"

.field private static final KEY_WAG_IP:Ljava/lang/String; = "wag_ip"

.field private static final TAG:Ljava/lang/String; = "CWAccountInfo"


# instance fields
.field private mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/CWAccountInfo;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/16 v8, 0x2e

    const/4 v5, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, start:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 109
    .local v2, end:I
    const/4 v3, 0x0

    .line 111
    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 112
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    .local v0, block:I
    const/16 v6, 0xff

    if-gt v0, v6, :cond_1

    if-ltz v0, :cond_1

    sub-int v6, v2, v4

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 128
    .end local v0           #block:I
    :cond_1
    :goto_1
    return v5

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 123
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #block:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 125
    add-int/lit8 v4, v2, 0x1

    .line 126
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 128
    .end local v0           #block:I
    :cond_3
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    sget-boolean v1, Lcom/android/settings/wifi/CWAccountInfo;->DBG:Z

    if-eqz v1, :cond_1

    .line 54
    const-string v1, "user_defined_ip"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/CWAccountInfo;->mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 55
    iget-object v1, p0, Lcom/android/settings/wifi/CWAccountInfo;->mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 56
    const-string v1, "wag_ip"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "parent"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 59
    .local v0, parent:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "wag_ip_title"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 61
    const-string v1, "user_defined_ip"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 62
    const-string v1, "wag_ip"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CWAccountInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 45
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CWAccountInfo;->addPreferencesFromResource(I)V

    .line 47
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, key:Ljava/lang/String;
    const-string v3, "user_defined_ip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 91
    .local v1, value:Z
    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWagAsUserDefined(Landroid/net/wifi/WifiManager;Z)Z

    .line 103
    .end local v1           #value:Z
    :cond_0
    :goto_0
    return v2

    .line 93
    .restart local p2
    :cond_1
    const-string v3, "wag_ip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/CWAccountInfo;->isIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/CWAccountInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c095d

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWagAddress(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 71
    sget-boolean v3, Lcom/android/settings/wifi/CWAccountInfo;->DBG:Z

    if-nez v3, :cond_0

    .line 84
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWagAsUserDefined(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    .line 74
    .local v0, checked:Z
    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mUserDefinedIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 75
    const-string v3, "wag_ip"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/CWAccountInfo;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    .line 77
    .local v2, ipEditor:Lcom/htc/preference/HtcEditTextPreference;
    if-eqz v0, :cond_1

    .line 78
    iget-object v3, p0, Lcom/android/settings/wifi/CWAccountInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWagAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, ip:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    .end local v1           #ip:Ljava/lang/String;
    :cond_1
    const v3, 0x7f0c05e6

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(I)V

    goto :goto_0
.end method
