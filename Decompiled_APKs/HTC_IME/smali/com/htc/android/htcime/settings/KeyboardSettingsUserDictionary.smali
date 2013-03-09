.class public Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "KeyboardSettingsUserDictionary.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mEditorKey:Ljava/lang/String;

.field protected mFromMenu:Z

.field private mSyncKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->DEBUG:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mFromMenu:Z

    return-void
.end method

.method private getExtraValue()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromMenu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mFromMenu:Z

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getExtraValue] mFromMenu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mFromMenu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private initKey()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mEditorKey:Ljava/lang/String;

    .line 65
    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mSyncKey:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private initSetting()Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->initKey()V

    .line 57
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->addPreferencesFromResource(I)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->initSetting()Z

    .line 43
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->getExtraValue()V

    .line 44
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, isHandled:Z
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mEditorKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 72
    .local v2, preference_editor:Lcom/htc/preference/HtcPreference;
    iget-object v4, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 74
    .local v3, preference_sync:Lcom/htc/preference/HtcPreference;
    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "fromMenu"

    iget-boolean v5, p0, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->mFromMenu:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/KeyboardSettingsUserDictionary;->startActivity(Landroid/content/Intent;)V

    .line 80
    const/4 v1, 0x1

    .line 83
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return v1
.end method
