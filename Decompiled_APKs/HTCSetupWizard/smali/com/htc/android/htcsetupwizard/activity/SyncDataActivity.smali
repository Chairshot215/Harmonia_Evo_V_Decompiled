.class public Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SyncDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AUTO:I = 0x1

.field private static final AUTO_SYNC_DATA:Ljava/lang/String; = "oobe_auto_sync_data_check"

.field private static final KEY_SELECT_AUTO:Ljava/lang/String; = "select_auto"

.field private static final KEY_SELECT_NEVER:Ljava/lang/String; = "select_never"

.field private static final KEY_SYNC_DATA_DESCRIPTION:Ljava/lang/String; = "sync_data_description"

.field private static final KEY_SYNC_DATA_IMAGE:Ljava/lang/String; = "sync_data_image"

.field private static final NEVER:I = 0x2

.field private static final SET_SYNC_DATA_SELECT:Ljava/lang/String; = "oobe_set_sync_data_select"

.field private static final TAG:Ljava/lang/String; = "OOBE_SyncDataActivity"

.field private static final UNKNOW:I


# instance fields
.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLaunchByIcon:Z

.field private mStepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;

.field private mSyncDataSelectResult:I

.field private m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 59
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mbBackFinish:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mLaunchByIcon:Z

    return-void
.end method

.method private getBackgroundDataEnabled()Z
    .locals 4

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, bRet:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 359
    const-string v1, "OOBE_SyncDataActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundDataEnabled, Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v0
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 87
    const-string v2, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mbBackFinish:Z

    .line 88
    const-string v2, "LaunchByIcon"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mLaunchByIcon:Z

    .line 90
    :cond_0
    const v2, 0x7f030028

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setContentView(I)V

    .line 92
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 95
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 96
    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 98
    const v2, 0x7f0d0009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnNext:Landroid/widget/Button;

    .line 99
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnBack:Landroid/widget/Button;

    .line 104
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 106
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mbBackFinish:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnBack:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    :cond_2
    :goto_0
    iput-object p0, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mContext:Landroid/content/Context;

    .line 112
    return-void

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onCreatePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 142
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->updatePreferenceCategoryStatus()V

    .line 143
    return-void
.end method

.method private setBackgroundDataEnabled(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 364
    const-string v0, "OOBE_SyncDataActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 368
    const-string v0, "OOBE_SyncDataActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundDataSetting =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method private setDefaultValue()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "SyncDataHasRun"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 118
    .local v0, SyncDataHasRun:Z
    :goto_0
    if-ne v2, v0, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getBackgroundDataEnabled()Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 120
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    .line 136
    :goto_1
    return-void

    .end local v0           #SyncDataHasRun:Z
    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    .line 123
    .restart local v0       #SyncDataHasRun:Z
    :cond_1
    iput v7, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    goto :goto_1

    .line 127
    :cond_2
    const-string v4, "OOBE_SyncDataActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setDefaultValue(), SyncDataHasRun = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AUTO_SYNC_DATA = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "oobe_auto_sync_data_check"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oobe_auto_sync_data_check"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v3, v2

    :cond_3
    if-ne v2, v3, :cond_5

    .line 130
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    goto :goto_1

    :cond_4
    move v1, v3

    .line 127
    goto :goto_2

    .line 133
    :cond_5
    iput v7, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    goto :goto_1
.end method

.method private setSynData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    const-string v0, "OOBE_SyncDataActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSynData mSyncDataSelectResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    if-ne v0, v3, :cond_1

    .line 274
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setBackgroundDataEnabled(Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setBackgroundDataEnabled(Z)V

    goto :goto_0
.end method

.method private updateAUTODisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 165
    const-string v1, "OOBE_SyncDataActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAUTODisplay mSyncDataSelectResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_auto"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 170
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const v1, 0x7f0a00fa

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 171
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummary(I)V

    .line 172
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummarySingleline(I)V

    .line 173
    const-string v1, "common_radiobutton_on"

    const v2, 0x2080078

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_radiobutton_off"

    const v3, 0x2080076

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    .line 176
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    if-ne v1, v4, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    goto :goto_0
.end method

.method private updateNEVERDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 187
    const-string v1, "OOBE_SyncDataActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNEVERDisplay mSyncDataSelectResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_never"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 192
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(I)V

    .line 193
    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummary(I)V

    .line 194
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummarySingleline(I)V

    .line 195
    const-string v1, "common_radiobutton_on"

    const v2, 0x2080078

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_radiobutton_off"

    const v3, 0x2080076

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    .line 198
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    goto :goto_0
.end method

.method private updatePreferenceCategoryStatus()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "updatePreferenceCategoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->updateSyncDataImage()V

    .line 149
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->updateAUTODisplay()V

    .line 150
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->updateNEVERDisplay()V

    .line 151
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->updateSyncDataDescription()V

    .line 152
    return-void
.end method

.method private updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 219
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select_auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 221
    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    .line 228
    :cond_0
    :goto_0
    const-string v2, "OOBE_SyncDataActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreferenceStatus, mSyncDataSelectResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "select_auto"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 231
    .local v0, prefAuto:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "select_never"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 232
    .local v1, prefNever:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    invoke-virtual {v0, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 233
    invoke-virtual {v1, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 235
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->invalidate()V

    .line 237
    return-void

    .line 223
    .end local v0           #prefAuto:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    .end local v1           #prefNever:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select_never"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mSyncDataSelectResult:I

    goto :goto_0
.end method

.method private updateSyncDataDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    const-string v1, "OOBE_SyncDataActivity"

    const-string v2, "updateSyncDataDescription"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "sync_data_description"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;

    .line 212
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setTitle(I)V

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setDivide(ZZ)V

    .line 214
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setPersistent(Z)V

    .line 215
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setSelectable(Z)V

    .line 216
    return-void
.end method

.method private updateSyncDataImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string v1, "OOBE_SyncDataActivity"

    const-string v2, "updateSyncDataImage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "sync_data_image"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;

    .line 159
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
    invoke-virtual {v0, v3, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setDivide(ZZ)V

    .line 160
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setPersistent(Z)V

    .line 161
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setSelectable(Z)V

    .line 162
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setSynData()V

    .line 285
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SyncDataHasRun"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 287
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 256
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->finish()V

    goto :goto_0

    .line 262
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setResult(I)V

    .line 263
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->finish()V

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0009 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 77
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->initialize()V

    .line 79
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->initialize()V

    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setDefaultValue()V

    .line 72
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->onCreatePreferences()V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 345
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 305
    const-string v1, "OOBE_SyncDataActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sparse-switch p1, :sswitch_data_0

    .line 320
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 309
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->mLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 311
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->setResult(I)V

    .line 312
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 292
    const-string v0, "OOBE_SyncDataActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 296
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 339
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 241
    const-string v0, "OOBE_SyncDataActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(), screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    instance-of v0, p2, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 245
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SyncDataActivity;->updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V

    .line 247
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 327
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 333
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 351
    const-string v0, "OOBE_SyncDataActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method
