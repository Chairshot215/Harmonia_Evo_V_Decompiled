.class public Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "InternetConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_INTERNET_CONNECTION_DESCRIPTION:Ljava/lang/String; = "internet_connection_description"

.field private static final KEY_INTERNET_CONNECTION_IMAGE:Ljava/lang/String; = "internet_connection_image"

.field private static final KEY_SELECT_WIFI_MOBILE_BOTH:Ljava/lang/String; = "select_mobile_wifi_both"

.field private static final KEY_SELECT_WIFI_ONLY:Ljava/lang/String; = "select_wifi_only"

.field private static final MOBILE_DATA:Ljava/lang/String; = "oobe_mobile_data"

.field private static final SENDER:Ljava/lang/String; = "MobileDataEnabler"

.field private static final TAG:Ljava/lang/String; = "OOBE_InternetConnectionActivity"

.field private static final UNKNOW:I = 0x0

.field private static final WIFI_MOBILE_BOTH:I = 0x1

.field private static final WIFI_ONLY:I = 0x2


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLaunchByIcon:Z

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mSelectResult:I

.field private mStepSetting:Lcom/htc/android/htcsetupwizard/StepSetting;

.field private m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 65
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mbBackFinish:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mLaunchByIcon:Z

    return-void
.end method

.method private MobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 370
    const-string v2, "OOBE_InternetConnectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    .line 373
    .local v1, processDataConnResult:Z
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 374
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 375
    const-string v2, "OOBE_InternetConnectionActivity"

    const-string v3, "MobileDataEnabled mPhoneService = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setMobileDataEnabled(Z)V

    .line 379
    if-eqz p1, :cond_2

    .line 380
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v1

    .line 381
    const-string v2, "OOBE_InternetConnectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled , processDataConnResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    const-string v2, "OOBE_InternetConnectionActivity"

    const-string v3, "MobileDataEnabled , Both WIFI and Mobile Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_InternetConnectionActivity"

    const-string v3, "MobileDataEnabled setMobileDataEnabled , exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v2, "OOBE_InternetConnectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception cause , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v2, "OOBE_InternetConnectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "OOBE_InternetConnectionActivity"

    const-string v3, "MobileDataEnabled , Only Mobile Data Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    :cond_2
    const-string v2, "OOBE_InternetConnectionActivity"

    const-string v3, "MobileDataEnabled , Mobile Data Disable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v1

    .line 393
    const-string v2, "OOBE_InternetConnectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled processDataConnResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getFinalTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "str_id"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, title:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 152
    const-string v1, "OOBE_InternetConnectionActivity"

    const-string v2, "CHS Language"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "Wi-Fi"

    const-string v2, "WLAN"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0
.end method

.method private getMobileDataEnabled()I
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 94
    const-string v2, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mbBackFinish:Z

    .line 95
    const-string v2, "LaunchByIcon"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mLaunchByIcon:Z

    .line 97
    :cond_0
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setContentView(I)V

    .line 98
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 100
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 101
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 102
    const/16 v2, 0x13

    invoke-static {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 104
    const v2, 0x7f0d0009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnNext:Landroid/widget/Button;

    .line 105
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_1
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnBack:Landroid/widget/Button;

    .line 110
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 112
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mbBackFinish:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnBack:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    :cond_2
    :goto_0
    iput-object p0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mContext:Landroid/content/Context;

    .line 117
    return-void

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isNetworkAvailable(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->connectivity:Landroid/net/ConnectivityManager;

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 356
    const-string v1, "OOBE_InternetConnectionActivity"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 360
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 362
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onCreatePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 123
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->updatePreferenceCategoryStatus()V

    .line 124
    return-void
.end method

.method private setDefaultValue()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "InternetConnectionHasRun"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 330
    .local v0, InternetConnectionHasRun:Z
    :goto_0
    if-ne v2, v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getMobileDataEnabled()I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    .line 332
    const-string v1, "OOBE_InternetConnectionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultValue mSelectResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    if-ne v1, v2, :cond_5

    .line 347
    :goto_1
    return v2

    .end local v0           #InternetConnectionHasRun:Z
    :cond_0
    move v0, v2

    .line 327
    goto :goto_0

    .line 337
    .restart local v0       #InternetConnectionHasRun:Z
    :cond_1
    const-string v4, "OOBE_InternetConnectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setDefaultValue(), InternetConnectionHasRun = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AUTO_SYNC_DATA = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "oobe_mobile_data"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oobe_mobile_data"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    if-ne v2, v1, :cond_4

    .line 340
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    goto :goto_1

    :cond_2
    move v1, v3

    .line 337
    goto :goto_2

    :cond_3
    move v1, v3

    .line 339
    goto :goto_3

    .line 344
    :cond_4
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    :cond_5
    move v2, v3

    .line 347
    goto :goto_1
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 315
    const-string v0, "OOBE_InternetConnectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 317
    return-void
.end method

.method private setSynData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 262
    const-string v0, "OOBE_InternetConnectionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSynData , mSelectResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    if-ne v0, v3, :cond_1

    .line 265
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->MobileDataEnabled(Z)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->MobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private updateInternetConnectionImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    const-string v1, "OOBE_InternetConnectionActivity"

    const-string v2, "updateSyncDataImage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "internet_connection_image"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;

    .line 141
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setImage(I)V

    .line 143
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setPersistent(Z)V

    .line 144
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setSelectable(Z)V

    .line 145
    return-void
.end method

.method private updatePreferenceCategoryStatus()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "updatePreferenceCategoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->updateInternetConnectionImage()V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->updateWiFiMobileBothDisplay()V

    .line 133
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->updateWIFIDisplay()V

    .line 134
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->updateSyncDescription()V

    .line 135
    return-void
.end method

.method private updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 209
    const-string v2, "OOBE_InternetConnectionActivity"

    const-string v3, "updatePreferenceStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select_mobile_wifi_both"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    .line 220
    :cond_0
    :goto_0
    const-string v2, "OOBE_InternetConnectionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "select_mobile_wifi_both"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 223
    .local v0, prefBoth:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "select_wifi_only"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 224
    .local v1, prefWiFiOnly:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    invoke-virtual {v0, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 225
    invoke-virtual {v1, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 227
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->invalidate()V

    .line 229
    return-void

    .line 215
    .end local v0           #prefBoth:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    .end local v1           #prefWiFiOnly:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select_wifi_only"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    goto :goto_0
.end method

.method private updateSyncDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string v1, "OOBE_InternetConnectionActivity"

    const-string v2, "updateSyncDescription"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "internet_connection_description"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;

    .line 202
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setTitle(I)V

    .line 204
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setPersistent(Z)V

    .line 205
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setSelectable(Z)V

    .line 206
    return-void
.end method

.method private updateWIFIDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 178
    const-string v1, "OOBE_InternetConnectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWIFIDisplay mSelectResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_wifi_only"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 183
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const v1, 0x7f0a0106

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummary(I)V

    .line 185
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummarySingleline(I)V

    .line 186
    const-string v1, "common_radiobutton_on"

    const v2, 0x2080078

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_radiobutton_off"

    const v3, 0x2080076

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    .line 188
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    goto :goto_0
.end method

.method private updateWiFiMobileBothDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 159
    const-string v1, "OOBE_InternetConnectionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWIFIMobileDisplay , mSelectResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->m_preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "select_mobile_wifi_both"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 164
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const v1, 0x7f0a0105

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummary(I)V

    .line 166
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummarySingleline(I)V

    .line 167
    const-string v1, "common_radiobutton_on"

    const v2, 0x2080078

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_radiobutton_off"

    const v3, 0x2080076

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    .line 169
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mSelectResult:I

    if-ne v1, v4, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setRadioBtnStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setSynData()V

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "InternetConnectionHasRun"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 277
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 247
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setResult(I)V

    .line 248
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->finish()V

    goto :goto_0

    .line 253
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->finish()V

    goto :goto_0

    .line 244
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
    .line 84
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->initialize()V

    .line 86
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->initialize()V

    .line 78
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setDefaultValue()Z

    .line 79
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->onCreatePreferences()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 424
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 295
    const-string v1, "OOBE_InternetConnectionActivity"

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

    .line 297
    sparse-switch p1, :sswitch_data_0

    .line 310
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 299
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->mLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 301
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->setResult(I)V

    .line 302
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 297
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
    .line 282
    const-string v0, "OOBE_InternetConnectionActivity"

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

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 286
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 417
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 418
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 233
    const-string v0, "OOBE_InternetConnectionActivity"

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

    .line 236
    instance-of v0, p2, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 237
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InternetConnectionActivity;->updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V

    .line 239
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 406
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 412
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 430
    const-string v0, "OOBE_InternetConnectionActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method
