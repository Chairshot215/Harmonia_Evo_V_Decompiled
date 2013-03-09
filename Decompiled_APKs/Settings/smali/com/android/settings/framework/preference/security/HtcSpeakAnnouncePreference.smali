.class public Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.source "HtcSpeakAnnouncePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "htc_speak_announce"

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onHandledSetValueMessage(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SPEAK_ANNOUNCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.boolean_data"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
