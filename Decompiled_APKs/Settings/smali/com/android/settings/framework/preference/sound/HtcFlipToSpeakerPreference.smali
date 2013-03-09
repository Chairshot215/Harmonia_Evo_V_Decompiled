.class public final Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcFlipToSpeakerPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "FLIP_TO_SPEAKER"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->initialize()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->initialize()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->initialize()V

    .line 46
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 99
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->setOrder(I)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, "FLIP_TO_SPEAKER"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->setKey(Ljava/lang/String;)V

    .line 56
    :cond_0
    const v2, 0x7f0c0483

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->setTitle(I)V

    .line 57
    const v2, 0x7f0c0484

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->setSummary(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flip_to_speaker"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, value:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->setChecked(Z)V

    .line 64
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->isChecked()Z

    move-result v0

    .line 108
    .local v0, on:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flip_to_speaker"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToSpeakerPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    sget-boolean v1, Lcom/android/settings/framework/flag/UserProfilingUtils;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "flip_for_speaker"

    const-string v2, "com.android.phone"

    const-string v3, "settings_flipForSpeaker"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/framework/flag/UserProfilingUtils;->userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 118
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
