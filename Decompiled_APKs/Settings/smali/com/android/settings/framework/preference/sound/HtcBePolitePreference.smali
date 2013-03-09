.class public final Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcBePolitePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "BE_POLITE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->initialize()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->initialize()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->initialize()V

    .line 88
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0001:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    const/4 v0, 0x1

    .line 124
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
    .line 141
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->setOrder(I)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "BE_POLITE"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->setKey(Ljava/lang/String;)V

    .line 98
    :cond_0
    const v2, 0x7f0c047f

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->setTitle(I)V

    .line 99
    const v2, 0x7f0c0480

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->setSummary(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "be_polite"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, value:I
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->setChecked(Z)V

    .line 106
    return-void

    .line 105
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->isChecked()Z

    move-result v0

    .line 150
    .local v0, on:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "be_polite"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcBePolitePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    sget-boolean v1, Lcom/android/settings/framework/flag/UserProfilingUtils;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "quiet_ring_on_pickup"

    const-string v2, "com.android.phone"

    const-string v3, "settings_quietRing"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/framework/flag/UserProfilingUtils;->userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 160
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
