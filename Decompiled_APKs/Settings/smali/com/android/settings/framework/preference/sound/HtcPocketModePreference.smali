.class public final Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcPocketModePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "PCOKET_MODE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->initialize()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->initialize()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->initialize()V

    .line 66
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 86
    const/4 v0, 0x1

    .line 88
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
    .line 92
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->setOrder(I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 72
    const-string v2, "PCOKET_MODE"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->setKey(Ljava/lang/String;)V

    .line 73
    const v2, 0x7f0c0481

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->setTitle(I)V

    .line 74
    const v2, 0x7f0c0482

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->setSummary(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pocket_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, value:I
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->setChecked(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->isChecked()Z

    move-result v0

    .line 100
    .local v0, on:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pocket_mode"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    sget-boolean v1, Lcom/android/settings/framework/flag/UserProfilingUtils;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "pocket_mode"

    const-string v2, "com.android.phone"

    const-string v3, "settings_pocketMode"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/framework/flag/UserProfilingUtils;->userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 111
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
