.class public Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsUserDictionarySync.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mFromMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->DEBUG:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->mFromMenu:Z

    return-void
.end method

.method private getExtraValue()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromMenu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->mFromMenu:Z

    .line 43
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getExtraValue] mFromMenu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->mFromMenu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method private initSetting()V
    .locals 4

    .prologue
    .line 50
    const v2, 0x7f03002d

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->addPreferencesFromResource(I)V

    .line 52
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_0

    .line 54
    iget-object v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->TAG:Ljava/lang/String;

    const-string v3, "phone storage case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;

    .line 59
    .local v0, backupDialogPref:Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;
    const v2, 0x7f090064

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->setSummary(I)V

    .line 60
    const v2, 0x7f090066

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->setDialogMessage(I)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;

    .line 63
    .local v1, restoreDialogPref:Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;
    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;->setDialogMessage(I)V

    .line 65
    .end local v0           #backupDialogPref:Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;
    .end local v1           #restoreDialogPref:Lcom/htc/android/htcime/settings/UserDictionarySyncDialogPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->initSetting()V

    .line 38
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionarySync;->getExtraValue()V

    .line 39
    return-void
.end method
