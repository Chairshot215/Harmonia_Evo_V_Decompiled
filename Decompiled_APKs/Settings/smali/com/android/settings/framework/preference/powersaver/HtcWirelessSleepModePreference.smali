.class public Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.source "HtcWirelessSleepModePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "WIRELESS_SLEEP_MODE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "htc_wireless_sleep_mode_enabled"

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "WIRELESS_SLEEP_MODE"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onHandledSetValueMessage(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeNotifier;->broadcast(Landroid/content/Context;)V

    .line 86
    return-void
.end method
