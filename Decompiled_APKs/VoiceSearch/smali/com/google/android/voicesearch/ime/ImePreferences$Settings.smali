.class public Lcom/google/android/voicesearch/ime/ImePreferences$Settings;
.super Lcom/android/inputmethodcommon/InputMethodSettingsFragment;
.source "ImePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/ImePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0a073b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/ime/ImePreferences$Settings;->setInputMethodSettingsCategoryTitle(I)V

    .line 55
    const v0, 0x7f0a073c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/ime/ImePreferences$Settings;->setSubtypeEnablerTitle(I)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/ImePreferences$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "VoiceSearchPreferences"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/ime/ImePreferences$Settings;->addPreferencesFromResource(I)V

    .line 64
    return-void
.end method
