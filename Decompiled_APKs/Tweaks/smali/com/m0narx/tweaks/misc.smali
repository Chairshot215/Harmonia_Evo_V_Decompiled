.class public Lcom/m0narx/tweaks/misc;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "misc.java"


# static fields
.field private static final DIALOG_APM_ITEMS:I = 0xb

.field private static final ITEM_AEROPLANE:I = 0x2

.field private static final ITEM_DATA:I = 0x3

.field private static final ITEM_RESTART:I = 0x0

.field private static final ITEM_SCREENSHOT:I = 0x1

.field private static final ITEM_SOUND:I = 0x4


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private Title:Lcom/htc/widget/HeaderBarText;

.field private Title_Button:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private CheckButtonState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 230
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 233
    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 183
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 185
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 187
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 188
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 189
    iget-object v2, p0, Lcom/m0narx/tweaks/misc;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 190
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 176
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 179
    return-void
.end method

.method private OnClickListener(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/misc;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 194
    return-void
.end method

.method private SetupHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/misc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    .line 198
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 205
    .local v0, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 206
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/misc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    .line 209
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 210
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 211
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 212
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 213
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/m0narx/tweaks/misc$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/misc$5;-><init>(Lcom/m0narx/tweaks/misc;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 224
    .restart local v0       #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 225
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/misc;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/m0narx/tweaks/misc;->CheckButtonState()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/misc;->addPreferencesFromResource(I)V

    .line 103
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/misc;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lcom/m0narx/tweaks/misc;->SetupHeader()V

    .line 105
    invoke-direct {p0}, Lcom/m0narx/tweaks/misc;->CheckButtonState()V

    .line 106
    invoke-virtual {p0}, Lcom/m0narx/tweaks/misc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    .line 107
    new-instance v0, Lcom/m0narx/tweaks/misc$3;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/misc$3;-><init>(Lcom/m0narx/tweaks/misc;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/misc;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 119
    new-instance v0, Lcom/m0narx/tweaks/misc$4;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/misc$4;-><init>(Lcom/m0narx/tweaks/misc;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/misc;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 160
    const-string v0, "pref_overscrollcolor"

    const-string v1, "tweaks_overscroll_color"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v0, "pref_brighntess"

    const-string v1, "tweaks_autobrightness_level"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v0, "sms_screenon"

    const-string v1, "tweaks_sms_screen_on"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    const-string v0, "apm_items"

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/misc;->OnClickListener(Ljava/lang/String;)V

    .line 164
    const-string v0, "pref_volumesteps"

    const-string v1, "tweaks_volume_control"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v0, "pref_capacitive_backlight"

    const-string v1, "tweaks_buttons_brightness"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v0, "pref_hide_arrows"

    const-string v1, "tweaks_htcime_noarrow"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/misc;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 44
    :pswitch_0
    const/4 v0, 0x0

    check-cast v0, [Z

    .line 45
    .local v0, SWIcons:[Z
    const/4 v1, 0x7

    new-array v0, v1, [Z

    .line 46
    aput-boolean v3, v0, v4

    .line 47
    aput-boolean v3, v0, v3

    .line 48
    aput-boolean v3, v0, v5

    .line 49
    aput-boolean v3, v0, v6

    .line 50
    aput-boolean v3, v0, v7

    .line 52
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_apm_reboot"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v4, v0, v4

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_apm_screenshot"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    aput-boolean v4, v0, v3

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_apm_aeroplane"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    aput-boolean v4, v0, v5

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_apm_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    aput-boolean v4, v0, v6

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_apm_sound"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    aput-boolean v4, v0, v7

    .line 58
    :cond_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 60
    const v2, 0x7f050081

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 61
    const v2, 0x7f06001e

    .line 62
    new-instance v3, Lcom/m0narx/tweaks/misc$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/misc$1;-><init>(Lcom/m0narx/tweaks/misc;)V

    .line 61
    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 87
    const v2, 0x7f05007c

    .line 88
    new-instance v3, Lcom/m0narx/tweaks/misc$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/misc$2;-><init>(Lcom/m0narx/tweaks/misc;)V

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/m0narx/tweaks/misc;->CheckButtonState()V

    .line 173
    return-void
.end method
