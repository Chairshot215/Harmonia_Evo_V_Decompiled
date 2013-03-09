.class public Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;
.super Landroid/app/Activity;
.source "LocationConsentVzwActivity.java"

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

.field private static final TAG:Ljava/lang/String; = "LocationConsentVzwActivity"


# instance fields
.field private final VZW_LBS_PROVIDER:Ljava/lang/String;

.field private mAllowCheckLocation:Landroid/widget/CheckBox;

.field private mLocationDisableDialogValue:B

.field private mLocationManager:Landroid/location/LocationManager;

.field private mStdCheckLocation:Landroid/widget/CheckBox;

.field private mVzwCheckLocation:Landroid/widget/CheckBox;

.field private mbAllowCheckLocation:Z

.field private mbAllowCheckPrivacy:Z

.field private mbBackFinish:Z

.field private mbGoogleSettingChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbBackFinish:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckPrivacy:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbGoogleSettingChanged:Z

    .line 217
    const-string v0, "vzw_lbs"

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->VZW_LBS_PROVIDER:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->set_GPS_One_enable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->set_GPS_Satellites_enable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbGoogleSettingChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbGoogleSettingChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private disableLocationServices()V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allowed_geolocation_origins"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    return-void
.end method

.method private enableLocationServices()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allowed_geolocation_origins"

    const-string v2, "http://www.google.co.uk http://www.google.com"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    return-void
.end method

.method private getAllowedProviders()Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, allowedProviders:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 437
    const-string v0, ""

    .line 439
    :cond_0
    return-object v0
.end method

.method private getLocationServicesStatus()Z
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "allowed_geolocation_origins"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, szLocationServices:Ljava/lang/String;
    const-string v1, "LocationConsentVzwActivity"

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

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 243
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 104
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 105
    const-string v6, "SelfFinishBackKeyPressed"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbBackFinish:Z

    .line 108
    :cond_0
    const v6, 0x7f03001c

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->setContentView(I)V

    .line 110
    const v6, 0x7f0d003f

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 112
    .local v5, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 113
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 114
    const/16 v6, 0x18

    invoke-static {p0, v5, v6}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 116
    const v6, 0x7f0d0004

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_1
    const v6, 0x7f0d0003

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_2
    const v6, 0x7f0d0035

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vzw_lbs"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 127
    .local v2, enableGPSONE:Z
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    if-eqz v6, :cond_3

    .line 128
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    new-instance v7, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;

    invoke-direct {v7, p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    const v6, 0x7f0d0038

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    .line 157
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 159
    .local v3, enableGPSsatellites:Z
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    if-eqz v6, :cond_4

    .line 160
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    new-instance v7, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;

    invoke-direct {v7, p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    const v6, 0x7f0d002f

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    .line 189
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    new-instance v7, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;

    invoke-direct {v7, p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    return-void
.end method

.method private setDefaultValue()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 254
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "LocationConsentHasRun"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 257
    .local v0, LocationConsentHasRun:Z
    :goto_0
    if-ne v2, v0, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 260
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    :cond_0
    :goto_1
    return-void

    .end local v0           #LocationConsentHasRun:Z
    :cond_1
    move v0, v2

    .line 254
    goto :goto_0

    .line 264
    .restart local v0       #LocationConsentHasRun:Z
    :cond_2
    const-string v3, "LocationConsentVzwActivity"

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

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ALLOW_PRIVACY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oobe_allow_privacy"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 268
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private setLocationServicesStatus(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 247
    const-string v0, "LocationConsentVzwActivity"

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

    .line 248
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->enableLocationServices()V

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->disableLocationServices()V

    goto :goto_0
.end method

.method private set_GPS_One_enable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 220
    const-string v0, "LocationConsentVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVZW ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 223
    return-void
.end method

.method private set_GPS_Satellites_enable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 226
    const-string v0, "LocationConsentVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mStdCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 229
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 342
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 345
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LocationConsentHasRun"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 387
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 388
    iput-byte v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mLocationDisableDialogValue:B

    .line 389
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    if-ne p2, v1, :cond_0

    .line 392
    iput-byte v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mLocationDisableDialogValue:B

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 394
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 352
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->setResult(I)V

    .line 353
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->finish()V

    goto :goto_0

    .line 357
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->setResult(I)V

    .line 358
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->finish()V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 89
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->initialize()V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 83
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->initialize()V

    .line 84
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->setDefaultValue()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 321
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 403
    iget-byte v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mLocationDisableDialogValue:B

    packed-switch v1, :pswitch_data_0

    .line 410
    :pswitch_0
    const/4 v0, 0x1

    .line 413
    .local v0, bChecked:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    .end local v0           #bChecked:Z
    :cond_0
    return-void

    .line 407
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 408
    .restart local v0       #bChecked:Z
    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 418
    sparse-switch p2, :sswitch_data_0

    .line 425
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 423
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 418
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

    .line 366
    const-string v1, "LocationConsentVzwActivity"

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

    .line 368
    sparse-switch p1, :sswitch_data_0

    .line 381
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 370
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 371
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->setResult(I)V

    .line 372
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 315
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 327
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    const-string v2, "LocationConsentVzwActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LocationConsentHasRun"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 295
    .local v1, LocationConsentHasRun:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 298
    .local v0, LocationConsentEnable:Z
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    if-eq v0, v2, :cond_0

    .line 299
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    .line 300
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mAllowCheckLocation:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mbAllowCheckLocation:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 303
    :cond_0
    return-void

    .line 292
    .end local v0           #LocationConsentEnable:Z
    .end local v1           #LocationConsentHasRun:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 332
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 308
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 337
    const-string v0, "LocationConsentVzwActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method showDisableWarningMessage()V
    .locals 3

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mLocationDisableDialogValue:B

    .line 276
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->getResources()Landroid/content/res/Resources;

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

    .line 285
    return-void
.end method
