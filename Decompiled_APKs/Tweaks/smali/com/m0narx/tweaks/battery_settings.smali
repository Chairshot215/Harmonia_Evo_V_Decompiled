.class public Lcom/m0narx/tweaks/battery_settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "battery_settings.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/battery_settings;->mActivity:Landroid/app/Activity;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "batterybar_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 115
    const-string v0, "batterybar_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 116
    const-string v0, "batterybar_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 117
    const-string v0, "batterybar_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 118
    const-string v0, "batterybar_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 119
    const-string v0, "batterybar_automatically_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 120
    const-string v0, "barheight"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 123
    const-string v0, "battery_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 124
    const-string v0, "battery_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 125
    const-string v0, "battery_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 126
    const-string v0, "battery_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 108
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 110
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Vtype"
    .parameter "Default"

    .prologue
    .line 90
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 91
    :cond_0
    const-string v0, "list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 99
    return-void

    .line 93
    :cond_2
    const-string v0, "seekbar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSeekBarPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->addPreferencesFromResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/m0narx/tweaks/battery_settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    .line 26
    new-instance v0, Lcom/m0narx/tweaks/battery_settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/battery_settings$1;-><init>(Lcom/m0narx/tweaks/battery_settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 68
    const-string v0, "battery_text_style_pref"

    const-string v1, "tweaks_battery_text_style"

    const-string v2, "list"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v0, "show_miui"

    const-string v1, "battery_bar_style"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v0, "barheight"

    const-string v1, "battery_bar_height"

    const-string v2, "seekbar"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v0, "battery_automatically_color_pref"

    const-string v1, "tweaks_batt_color_auto_enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    const-string v0, "battery_color_pref"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v0, "battery_color_auto_charging"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v0, "battery_color_auto_regular"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v0, "battery_color_auto_medium"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v0, "battery_color_auto_low"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v0, "batterybar_automatically_color_pref"

    const-string v1, "battery_bar_auto_color"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    const-string v0, "batterybar_color_pref"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v0, "batterybar_color_auto_charging"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v0, "batterybar_color_auto_regular"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v0, "batterybar_color_auto_medium"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v0, "batterybar_color_auto_low"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/battery_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-direct {p0}, Lcom/m0narx/tweaks/battery_settings;->CheckPreferences()V

    .line 86
    return-void
.end method
