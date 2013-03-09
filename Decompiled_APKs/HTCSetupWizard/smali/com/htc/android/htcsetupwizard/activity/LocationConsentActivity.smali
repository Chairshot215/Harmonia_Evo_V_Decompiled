.class public Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;
.super Landroid/app/Activity;
.source "LocationConsentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ALLOW_PRIVACY:Ljava/lang/String; = "oobe_allow_privacy"

.field private static final LOCATION_DIALOG_BACK:B = 0x0t

.field private static final LOCATION_DIALOG_NO:B = -0x1t

.field private static final LOCATION_DIALOG_YES:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "OOBE_LocationConsentActivity"


# instance fields
.field private mAllowCheckLocation:Landroid/widget/CheckBox;

.field private mAllowCheckPrivacy:Landroid/widget/CheckBox;

.field private mButtonId:I

.field private mLaunchByIcon:Z

.field private mLocationDisableDialogValue:B

.field private mbAllowCheckLocation:Z

.field private mbAllowCheckPrivacy:Z

.field private mbBackFinish:Z

.field private mbFinalPage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbBackFinish:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLaunchByIcon:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbFinalPage:Z

    .line 77
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbAllowCheckLocation:Z

    .line 78
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbAllowCheckPrivacy:Z

    return-void
.end method

.method private disableLocationServices()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allowed_geolocation_origins"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    return-void
.end method

.method private enableLocationServices()V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allowed_geolocation_origins"

    const-string v2, "http://www.google.co.uk http://www.google.com"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    return-void
.end method

.method private executeButtonAction(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 282
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->setResult(I)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->finish()V

    goto :goto_0

    .line 286
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->setResult(I)V

    .line 287
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->finish()V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAllowedProviders()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, allowedProviders:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 394
    const-string v0, ""

    .line 396
    :cond_0
    return-object v0
.end method

.method private getLocationServicesStatus()Z
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "allowed_geolocation_origins"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, szLocationServices:Ljava/lang/String;
    const-string v1, "OOBE_LocationConsentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocationServicesStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 105
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 106
    const-string v4, "FinalPage"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbFinalPage:Z

    .line 107
    const-string v4, "SelfFinishBackKeyPressed"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbBackFinish:Z

    .line 108
    const-string v4, "LaunchByIcon"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLaunchByIcon:Z

    .line 109
    const-string v4, "OOBE_LocationConsentActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLaunchByIcon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLaunchByIcon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmbBackFinish  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbBackFinish:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nmbFinalPage   = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbFinalPage:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const v4, 0x7f03001b

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->setContentView(I)V

    .line 118
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 120
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 121
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 122
    const/16 v4, 0x9

    invoke-static {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 124
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 125
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbFinalPage:Z

    if-eqz v4, :cond_1

    .line 128
    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 129
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_1
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 135
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbBackFinish:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 136
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    :cond_2
    :goto_0
    const v4, 0x7f0d002f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    .line 142
    const v4, 0x7f0d0031

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    .line 144
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    .line 145
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbAllowCheckLocation:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    .line 148
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbAllowCheckPrivacy:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    :cond_4
    return-void

    .line 138
    :cond_5
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setDefaultValue()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "LocationConsentHasRun"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 178
    .local v0, LocationConsentHasRun:Z
    :goto_0
    if-ne v2, v0, :cond_3

    .line 179
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getLocationServicesStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    :cond_1
    :goto_1
    return-void

    .end local v0           #LocationConsentHasRun:Z
    :cond_2
    move v0, v2

    .line 175
    goto :goto_0

    .line 187
    .restart local v0       #LocationConsentHasRun:Z
    :cond_3
    const-string v1, "OOBE_LocationConsentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize(), LocationConsentHasRun = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NETWORK_PROVIDER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ALLOW_PRIVACY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oobe_allow_privacy"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    .line 191
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "network"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oobe_allow_privacy"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 191
    goto :goto_2

    :cond_6
    move v2, v3

    .line 194
    goto :goto_3
.end method

.method private setLocationServicesStatus(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 168
    const-string v0, "OOBE_LocationConsentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationServicesStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->enableLocationServices()V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->disableLocationServices()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 257
    const-string v1, "OOBE_LocationConsentActivity"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LocationConsentHasRun"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.app.autosetting.location"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 270
    const-string v1, "OOBE_LocationConsentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllowCheckLocation Check box is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->setLocationServicesStatus(Z)V

    .line 275
    const-string v1, "OOBE_LocationConsentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllowCheckPrivacy Check box is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 401
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 403
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 307
    if-ne p2, v1, :cond_1

    .line 308
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLocationDisableDialogValue:B

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 311
    iput-byte v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLocationDisableDialogValue:B

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mButtonId:I

    .line 297
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->showDisableWarningMessage()V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mButtonId:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->executeButtonAction(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 91
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbAllowCheckLocation:Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckPrivacy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbAllowCheckPrivacy:Z

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->initialize()V

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->requestWindowFeature(I)Z

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->initialize()V

    .line 86
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->setDefaultValue()V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 317
    iget-byte v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLocationDisableDialogValue:B

    packed-switch v0, :pswitch_data_0

    .line 331
    :pswitch_0
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "Dialog onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_1
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "Dialog onDismiss(): No"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "Dialog onDismiss(): Yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mButtonId:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->executeButtonAction(I)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 375
    sparse-switch p2, :sswitch_data_0

    .line 382
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 380
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 353
    const-string v1, "OOBE_LocationConsentActivity"

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

    .line 355
    sparse-switch p1, :sswitch_data_0

    .line 369
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 357
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 359
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->setResult(I)V

    .line 360
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 355
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
    .line 340
    const-string v0, "OOBE_LocationConsentActivity"

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

    .line 341
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 344
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 229
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 241
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 246
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 222
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 251
    const-string v0, "OOBE_LocationConsentActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method showDisableWarningMessage()V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->mLocationDisableDialogValue:B

    .line 202
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 211
    return-void
.end method
