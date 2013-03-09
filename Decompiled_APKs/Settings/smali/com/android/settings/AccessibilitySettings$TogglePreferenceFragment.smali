.class abstract Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TogglePreferenceFragment"
.end annotation


# static fields
.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1


# instance fields
.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Lcom/htc/preference/HtcPreference;

.field private mToggleSwitch:Lcom/android/settings/ToggleSwitch;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/ToggleSwitch;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$700(Landroid/app/Activity;)Lcom/android/settings/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/ToggleSwitch;

    .line 812
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 835
    return-void
.end method

.method private processArguments()V
    .locals 10

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 841
    .local v1, arguments:Landroid/os/Bundle;
    const-string v8, "preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 844
    const-string v8, "checked"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 845
    .local v2, enabled:Z
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/ToggleSwitch;

    invoke-virtual {v8, v2}, Lcom/android/settings/ToggleSwitch;->setCheckedInternal(Z)V

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 849
    .local v0, activity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 851
    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 852
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 856
    .end local v7           #title:Ljava/lang/String;
    :cond_1
    const-string v8, "summary"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 857
    .local v6, summary:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 860
    const-string v8, "settings_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 861
    .local v5, settingsTitle:Ljava/lang/String;
    const-string v8, "settings_component_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, settingsComponentName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 863
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 865
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 866
    iput-object v5, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 867
    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 868
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 873
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v8, "enable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 877
    const-string v8, "enable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 881
    const-string v8, "disable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 885
    const-string v8, "disable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 887
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 792
    packed-switch p2, :pswitch_data_0

    .line 806
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 794
    :pswitch_0
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 795
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/ToggleSwitch;->setCheckedInternal(Z)V

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 797
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 808
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 794
    goto :goto_0

    .line 800
    :pswitch_1
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 801
    .restart local v0       #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/ToggleSwitch;->setCheckedInternal(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 803
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_1
    move v0, v1

    .line 800
    goto :goto_2

    .line 792
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 699
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 702
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 703
    new-instance v1, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    .line 727
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 728
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    const v2, 0x7f04008a

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 729
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 730
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 765
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 777
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 767
    :pswitch_0
    iput v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 768
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 769
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 779
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    .line 772
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 773
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 774
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 775
    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 755
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 756
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 758
    .local v0, menuItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 759
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 748
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 749
    return-void
.end method

.method public abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 734
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 735
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSwitch()V

    .line 736
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->processArguments()V

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 739
    return-void
.end method
