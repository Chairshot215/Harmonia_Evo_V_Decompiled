.class public Lcom/android/settings/PenSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PenSetting$SettingsModule;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PenSettingFragment"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTutorial:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 64
    iput-object v0, p0, Lcom/android/settings/PenSetting;->mTutorial:Lcom/htc/preference/HtcPreferenceScreen;

    .line 65
    iput-object v0, p0, Lcom/android/settings/PenSetting;->mDialog:Landroid/app/Dialog;

    .line 238
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings/PenSetting;->startPenTips(Landroid/content/Context;)V

    return-void
.end method

.method private static getSettingValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, value:I
    if-ne v1, v0, :cond_0

    .line 225
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private pen_check(Lcom/htc/preference/HtcPreference;)Z
    .locals 14
    .parameter "preference"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/PenSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 155
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 156
    .local v2, cr:Landroid/content/ContentResolver;
    if-nez v2, :cond_0

    const-string v10, "PenSettingFragment"

    const-string v11, "onPreferenceClick cr is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return v9

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 159
    .local v6, res:Landroid/content/res/Resources;
    if-nez v6, :cond_1

    const-string v10, "PenSettingFragment"

    const-string v11, "onPreferenceClick res is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_1
    const-string v11, "has_pen_down_after_setup_wizard"

    invoke-static {v2, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 164
    .local v3, firstPenDown:I
    if-ne v10, v3, :cond_2

    .line 165
    invoke-static {v0}, Lcom/android/settings/PenSetting;->startPenTips(Landroid/content/Context;)V

    move v9, v10

    .line 166
    goto :goto_0

    .line 171
    :cond_2
    invoke-static {v0}, Lcom/android/settings/PenSetting$SettingsModule;->getDefaultUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, penLink:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 176
    invoke-static {v0}, Lcom/android/settings/PenSetting;->startPenTips(Landroid/content/Context;)V

    move v9, v10

    .line 177
    goto :goto_0

    .line 183
    :cond_3
    const v11, 0x7f0c05fb

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, content:Ljava/lang/String;
    const v11, 0x7f0c05fc

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, link:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    .local v7, ss:Landroid/text/SpannableString;
    new-instance v11, Landroid/text/style/URLSpan;

    invoke-direct {v11, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v13

    invoke-virtual {v7, v11, v12, v13, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 188
    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v11, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0c05fa

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0c05fd

    new-instance v13, Lcom/android/settings/PenSetting$2;

    invoke-direct {v13, p0, v0}, Lcom/android/settings/PenSetting$2;-><init>(Lcom/android/settings/PenSetting;Landroid/app/Activity;)V

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0c05fe

    new-instance v13, Lcom/android/settings/PenSetting$1;

    invoke-direct {v13, p0}, Lcom/android/settings/PenSetting$1;-><init>(Lcom/android/settings/PenSetting;)V

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PenSetting;->mDialog:Landroid/app/Dialog;

    .line 203
    iget-object v11, p0, Lcom/android/settings/PenSetting;->mDialog:Landroid/app/Dialog;

    if-nez v11, :cond_4

    const-string v10, "PenSettingFragment"

    const-string v11, "onPreferenceClick dialog is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    :cond_4
    iget-object v9, p0, Lcom/android/settings/PenSetting;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 207
    iget-object v9, p0, Lcom/android/settings/PenSetting;->mDialog:Landroid/app/Dialog;

    const v11, 0x20200ad

    invoke-virtual {v9, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 208
    .local v8, textView:Landroid/widget/TextView;
    if-nez v8, :cond_5

    const-string v9, "PenSettingFragment"

    const-string v11, "onPreferenceClick textView is null"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto/16 :goto_0

    .line 209
    :cond_5
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move v9, v10

    .line 212
    goto/16 :goto_0
.end method

.method private static startPenTips(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 229
    if-nez p0, :cond_0

    const-string v1, "PenSettingFragment"

    const-string v2, "startPenTips context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.action.PEN_TIPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.htc.mypentips"

    const-string v2, "com.htc.mypentips.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f050020

    invoke-virtual {p0, v1}, Lcom/android/settings/PenSetting;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/PenSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "pen_attr_for_each_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 77
    iget-object v1, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/PenSetting;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 82
    const-string v1, "pen_tutorial"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/PenSetting;->mTutorial:Lcom/htc/preference/HtcPreferenceScreen;

    .line 83
    iget-object v1, p0, Lcom/android/settings/PenSetting;->mTutorial:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 109
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    .line 147
    :goto_0
    return v1

    .line 131
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    move v1, v2

    .line 147
    goto :goto_0

    .line 136
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PenSetting;->mTutorial:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 119
    invoke-direct {p0, p2}, Lcom/android/settings/PenSetting;->pen_check(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/PenSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/PenSetting;->mPenAttr:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/PenSetting;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
