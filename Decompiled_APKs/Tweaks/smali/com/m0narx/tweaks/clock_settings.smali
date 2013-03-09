.class public Lcom/m0narx/tweaks/clock_settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "clock_settings.java"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

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

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/clock_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 63
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v2, p0, Lcom/m0narx/tweaks/clock_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 65
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Vtype"
    .parameter "Default"

    .prologue
    .line 47
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 48
    :cond_0
    const-string v0, "list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/clock_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/clock_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/clock_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 54
    return-void

    .line 50
    :cond_2
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/clock_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/clock_settings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 20
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/clock_settings;->addPreferencesFromResource(I)V

    .line 22
    invoke-virtual {p0}, Lcom/m0narx/tweaks/clock_settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/clock_settings;->Cr:Landroid/content/ContentResolver;

    .line 24
    new-instance v0, Lcom/m0narx/tweaks/clock_settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/clock_settings$1;-><init>(Lcom/m0narx/tweaks/clock_settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/clock_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 41
    const-string v0, "pref_clock"

    const-string v1, "tweaks_clock_style"

    const-string v2, "list"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/clock_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v0, "clock_color_pref"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/clock_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v0, "clock_hide_ampm"

    const-string v1, "tweaks_clock_hide_ampm"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/clock_settings;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    return-void
.end method
