.class public Lcom/htc/store/activity/setting/SettingMain;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SettingMain.java"


# static fields
.field private static final PREF_ACCOUNT_SETTINGS:Ljava/lang/String; = "pref_account_settings"


# instance fields
.field private mPrefAccountSettings:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingMain;->setContentView(I)V

    .line 22
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingMain;->addPreferencesFromResource(I)V

    .line 23
    const-string v0, "pref_account_settings"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingMain;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingMain;->mPrefAccountSettings:Lcom/htc/preference/HtcPreference;

    .line 24
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, result:Z
    iget-object v2, p0, Lcom/htc/store/activity/setting/SettingMain;->mPrefAccountSettings:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_0

    .line 42
    invoke-static {p0}, Lcom/htc/cscore/util/CSSyncUtilities;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 43
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 44
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->checkAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 48
    :goto_0
    const/4 v1, 0x1

    .line 50
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    if-nez v1, :cond_1

    .line 51
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    .line 53
    :cond_1
    return v1

    .line 46
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_2
    invoke-static {p0}, Lcom/htc/store/util/ActivityUtils;->setAccount(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 29
    invoke-static {p0}, Lcom/htc/cscore/util/CSSyncUtilities;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 30
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingMain;->mPrefAccountSettings:Lcom/htc/preference/HtcPreference;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingMain;->mPrefAccountSettings:Lcom/htc/preference/HtcPreference;

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method
