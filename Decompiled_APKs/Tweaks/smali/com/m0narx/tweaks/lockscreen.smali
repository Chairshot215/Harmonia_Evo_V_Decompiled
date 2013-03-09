.class public Lcom/m0narx/tweaks/lockscreen;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "lockscreen.java"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field final DIALOG_DATE_COMPONENTS:I

.field final DIALOG_SHORTCUT_COMPONENTS:I

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private Title:Lcom/htc/widget/HeaderBarText;

.field private Title_Button:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 33
    const/16 v0, 0x65

    iput v0, p0, Lcom/m0narx/tweaks/lockscreen;->DIALOG_DATE_COMPONENTS:I

    .line 34
    const/16 v0, 0x66

    iput v0, p0, Lcom/m0narx/tweaks/lockscreen;->DIALOG_SHORTCUT_COMPONENTS:I

    .line 27
    return-void
.end method

.method private CheckButtonState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 252
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 255
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

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

    .line 197
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 198
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 200
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 201
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 202
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 203
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 205
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 216
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 219
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    .line 208
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, DefSet:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p3, v1

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcEditTextPreference;

    .line 211
    .local v0, Chk:Lcom/htc/preference/HtcEditTextPreference;
    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 213
    return-void
.end method

.method private OnClickListener(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 189
    return-void
.end method

.method private SetupHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/lockscreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    .line 223
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 228
    .local v0, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 229
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/lockscreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    .line 232
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 233
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 234
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 235
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 236
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 239
    .restart local v0       #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 240
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/m0narx/tweaks/lockscreen$7;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/lockscreen$7;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->CheckButtonState()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->addPreferencesFromResource(I)V

    .line 129
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->setContentView(I)V

    .line 130
    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->SetupHeader()V

    .line 131
    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->CheckButtonState()V

    .line 132
    invoke-virtual {p0}, Lcom/m0narx/tweaks/lockscreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    .line 134
    new-instance v0, Lcom/m0narx/tweaks/lockscreen$5;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/lockscreen$5;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 162
    new-instance v0, Lcom/m0narx/tweaks/lockscreen$6;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/lockscreen$6;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 176
    const-string v0, "asop_lockscreen"

    const-string v1, "tweaks_lockscreen_style"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 177
    const-string v0, "pref_lockscreen_caption"

    const-string v1, "tweaks_lockscreen_caption"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "use_volume"

    const-string v1, "tweaks_use_volume"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 179
    const-string v0, "use_menuunlock"

    const-string v1, "tweaks_menu_unlock"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    const-string v0, "hide_opname"

    const-string v1, "tweaks_lockscreen_hide_opname"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const-string v0, "lockscreen_hide_datetime"

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->OnClickListener(Ljava/lang/String;)V

    .line 182
    const-string v0, "lockscreen_shortcuts"

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->OnClickListener(Ljava/lang/String;)V

    .line 183
    const-string v0, "lockscreen_hide_navbar"

    const-string v1, "tweaks_lockscreen_hide_navbar"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 184
    const-string v0, "use_media"

    const-string v1, "tweaks_use_media"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/lockscreen;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/high16 v7, 0x7f02

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    check-cast v0, [Z

    .line 42
    .local v0, SWIcons:[Z
    const/4 v2, 0x3

    new-array v0, v2, [Z

    .line 43
    aput-boolean v4, v0, v4

    .line 44
    aput-boolean v4, v0, v5

    .line 45
    aput-boolean v4, v0, v6

    .line 46
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_lockscreen_hide_date"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    aput-boolean v5, v0, v4

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_lockscreen_hide_time"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    aput-boolean v5, v0, v5

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_lockscreen_hide_ampm"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    aput-boolean v5, v0, v6

    .line 50
    :cond_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 52
    const v3, 0x7f050094

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 53
    const v3, 0x7f060017

    .line 54
    new-instance v4, Lcom/m0narx/tweaks/lockscreen$1;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/lockscreen$1;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    .line 53
    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 73
    const v3, 0x7f05007c

    .line 74
    new-instance v4, Lcom/m0narx/tweaks/lockscreen$2;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/lockscreen$2;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    .line 73
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .end local v0           #SWIcons:[Z
    :pswitch_1
    move-object v1, v0

    .line 81
    check-cast v1, [Z

    .line 82
    .local v1, SWIcons1:[Z
    new-array v1, v6, [Z

    .line 83
    aput-boolean v4, v1, v4

    .line 84
    aput-boolean v4, v1, v5

    .line 85
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_lockscreen_hide_labels"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    aput-boolean v5, v1, v4

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_lockscreen_hide_bubles"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_4

    aput-boolean v5, v1, v5

    .line 88
    :cond_4
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 90
    const v3, 0x7f050096

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 91
    const v3, 0x7f060018

    .line 92
    new-instance v4, Lcom/m0narx/tweaks/lockscreen$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/lockscreen$3;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    .line 91
    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 113
    const v3, 0x7f05007c

    .line 114
    new-instance v4, Lcom/m0narx/tweaks/lockscreen$4;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/lockscreen$4;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    .line 113
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 193
    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->CheckButtonState()V

    .line 194
    return-void
.end method
