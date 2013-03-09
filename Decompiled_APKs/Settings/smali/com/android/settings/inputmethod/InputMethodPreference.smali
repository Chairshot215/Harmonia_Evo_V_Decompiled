.class public Lcom/android/settings/inputmethod/InputMethodPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/preference/HtcCheckBoxPreference;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Landroid/view/View;

.field private mInputMethodSettingsButton:Landroid/view/View;

.field private final mIsSystemIme:Z

.field private final mPrefOnclickListener:Landroid/view/View$OnClickListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 4
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "imm"
    .parameter "imi"
    .parameter "imiCount"

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0043

    invoke-direct {p0, v1, v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 69
    new-instance v1, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    .line 90
    const v1, 0x7f040068

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 91
    const v1, 0x7f040069

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 92
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 93
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 94
    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 95
    iput-object p4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 97
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 98
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isAuxiliaryIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 99
    .local v0, isAuxIme:Z
    const/4 v1, 0x1

    if-le p5, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 102
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private saveImeSettings()V
    .locals 5

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 304
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 7
    .parameter "imi"
    .parameter "chkPref"

    .prologue
    const/4 v3, 0x1

    .line 262
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 265
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/inputmethod/InputMethodPreference$6;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/htc/preference/HtcCheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$5;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 283
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0b56

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 287
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "fragment"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 221
    .local v0, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 223
    const/4 v3, 0x1

    .line 228
    .end local v0           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :goto_0
    return v3

    .line 225
    :cond_0
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requestCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 191
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 194
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 195
    if-nez v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 207
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 210
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    if-nez v1, :cond_3

    .line 212
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    .end local v1           #enabled:Z
    :cond_3
    return-void

    .line 210
    .restart local v1       #enabled:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p1, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local p1
    check-cast p2, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->compare(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 235
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 236
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 237
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 241
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 107
    const v5, 0x7f080111

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    .line 108
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "item_background_holo_dark"

    invoke-static {v5, v7, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 114
    .local v3, resId1:I
    if-eqz v3, :cond_0

    .line 115
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    :cond_0
    const v5, 0x7f080112

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "item_background_holo_dark"

    invoke-static {v5, v7, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 124
    .local v4, resId2:I
    if-eqz v4, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    :cond_1
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 130
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 131
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 132
    .local v0, hasSubtypes:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, imiId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 134
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    new-instance v6, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    :cond_2
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 147
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    new-instance v6, Lcom/android/settings/inputmethod/InputMethodPreference$3;

    invoke-direct {v6, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_3
    if-eqz v0, :cond_4

    .line 163
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 173
    .local v2, listener:Landroid/view/View$OnLongClickListener;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    .end local v2           #listener:Landroid/view/View$OnLongClickListener;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v5, :cond_6

    .line 176
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :goto_1
    return-void

    .end local v0           #hasSubtypes:Z
    .end local v1           #imiId:Ljava/lang/String;
    :cond_5
    move v0, v6

    .line 131
    goto :goto_0

    .line 178
    .restart local v0       #hasSubtypes:Z
    .restart local v1       #imiId:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 259
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 186
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
