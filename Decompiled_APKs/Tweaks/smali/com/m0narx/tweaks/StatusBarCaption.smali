.class public Lcom/m0narx/tweaks/StatusBarCaption;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "StatusBarCaption.java"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 73
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/StatusBarCaption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 74
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 75
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 76
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, DefSet:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p3, v1

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/StatusBarCaption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcEditTextPreference;

    .line 82
    .local v0, Chk:Lcom/htc/preference/HtcEditTextPreference;
    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/m0narx/tweaks/StatusBarCaption;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 84
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Vtype"
    .parameter "Default"

    .prologue
    .line 56
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 57
    :cond_0
    const-string v0, "list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/StatusBarCaption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/StatusBarCaption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/StatusBarCaption;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 65
    return-void

    .line 59
    :cond_2
    const-string v0, "seekbar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/StatusBarCaption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSeekBarPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/StatusBarCaption;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/StatusBarCaption;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/StatusBarCaption;->addPreferencesFromResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/m0narx/tweaks/StatusBarCaption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/StatusBarCaption;->Cr:Landroid/content/ContentResolver;

    .line 26
    new-instance v0, Lcom/m0narx/tweaks/StatusBarCaption$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/StatusBarCaption$1;-><init>(Lcom/m0narx/tweaks/StatusBarCaption;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/StatusBarCaption;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 48
    const-string v0, "pref_statusbar_caption"

    const-string v1, "tweaks_custom_statusbartext"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/StatusBarCaption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "extended_statusbartext"

    const-string v1, "tweaks_extended_statusbartext"

    const-string v2, "list"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/StatusBarCaption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v0, "extended_statusbartext_color"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/StatusBarCaption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v0, "extended_statusbartext_showicon"

    const-string v1, "tweaks_extended_statusbartext_showicon"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/StatusBarCaption;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    return-void
.end method
