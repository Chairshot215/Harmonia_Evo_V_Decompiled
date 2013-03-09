.class public Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAutoLaunchNaviPanelPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final AUTO_LAUNCH_CAR_DOCK:Ljava/lang/String; = "auto_launch_car_dock"

.field private static final DEFAULT_AUTO_LAUNCH_CAR_DOCK:I = 0x1

.field public static final KEY:Ljava/lang/String; = "auto_launch_navi_panel_preference"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->initialize()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->initialize()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->initialize()V

    .line 50
    return-void
.end method

.method private getAutoLaunchStatus()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_launch_car_dock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 82
    :goto_0
    return v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAutoLaunchStatus(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, value:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_launch_car_dock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 116
    :goto_0
    return v1

    .line 115
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "auto_launch_navi_panel_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->setKey(Ljava/lang/String;)V

    .line 60
    :cond_0
    const v0, 0x7f0c04ef

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->setTitle(I)V

    .line 61
    const v0, 0x7f0c04f0

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->setSummary(I)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 63
    return-void
.end method

.method private setAutoLaunchStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_launch_car_dock"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->getAutoLaunchStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->setChecked(Z)V

    .line 71
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/cardock/HtcAutoLaunchNaviPanelPreference;->setAutoLaunchStatus(Z)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method
