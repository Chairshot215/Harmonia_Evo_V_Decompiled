.class public Lcom/android/htccontacts/blacklist/BlockCallerPreference;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "BlockCallerPreference.java"


# static fields
.field private static final DEBUG:Z = false

.field static final KEY_MODIFY_PASSWORD:Ljava/lang/String; = "pref_key_modify_password"

.field static final KEY_REQUIRE_PASSWORD:Ljava/lang/String; = "pref_key_require_password"

.field private static final TAG:Ljava/lang/String; = "PhonePreference"


# instance fields
.field private mModifyMessage:Lcom/htc/preference/HtcPreference;

.field private mRequireMessage:Lcom/htc/preference/HtcPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->addPreferencesFromResource(I)V

    .line 65
    const-string v0, "pref_key_require_password"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mRequireMessage:Lcom/htc/preference/HtcPreference;

    .line 66
    const-string v0, "pref_key_modify_password"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mModifyMessage:Lcom/htc/preference/HtcPreference;

    .line 67
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mModifyMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_require_password"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mModifyMessage:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mModifyMessage:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "modify_password"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->startActivity(Landroid/content/Intent;)V

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mRequireMessage:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_require_password"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mModifyMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->mModifyMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/BlockCallerPreference;->onContentChanged()V

    .line 85
    return-void
.end method
