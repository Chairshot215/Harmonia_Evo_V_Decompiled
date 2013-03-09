.class public final Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcNeverTurnOffPreference.java"


# static fields
.field public static final DEFAULT_SCREEN_TIMEOUT:I = -0x1

.field public static final KEY:Ljava/lang/String; = "NEVER_TURN_OFF"

.field public static final PREVIOUS_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "previous_screen_off_timeout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->initialize()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->initialize()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->initialize()V

    .line 53
    return-void
.end method


# virtual methods
.method protected initialStatus()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, value:I
    if-ne v0, v3, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setChecked(Z)V

    .line 81
    const-string v1, "Never turn off"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setChecked(Z)V

    .line 84
    const-string v1, "Turn on \'Never turn off\'"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "NEVER_TURN_OFF"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setKey(Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v0, "Screen timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->initialStatus()V

    .line 66
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 90
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, value:I
    const-string v2, "previous_screen_off_timeout"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 112
    const-string v2, "screen_off_timeout"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    const-string v2, "screen_off_timeout"

    invoke-static {p0, v2, v4}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 119
    const-string v2, "Never turn off"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    return-void

    .line 121
    .end local v1           #value:I
    :cond_0
    const-string v2, "previous_screen_off_timeout"

    invoke-static {p0, v2, v4}, Lcom/android/settings/framework/storage/HtcStorage$Local;->getInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .restart local v1       #value:I
    const-string v2, "########## "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v2, "screen_off_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    const-string v2, "screen_off_timeout"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 131
    const-string v2, "Turn on \'Never turn off\'"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->initialStatus()V

    .line 71
    return-void
.end method
